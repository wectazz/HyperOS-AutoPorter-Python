#!/usr/bin/env python3
"""
HyperOS AutoPorter - Automated Firmware Porting Tool
"""

import argparse
import os
import re
import stat
import struct
import sys
import shutil
import zipfile
import subprocess
from pathlib import Path
from typing import List

import requests
from tqdm import tqdm

# Directory definitions
BASE_DIR = Path(__file__).parent.resolve()
TOOLS_DIR = BASE_DIR / "tools"
MODDED_HOS3_DIR = BASE_DIR / "moddedapps_hos3"
MODDED_HOS4_DIR = BASE_DIR / "moddedapps_hos4"
EXTRACTED_STOCK_DIR = BASE_DIR / "extracted_stock"
EXTRACTED_PORT_DIR = BASE_DIR / "extracted_port"
UNPACKED_STOCK_DIR = BASE_DIR / "unpacked_stock"
UNPACKED_PORT_DIR = BASE_DIR / "unpacked_port"
TEMPLATE_DIR = BASE_DIR / "template"
PACKAGE_DIR = BASE_DIR / "package"
PORT_META_DIR = BASE_DIR / "port_meta"

# Download URLs
STOCK_URL = (
    "https://bkt-sgp-miui-ota-update-alisgp.oss-ap-southeast-1.aliyuncs.com/"
    "OS3.0.304.0.WNLCNXM/duchamp-ota_full-OS3.0.304.0.WNLCNXM-user-16.0-5dc5bd9579.zip"
)
PORT_URL = (
    "https://bkt-sgp-miui-ota-update-alisgp.oss-ap-southeast-1.aliyuncs.com/"
    "OS4.0.0.12.XPTCNXM/chagall-ota_full-OS4.0.0.12.XPTCNXM-user-17.0-20bb2c4a3d.zip"
)

HOS3_MOD_URL = (
    "https://github.com/wectazz/HyperOS-AutoPorter-Python/releases/download/"
    "modded-apps/moddedapps_hos3.zip"
)
HOS4_MOD_URL = (
    "https://github.com/wectazz/HyperOS-AutoPorter-Python/releases/download/"
    "modded-apps/moddedapps_hos4.zip"
)

# Modded apps sets per HyperOS version: (download_url, output_dir, archive_name).
# Hosted as release assets on GitHub (direct links, no auth, no quotas).
MODDED_APPS = {
    "hos3": (HOS3_MOD_URL, MODDED_HOS3_DIR, "moddedapps_hos3"),
    "hos4": (HOS4_MOD_URL, MODDED_HOS4_DIR, "moddedapps_hos4"),
}
# Target Partition lists
STOCK_PARTITIONS = ["odm", "vendor", "odm_dlkm", "system_dlkm", "vendor_dlkm"]
PORT_PARTITIONS = ["mi_ext", "product", "system", "system_ext"]
# Extra stock partitions: dumped + unpacked for reference/patching only,
# NOT packed into super.img (super takes product/system_ext from the port)
STOCK_EXTRA_PARTITIONS = ["product", "system_ext"]
# Full stock partition set for --mode mod (stock-only modification, no port):
# every dynamic partition comes from STOCK_URL (device's own firmware).
# Order mirrors the port-mode super layout (stock slots first, then the rest),
# so mod and port super.img have the same partition order.
MOD_PARTITIONS = STOCK_PARTITIONS + [
    p for p in PORT_PARTITIONS if p not in STOCK_PARTITIONS
] + [
    p for p in STOCK_EXTRA_PARTITIONS
    if p not in STOCK_PARTITIONS and p not in PORT_PARTITIONS
]

# Extra files taken from the OTA zip (before it is deleted) for the
# final flashable package: recovery META-INF descriptor of the build.
# Port mode takes them from the port OTA, mod mode from the stock OTA.
PORT_META_FILES = ["META-INF/com/android/metadata", "META-INF/com/android/metadata.pb"]

# Smali patching (signature-check neutering -> XdConfig). Applied to jars from
# the unpacked port tree BEFORE the rebuild bakes them back in. Extra smali to
# inject lives in dsv/<jar-key>/<dex>/ and lands in the matching decompiled dex
# dir at the path from its own .class declaration (e.g. XdConfig goes to
# android/os/ of classes6). Extend per jar (miui-services.jar, services.jar).
DSV_DIR = BASE_DIR / "dsv"

# Method-body replacements: (target basenames, [method name + '('], registers,
# call). The whole body between the .method header and .end method is replaced
# (annotations/.params inside are dropped with it). The original header line
# (with blacklist/greylist markers) is kept. registers: int (fixed
# .registers) or "keep" (reuse the original .registers/.locals line). call:
# XdConfig method name, None (plain void body), or a list of custom body lines.
FRAMEWORK_METHOD_PATCHES = [
    (["AssetManager.smali"], ["containsAllocatedTable("], 2, "RETURN_FALSE"),
    (["PackageParser$SigningDetails.smali", "SigningDetails.smali"],
     ["checkCapability(", "checkCapabilityRecover(", "hasCommonAncestor(",
      "signaturesMatchExactly("], 4, "RETURN_TRUE"),
    (["StrictJarVerifier.smali"], ["verifyMessageDigest("], 3, "RETURN_TRUE"),
]
MIUI_SERVICES_METHOD_PATCHES = [
    (["PackageManagerServiceImpl.smali"], ["verifyIsolationViolation("], 3, None),
    (["PackageManagerServiceImpl.smali"], ["canBeUpdate("], 2, None),
]
# Method-start insertions: (target basenames, header fragments, insert lines,
# required body markers). The block is inserted after the method prologue
# (.registers/.params/annotations) and before the first instruction, under a
# unique :bypass_secure_flag label (never :cond_N — those collide with
# baksmali's own labels). Matched by descriptor + markers, not by method name.
# Shared secure-flag bypass block (method start): if
# WindowState.isBypassSecureFlag() is true, return false (not secure).
# Inserted under a unique :bypass_secure_flag label — never :cond_N, those
# collide with baksmali's own labels (it renumbers them itself on re-decompile).
SECURE_BYPASS_FALSE = [
    "invoke-static {}, Lcom/android/server/wm/WindowState;->isBypassSecureFlag()Z",
    "move-result v0",
    "if-eqz v0, :bypass_secure_flag",
    "const/4 v0, 0x0",
    "return v0",
    ":bypass_secure_flag",
]
MIUI_SERVICES_START_PATCHES = [
    (["WindowManagerServiceImpl.smali"],
     ["notAllowCaptureDisplay(", "(Lcom/android/server/wm/RootWindowContainer;I)Z"],
     SECURE_BYPASS_FALSE,
     ["ActivityRecordStub;->isCompatibilityMode"]),
]
# Literal string replacements across whole files: (target basenames, old, new).
# E.g. notification patch for Chinese ROMs (applies to hos3 and hos4 alike,
# like all dsv rules — dsv has no version branching).
MIUI_SERVICES_REPLACE_PATCHES = [
    (["ProcessSceneCleaner.smali", "BroadcastQueueModernStubImpl.smali",
      "ProcessManagerService.smali"],
     "Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z",
     "Lmiui/os/Build;->IS_MIUI:Z"),
]
# Same, but the bypassed method returns a List (screenshot listeners):
# bypass returns an empty list instead of false.
SERVICES_START_PATCHES = [
    (["WindowManagerService.smali"],
     ["notifyScreenshotListeners("],
     [
         "invoke-static {}, Lcom/android/server/wm/WindowState;->isBypassSecureFlag()Z",
         "move-result v0",
         "if-eqz v0, :bypass_secure_flag",
         "invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;",
         "move-result-object v0",
         "return-object v0",
         ":bypass_secure_flag",
     ],
     ["notifyScreenshotListeners()", "android.permission.STATUS_BAR_SERVICE"]),
    (["WindowState.smali"],
     ["isSecureLocked("],
     SECURE_BYPASS_FALSE,
     []),
]
# Whole new methods to insert: (target basenames, new method name fragment for
# the duplicate guard, anchor method fragment to insert before, method block).
SERVICES_NEW_METHODS = [
    (["WindowState.smali"],
     "isBypassSecureFlag(",
     "isLegacyPolicyVisibility(",
     ".method public static isBypassSecureFlag()Z\n"
     "    .registers 2\n"
     "    const-string/jumbo v0, \"persist.sys.secure_flag\"\n"
     "    const/4 v1, 0x1\n"
     "    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z\n"
     "    move-result v0\n"
     "    return v0\n"
     ".end method\n"),
]
SERVICES_METHOD_PATCHES = [
    (["KeySetManagerService.smali"], ["checkUpgradeKeySetLocked("], "keep", "RETURN_TRUE"),
    (["PackageManagerServiceUtils.smali"], ["checkDowngrade("], "keep", None),
    (["PackageManagerServiceUtils.smali"],
     ["matchSignatureInSystem(", "matchSignaturesCompat(", "matchSignaturesRecover(",
      "verifySignatures("], "keep", "RETURN_FALSE"),
    (["VerifyingSession.smali"], ["isVerificationEnabled("], "keep", "RETURN_FALSE"),
    (["ReconcilePackageUtils.smali"], ["<clinit>("], 1, [
        "invoke-static {}, Landroid/os/XdConfig;->RETURN_TRUE()Z",
        "move-result v0",
        "sput-boolean v0, Lcom/android/server/pm/ReconcilePackageUtils;->ALLOW_NON_PRELOADS_SYSTEM_SHAREDUIDS:Z",
        "return-void",
    ]),
]
# Invoke insertions: (target basenames, invoke-line regex). An
# `XdConfig;->RETURN_TRUE()Z` call is inserted after EVERY matching line (with
# no move-result, so the following original move-result picks up our forced
# true — that is the point).
FRAMEWORK_INSERT_PATCHES = [
    (["ApkSignatureSchemeV2Verifier.smali", "ApkSignatureSchemeV3Verifier.smali",
      "ApkSignatureSchemeV4Verifier.smali"],
     r"invoke-virtual\s+\{[^}]*\},\s*Ljava/security/Signature;->verify\(\[B\)Z"),
    (["ApkSigningBlockUtils.smali"],
     r"invoke-static\s+\{[^}]*\},\s*Ljava/security/MessageDigest;->isEqual\(\[B\[B\)Z"),
]

# Donor blobs copied from the unpacked STOCK trees into the unpacked PORT trees
# before the rebuild (hardware blobs the port build lacks). Paths are relative
# to UNPACKED_STOCK_DIR / UNPACKED_PORT_DIR. Missing sources only warn.
# Single files: (stock path, port path). duchamp.xml is per-device — extend the
# list when other devices get supported.
DONOR_FILES = [
    ("product/etc/device_features/duchamp.xml", "product/etc/device_features/duchamp.xml"),
]
# Whole directories merged recursively (all files).
DONOR_DIRS = [
    ("product/etc/displayconfig", "product/etc/displayconfig"),
]
# Named files from one dir to another: (stock dir, port dir, [names]).
DONOR_DIR_FILES = [
    ("system_ext/apex", "system_ext/apex", [
        "com.android.compos.apex",
        "com.android.vndk.v31.apex",
        "com.android.vndk.v33.apex",
        "com.android.vndk.v34.apex",
    ]),
    ("product/overlay", "product/overlay", [
        "AospFrameworkResOverlay.apk",
        "DevicesAndroidOverlay.apk",
        "DevicesOverlay.apk",
        "MiuiFrameworkResOverlay.apk",
    ]),
]

# Debloat lists per HyperOS version: paths RELATIVE TO the unpacked port tree
# (UNPACKED_PORT_DIR) deleted before the rebuild. NOTE: not extracted_port —
# that dir holds .img files; only the unpacked trees affect the rebuild.
# All entries below are directories, except init.miui.mi_ext.rc (a file).
DEBLOAT_HOS3 = [
    # product/app
    "product/app/AiasstVision",
    "product/app/AnalyticsCore",
    "product/app/CarWith",
    "product/app/CatchLog",
    "product/app/HybridPlatform",
    "product/app/MiBugReportOS3",
    "product/app/MINextpay",
    "product/app/MIS",
    "product/app/MITSMClient",
    "product/app/MIUIAiasstService",
    "product/app/MIUIgreenguard",
    "product/app/MIUISecurityInputMethod",
    "product/app/MIUISuperMarket",
    "product/app/MSA",
    "product/app/PaymentService",
    "product/app/SogouIME",
    "product/app/system",
    "product/app/ThirdAppAssistant",
    "product/app/Updater",
    "product/app/UPTsmService",
    "product/app/VoiceAssistAndroidT",
    "product/app/VoiceTrigger",
    "product/app/XiaoaiRecommendation",
    "product/app/XMSFKeeperAll",
    # product/data-app
    "product/data-app/BaiduIME",
    "product/data-app/Health",
    "product/data-app/iFlytekIME",
    "product/data-app/MIGalleryLockscreen",
    "product/data-app/MIPay",
    "product/data-app/MiRadio",
    "product/data-app/MIService",
    "product/data-app/MiShop",
    "product/data-app/MIUIDuokanReader",
    "product/data-app/MIUIEmail",
    "product/data-app/MIUIGameCenter",
    "product/data-app/MIUIHuanji",
    "product/data-app/MIUIMiDrive",
    "product/data-app/MIUIMusicT",
    "product/data-app/MIUINewHome_Removable",
    "product/data-app/MIUIVideo",
    "product/data-app/MIUIVirtualSim",
    "product/data-app/MIUIXiaoAiSpeechEngine",
    "product/data-app/MIUIYoupin",
    "product/data-app/OS2VipAccount",
    "product/data-app/SmartHome",
    "product/data-app/VoiceAssistProxy",
    # product/priv-app
    "product/priv-app/GooglePlayServicesUpdater",
    "product/priv-app/MiGameCenterSDKService",
    "product/priv-app/MiniGameService",
    "product/priv-app/MirrorOS3",
    "product/priv-app/MIUIBrowser",
    "product/priv-app/MIUIPersonalAssistantPhoneOS3",
    "product/priv-app/MIUIQuickSearchBox",
    "product/priv-app/MIUIYellowPage",
    # system_ext/app
    "system_ext/app/DebugLoggerUI",
    "system_ext/app/digitalkey",
    "system_ext/app/MiSightService",
    "system_ext/app/MiuiDaemon",
    # system_ext/priv-app
    "system_ext/priv-app/VoiceCommand",
    "system_ext/priv-app/VoiceUnlock",
    # oat dirs stripped from kept apps (the app itself stays)
    "product/priv-app/MiuiExtraPhoto/oat",
    "product/priv-app/MiuiHome/oat",
    "product/app/MIUISystemUIPlugin/oat",
    "product/app/MIUIThemeManager/oat",
]
DEBLOAT_HOS4: List[str] = [
    # product/app
    "product/app/AiasstVision",
    "product/app/AnalyticsCore",
    "product/app/CarWith",
    "product/app/CatchLog",
    "product/app/Healthkit",
    "product/app/HybridPlatform",
    "product/app/MiBugReportOS4",
    "product/app/MINextpay",
    "product/app/MIS",
    "product/app/MiSightServiceCn",
    "product/app/MiType",
    "product/app/MITSMClient",
    "product/app/MIUIAiasstService",
    "product/app/MIUIgreenguard",
    "product/app/MIUISecurityInputMethod",
    "product/app/MIUISuperMarket",
    "product/app/MSA",
    "product/app/PaymentService",
    "product/app/SogouIME",
    "product/app/system",
    "product/app/ThirdAppAssistant",
    "product/app/Updater",
    "product/app/UPTsmService",
    "product/app/VoiceTrigger",
    "product/app/XiaoaiRecommendation",
    "product/app/XMSFKeeperAll",
    # product/data-app
    "product/data-app/BaiduIME",
    "product/data-app/Health",
    "product/data-app/iFlytekIME",
    "product/data-app/MIGalleryLockscreen",
    "product/data-app/MIpay",
    "product/data-app/MIService",
    "product/data-app/MiShop",
    "product/data-app/MIUIDuokanReader",
    "product/data-app/MIUIEmail",
    "product/data-app/MIUIGameCenter",
    "product/data-app/MIUIHuanji",
    "product/data-app/MIUIMiDrive",
    "product/data-app/MIUIMusicT",
    "product/data-app/MIUINewHome_Removable",
    "product/data-app/MIUIVideo",
    "product/data-app/MIUIVirtualSim",
    "product/data-app/MIUIXiaoAiSpeechEngine",
    "product/data-app/MIUIYoupin",
    "product/data-app/OS4VipAccount",
    "product/data-app/SmartHome",
    "product/data-app/TinyGame",
    "product/data-app/VoiceAssistProxy",
    # product/priv-app
    "product/priv-app/GooglePlayServicesUpdater",
    "product/priv-app/MiGameCenterSDKService",
    "product/priv-app/MiniGameService",
    "product/priv-app/MirrorOS4",
    "product/priv-app/MIUIBrowser",
    "product/priv-app/MIUIQuickSearchBox",
    "product/priv-app/MIUIYellowPage",
    "product/priv-app/VoiceAssistAndroidT",
    # system_ext/app
    "system_ext/app/DebugLoggerUI",
    "system_ext/app/digitalkey",
    "system_ext/app/MiSightService",
    "system_ext/app/MiuiDaemon",
    # system_ext/priv-app
    "system_ext/priv-app/VoiceCommand",
    "system_ext/priv-app/VoiceUnlock",
    # oat dirs stripped from kept apps (the app itself stays)
    "product/priv-app/MiuiExtraPhoto/oat",
]
DEBLOAT = {"hos3": DEBLOAT_HOS3, "hos4": DEBLOAT_HOS4}
# Removed for EVERY version (not part of the per-version lists).
DEBLOAT_COMMON_FILES = ["mi_ext/etc/init/init.miui.mi_ext.rc"]
# Debloat for the unpacked STOCK tree. NOTE: vendor exists only in stock
# (super takes vendor from stock, never from the port) — there is no
# unpacked_port/vendor, so vendor entries live here. Stock firmware is fixed
# (duchamp), hence not versioned.
STOCK_DEBLOAT = [
    "vendor/etc/voicecommand",
    "vendor/etc/thermal",
]

# fstab option substrings stripped from vendor/etc/fstab.* lines (AVB disable).
# Order matters: longest/most specific first (bare "avb," must not eat prefixes).
FSTAB_STRIP_OPTIONS = [
    "avb=vbmeta_system,",
    "avb=vbmeta,",
    "avb,",
    ",avb_keys=/avb/q-gsi.avbpubkey:/avb/r-gsi.avbpubkey:/avb/s-gsi.avbpubkey",
    "fileencryption=aes-256-xts:aes-256-cts:v2+inlinecrypt_optimized,keydirectory=/metadata/vold/metadata_encryption,",
]


def patch_vendor_fstab(stock_root: Path, decrypt_data: bool) -> None:
    """Patch vendor/etc/fstab.* in the unpacked stock tree, porting the DNA
    rw/decrypt plugin methods: strip AVB options, drop overlay lines (rw),
    and with decrypt_data also rename fileencryption -> fileencryptable
    (decrypted /data). AVB strips run before the rename, otherwise the renamed
    option would no longer match."""
    fstabs = sorted((stock_root / "vendor" / "etc").glob("fstab.*"))
    if not fstabs:
        print("  [warn] no vendor/etc/fstab.* found, skip fstab patching\n")
        return
    print(f"=== Patching {len(fstabs)} vendor fstab file(s), decrypt_data={decrypt_data} ===")
    for fst in fstabs:
        stripped, overlays, encrypts = 0, 0, 0
        out: List[str] = []
        for line in fst.read_text().splitlines(keepends=True):
            if "overlay" in line:
                overlays += 1
                continue
            new = line
            for opt in FSTAB_STRIP_OPTIONS:
                if opt in new:
                    new = new.replace(opt, "")
                    stripped += 1
            if decrypt_data and "fileencryption" in new:
                new = new.replace("fileencryption", "fileencryptable")
                encrypts += 1
            out.append(new)
        fst.write_text("".join(out))
        print(f"  {fst.name}: stripped {stripped} option(s), dropped {overlays} "
              f"overlay line(s), fileencryptable x{encrypts}")
    print()

# Number of super.img.N chunks the install scripts expect (super.img.0 .. super.img.53)
SUPER_SPLIT_PARTS = 54

# lpmake metadata headroom for tight super packing (see repack_super_image).
# Proven minimum on tools/lpmake (android-15 line): total+983040 bytes fails
# with exit 70 "Not enough space on device", total+1MB builds cleanly —
# verified locally, incl. the real 9-partition layout.
SUPER_METADATA_RESERVE_MB = 1

# EROFS compressor for rebuilt images. Target kernel is 6.1 (duchamp), so
# MicroLZMA ("lzma,9", the maximum 1.7.1 offers) would also be readable, but
# builds take much longer — "lz4hc,9" is the fast safe fallback (decodes via
# the plain LZ4 path everywhere lz4 works). Do NOT switch to deflate: it needs
# 6.6+ — unreadable images = bootloop.
EROFS_COMPRESSOR = "lz4hc,9"

# ext4 RW builds (--ext4-rw): journal/metadata headroom on top of the free
# target, so `df` really shows the requested free megabytes. -m 0 (no
# root-reserved blocks) is used for these so reserved space doesn't eat it.
EXT4_RW_MARGIN_MB = 128


def make_executable(path: Path) -> None:
    """Ensure binary file is executable (chmod +x)."""
    if path.exists() and path.is_file():
        st = os.stat(path)
        os.chmod(path, st.st_mode | 0o755)


def setup_tools() -> None:
    """Prepare environment and ensure tools in tools/ directory are executable."""
    print("=== Step 1: Preparing Environment and Tools ===")
    for folder in [TOOLS_DIR, MODDED_HOS3_DIR, MODDED_HOS4_DIR, EXTRACTED_STOCK_DIR,
                   EXTRACTED_PORT_DIR, UNPACKED_STOCK_DIR, UNPACKED_PORT_DIR,
                   PORT_META_DIR]:
        folder.mkdir(parents=True, exist_ok=True)

    # Add tools/ to system PATH
    os.environ["PATH"] = f"{TOOLS_DIR}:{os.environ.get('PATH', '')}"

    # Set chmod +x on binaries present in tools/
    for tool_file in TOOLS_DIR.iterdir():
        make_executable(tool_file)

    print("Tools preparation complete.\n")


def download_file_with_progress(url: str, dest_path: Path) -> Path:
    """Download file with tqdm progress bar."""
    print(f"Downloading: {url}")
    response = requests.get(url, stream=True, timeout=30)
    response.raise_for_status()
    total_size = int(response.headers.get("content-length", 0))

    with open(dest_path, "wb") as f, tqdm(
        desc=dest_path.name,
        total=total_size,
        unit="iB",
        unit_scale=True,
        unit_divisor=1024,
    ) as bar:
        for chunk in response.iter_content(chunk_size=1024 * 1024):
            size = f.write(chunk)
            bar.update(size)

    return dest_path


def download_and_extract_mod(mod_url: str, output_dir: Path, name: str) -> None:
    """Download and unpack modded apps archives (direct link, requests)."""
    print(f"=== Downloading Modded Apps: {name} ===")
    archive_path = output_dir / f"{name}.zip"

    # Direct download with progress (same helper as firmware OTAs)
    download_file_with_progress(mod_url, archive_path)

    if not archive_path.exists() or archive_path.stat().st_size == 0:
        raise RuntimeError(f"Failed to download modded apps archive for {name}")

    print(f"Unpacking {name} into {output_dir}...")
    temp_extract = output_dir / "temp_extract"
    temp_extract.mkdir(parents=True, exist_ok=True)

    try:
        shutil.unpack_archive(archive_path, temp_extract)
    except Exception:
        # Fallback to 7z / unzip if standard unpack fails
        subprocess.run(["7z", "x", str(archive_path), f"-o{temp_extract}", "-y"], check=True)

    # Remove archive immediately to save disk space
    archive_path.unlink(missing_ok=True)

    # Handle folder structure to ensure product/system etc. are directly under output_dir.
    # Supports both layouts: partition dirs at archive root, or a single wrapper dir.
    extracted_items = list(temp_extract.iterdir())
    if len(extracted_items) == 1 and extracted_items[0].is_dir():
        extracted_items = list(extracted_items[0].iterdir())

    for item in extracted_items:
        dest = output_dir / item.name
        # Fresh state: stale content from a previous run must not merge with new files
        if dest.exists() or dest.is_symlink():
            if dest.is_dir() and not dest.is_symlink():
                shutil.rmtree(dest)
            else:
                dest.unlink()
        shutil.move(str(item), str(dest))
    shutil.rmtree(temp_extract)

    top = sorted(p.name + ("/" if p.is_dir() else "") for p in output_dir.iterdir())
    print(f"{name} top-level layout: {', '.join(top)}")
    # Archives carry arbitrary modes — normalize so rebuilt images get sane
    # permissions regardless of how the zip was packed.
    normalize_tree_perms(output_dir)
    print(f"Modded apps for {name} extracted and archive removed.\n")


def extract_payload_from_zip(zip_path: Path, output_payload_path: Path) -> Path:
    """Extract only payload.bin from OTA ZIP package."""
    print(f"Extracting payload.bin from {zip_path.name}...")
    with zipfile.ZipFile(zip_path, "r") as zip_ref:
        if "payload.bin" in zip_ref.namelist():
            zip_ref.extract("payload.bin", output_payload_path.parent)
            extracted_file = output_payload_path.parent / "payload.bin"
            if extracted_file != output_payload_path:
                shutil.move(str(extracted_file), str(output_payload_path))
        else:
            raise RuntimeError(f"payload.bin not found inside {zip_path.name}")
    return output_payload_path


def extract_files_from_zip(zip_path: Path, names: List[str], dest_dir: Path) -> None:
    """Extract specific files from a ZIP, preserving internal paths."""
    with zipfile.ZipFile(zip_path, "r") as zip_ref:
        missing = [n for n in names if n not in zip_ref.namelist()]
        if missing:
            raise RuntimeError(f"Files not found inside {zip_path.name}: {missing}")
        for name in names:
            zip_ref.extract(name, dest_dir)


def dump_partitions_from_payload(
    payload_path: Path, partitions: List[str], output_dir: Path
) -> None:
    """Dump specific partitions from payload.bin using payload-dumper-go."""
    print(f"Dumping partitions: {', '.join(partitions)}...")
    payload_dumper_bin = TOOLS_DIR / "payload-dumper-go"
    dumper_cmd = shutil.which("payload-dumper-go") or str(payload_dumper_bin)

    cmd = [
        dumper_cmd,
        "-q",
        "-p",
        ",".join(partitions),
        "-o",
        str(output_dir),
        str(payload_path),
    ]

    # Capture output: payload-dumper-go prints thousands of progress lines
    # ("...") that would flood CI logs. Show only the tail on failure.
    proc = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
    if proc.returncode != 0:
        print(f"payload-dumper-go failed (exit {proc.returncode}). Last log lines:")
        print("\n".join(proc.stdout.splitlines()[-30:]))
        raise subprocess.CalledProcessError(proc.returncode, cmd)
    print(f"Partitions {partitions} extracted successfully.")


def process_firmware(
    fw_url: str,
    fw_name: str,
    partitions: List[str],
    output_dir: Path,
    extra_files: List[str] | None = None,
    extra_dir: Path | None = None,
) -> None:
    """Download firmware, extract payload.bin (+ optional extra files), remove ZIP
    immediately, extract partitions, remove payload."""
    print(f"=== Processing Firmware: {fw_name} ===")
    zip_path = BASE_DIR / f"{fw_name}.zip"
    payload_path = BASE_DIR / f"{fw_name}_payload.bin"

    try:
        # Step 1: Download firmware ZIP
        download_file_with_progress(fw_url, zip_path)

        # Step 2: Extract payload.bin
        extract_payload_from_zip(zip_path, payload_path)

        # Step 2b: Extract extra files (e.g. META-INF) before the ZIP is deleted
        if extra_files:
            if extra_dir is None:
                raise ValueError("extra_dir is required when extra_files is given")
            print(f"Extracting extra files from {zip_path.name}: {', '.join(extra_files)}...")
            extract_files_from_zip(zip_path, extra_files, extra_dir)

    finally:
        # Memory optimization: Delete firmware ZIP immediately
        if zip_path.exists():
            print(f"Removing ZIP archive {zip_path.name} to free disk space...")
            zip_path.unlink(missing_ok=True)

    try:
        # Step 3: Extract requested partitions from payload.bin
        dump_partitions_from_payload(payload_path, partitions, output_dir)

    finally:
        # Memory optimization: Delete payload.bin immediately
        if payload_path.exists():
            print(f"Removing payload {payload_path.name} to free disk space...")
            payload_path.unlink(missing_ok=True)

    print(f"Firmware processing for {fw_name} completed.\n")


# Filesystem magic offsets/values for partition images
_SPARSE_MAGIC = b"\x3a\xff\x26\xed"  # Android sparse, offset 0
_EROFS_MAGIC = b"\xe2\xe1\xf5\xe0"  # EROFS, offset 1024
_EXT4_MAGIC = b"\x53\xef"  # ext2/3/4, offset 1080

# Android sparse image format fields, as emitted per chunk by split_file()
# (UKA/img2simg method: header + DONT_CARE offset + RAW data)
_SPARSE_HDR_MAGIC = 0xED26FF3A
_SPARSE_HDR_LEN = 28
_SPARSE_CHUNK_HDR_LEN = 12
_SPARSE_CHUNK_RAW = 0xCAC1
_SPARSE_CHUNK_DONT_CARE = 0xCAC3


def detect_image_format(img_path: Path) -> str:
    """Detect partition image format by magic bytes: 'sparse', 'erofs' or 'ext4'."""
    with open(img_path, "rb") as f:
        head = f.read(1082)
    if head[0:4] == _SPARSE_MAGIC:
        return "sparse"
    if head[1024:1028] == _EROFS_MAGIC:
        return "erofs"
    if head[1080:1082] == _EXT4_MAGIC:
        return "ext4"
    raise RuntimeError(f"Unsupported image format: {img_path} (not sparse/erofs/ext4)")


def extract_ext4_image(img_path: Path, dest_dir: Path) -> int:
    """Extract ext4 image with debugfs rdump (preserves symlinks exactly). Returns file count."""
    debugfs_bin = shutil.which("debugfs")
    if not debugfs_bin:
        raise RuntimeError("debugfs not found: install e2fsprogs to unpack ext4 images")
    subprocess.run(
        [debugfs_bin, "-R", f"rdump / {dest_dir}", str(img_path)],
        check=True,
    )
    shutil.rmtree(dest_dir / "lost+found", ignore_errors=True)
    return sum(1 for _ in dest_dir.rglob("*") if _.is_file() or _.is_symlink())


def extract_erofs_image(img_path: Path, dest_dir: Path) -> int:
    """Extract EROFS image with fsck.erofs --extract. Returns file/symlink count.

    Prefers the vendored tools/fsck.erofs (dev build with xattr restore +
    killpriv-order fix) with --xattrs, so owners/modes/xattrs land on the
    tree (as root). On tooling failure (OSError — missing/broken binary)
    falls back to system fsck.erofs without --xattrs (legacy: no xattrs);
    data errors (nonzero exit) always raise."""
    vendored = TOOLS_DIR / "fsck.erofs"
    attempts = []
    if vendored.is_file():
        attempts.append(([str(vendored), f"--extract={dest_dir}", "--xattrs",
                          str(img_path)], True))
    fsck_bin = shutil.which("fsck.erofs")
    if not fsck_bin and not attempts:
        raise RuntimeError("fsck.erofs not found: install erofs-utils to unpack EROFS images")
    if fsck_bin:
        attempts.append(([fsck_bin, f"--extract={dest_dir}", str(img_path)], False))
    # fsck.erofs is silent on success; show only the tail on failure
    last_exc = None
    for cmd, with_xattrs in attempts:
        try:
            proc = subprocess.run(
                cmd,
                stdout=subprocess.PIPE,
                stderr=subprocess.STDOUT,
                text=True,
            )
        except OSError as e:
            print(f"  [warn] cannot run {cmd[0]} ({e}), trying next fsck.erofs")
            last_exc = e
            # drop partial output so the next attempt starts fresh
            shutil.rmtree(dest_dir, ignore_errors=True)
            dest_dir.mkdir(parents=True, exist_ok=True)
            continue
        if proc.returncode != 0:
            print(f"fsck.erofs failed on {img_path.name} (exit {proc.returncode}). Last log lines:")
            print("\n".join(proc.stdout.splitlines()[-30:]))
            raise subprocess.CalledProcessError(proc.returncode, proc.args)
        if with_xattrs:
            print(f"  extracted {img_path.name} with xattrs (vendored fsck.erofs)")
        return sum(1 for p in dest_dir.rglob("*") if p.is_file() or p.is_symlink())
    raise RuntimeError(f"all fsck.erofs attempts failed on {img_path.name}: {last_exc}")


def unpack_partition_image(img_path: Path, dest_dir: Path) -> int:
    """Unpack a single partition .img into dest_dir (fresh extract). Returns file count."""
    if dest_dir.exists():
        shutil.rmtree(dest_dir)
    dest_dir.mkdir(parents=True)

    fmt = detect_image_format(img_path)
    if fmt == "sparse":
        simg_bin = shutil.which("simg2img")
        if not simg_bin:
            raise RuntimeError(
                f"{img_path.name} is a sparse image but simg2img is missing: "
                "install android-sdk-libsparse-utils"
            )
        raw_path = img_path.with_suffix(".raw.img")
        try:
            subprocess.run([simg_bin, str(img_path), str(raw_path)], check=True)
            fmt = detect_image_format(raw_path)
            img_path = raw_path
        finally:
            raw_path.unlink(missing_ok=True)

    if fmt == "erofs":
        return extract_erofs_image(img_path, dest_dir)
    return extract_ext4_image(img_path, dest_dir)


def unpack_partitions(partitions: List[str], img_dir: Path, out_root: Path) -> None:
    """Unpack every partition image from img_dir into out_root/<name>/ for later patching."""
    print(f"=== Unpacking {len(partitions)} partitions into {out_root} ===")
    for name in partitions:
        img_path = img_dir / f"{name}.img"
        if not img_path.exists():
            raise FileNotFoundError(f"Missing required partition image: {img_path}")
        dest_dir = out_root / name
        fmt = detect_image_format(img_path)
        print(f"Unpacking {name}.img ({img_path.stat().st_size // 1024 // 1024}MB, {fmt})...")
        count = unpack_partition_image(img_path, dest_dir)
        print(f"  -> {dest_dir} ({count} files)")
    print(f"Unpacking into {out_root} completed.\n")


def merge_tree_into(src_dir: Path, dest_dir: Path) -> None:
    """Move every entry of src_dir into dest_dir, merging directories recursively.

    Files/symlinks from src overwrite same-named ones in dest (with a warning).
    """
    for item in sorted(src_dir.iterdir()):
        dest = dest_dir / item.name
        if dest.exists() or dest.is_symlink():
            if item.is_dir() and not item.is_symlink() \
                    and dest.is_dir() and not dest.is_symlink():
                merge_tree_into(item, dest)
                try:
                    item.rmdir()  # now empty (best effort)
                except OSError:
                    pass
                continue
            print(f"  [flatten] replacing {dest} with {item}")
            if dest.is_dir() and not dest.is_symlink():
                shutil.rmtree(dest)
            else:
                dest.unlink()
        shutil.move(str(item), str(dest))


def normalize_tree_perms(root: Path) -> None:
    """Normalize modes under root: dirs 0755, regular files 0644, symlinks
    and special files untouched. Best-effort chown to root:root when running
    as root (CI); otherwise ownership is left alone."""
    print(f"=== Normalizing permissions under {root} ===")
    os.chmod(root, 0o755)
    files, dirs = 0, 0
    for dirpath, dirnames, filenames in os.walk(root, followlinks=False):
        for name in dirnames:
            p = Path(dirpath) / name
            try:
                if stat.S_ISLNK(os.lstat(p).st_mode):
                    continue
            except OSError:
                continue
            os.chmod(p, 0o755)
            dirs += 1
        for name in filenames:
            p = Path(dirpath) / name
            try:
                if not stat.S_ISREG(os.lstat(p).st_mode):
                    continue
            except OSError:
                continue
            os.chmod(p, 0o644)
            files += 1
    print(f"  permissions normalized: {dirs} dir(s) 0755, {files} file(s) 0644")
    if hasattr(os, "geteuid") and os.geteuid() == 0:
        for dirpath, dirnames, filenames in os.walk(root, followlinks=False):
            for name in dirnames + filenames:
                p = Path(dirpath) / name
                try:
                    if stat.S_ISLNK(os.lstat(p).st_mode):
                        continue
                    os.chown(p, 0, 0)
                except OSError:
                    pass
        os.chown(root, 0, 0)
        print("  ownership set to root:root")
    else:
        print("  ownership left alone (not running as root)")
    print()


def copy_file_preserve(src: Path, dest: Path) -> None:
    """copy2 + best-effort xattr carry-over (copy2 alone drops xattrs, which
    would lose caps/selinux needed for fs_config generation later)."""
    shutil.copy2(src, dest)
    try:
        names = os.listxattr(src, follow_symlinks=False)
    except OSError:
        return
    for name in names:
        try:
            os.setxattr(dest, name,
                        os.getxattr(src, name, follow_symlinks=False),
                        follow_symlinks=False)
        except OSError:
            pass


def copy_tree_into(src_dir: Path, dest_dir: Path) -> None:
    """Copy-merge src_dir into dest_dir recursively, preserving symlinks
    and xattrs. Existing files/symlinks are replaced; existing dirs are
    merged."""
    dest_dir.mkdir(parents=True, exist_ok=True)
    for item in sorted(src_dir.iterdir()):
        dest = dest_dir / item.name
        if item.is_symlink():
            if dest.is_dir() and not dest.is_symlink():
                shutil.rmtree(dest)
            elif dest.exists() or dest.is_symlink():
                dest.unlink()
            os.symlink(os.readlink(item), dest)
            try:
                for name in os.listxattr(item, follow_symlinks=False):
                    try:
                        os.setxattr(dest, name,
                                    os.getxattr(item, name, follow_symlinks=False),
                                    follow_symlinks=False)
                    except OSError:
                        pass
            except OSError:
                pass
        elif item.is_dir():
            if dest.is_symlink() or (dest.exists() and not dest.is_dir()):
                dest.unlink()
            copy_tree_into(item, dest)
        else:
            if dest.is_dir() and not dest.is_symlink():
                shutil.rmtree(dest)
            copy_file_preserve(item, dest)


def apply_modded_apps(mod_dir: Path, unpacked_root: Path) -> None:
    """Overlay the modded-apps set onto an unpacked tree: each top-level
    partition dir (product/, system/, system_ext/, ...) merges recursively
    into the same-named unpacked partition, modded files replacing stock
    ones (system/ keeps its nested system/ level — both sides mirror it).
    Port mode targets the port tree, mod mode the stock tree. Missing
    partition dirs on either side only warn."""
    print(f"=== Applying modded apps from {mod_dir} into {unpacked_root} ===")
    if not mod_dir.is_dir():
        print(f"  [warn] modded apps dir not found: {mod_dir}, skip\n")
        return
    applied, missing = 0, 0
    for part in sorted(mod_dir.iterdir()):
        if part.is_symlink() or not part.is_dir():
            print(f"  [warn, skip] unexpected top-level entry: {part.name}")
            missing += 1
            continue
        dest = unpacked_root / part.name
        if not dest.is_dir():
            print(f"  [missing, skip] no such partition in target tree: {part.name}/")
            missing += 1
            continue
        copy_tree_into(part, dest)
        applied += 1
    print(f"Modded apps done: applied {applied} partition(s), skipped {missing}.\n")


def flatten_pangu_system(product_dir: Path) -> None:
    """Move <product>/pangu/system/* up into <product>/ (the port OTA nests
    product content there). No-op when the nested dir is absent."""
    nested = product_dir / "pangu" / "system"
    if not nested.is_dir():
        print("No pangu/system nesting in product, skip flattening.\n")
        return
    print(f"=== Flattening {nested} into {product_dir} ===")
    merge_tree_into(nested, product_dir)
    # drop the now-empty nesting (best effort, keep going if not empty)
    for d in (nested, nested.parent):
        try:
            d.rmdir()
        except OSError:
            pass
    print("Flattening done.\n")


def move_data_app_to_app(product_dir: Path) -> None:
    """Move <product>/data-app/* into <product>/app/, merging dirs
    recursively (existing entries are replaced). Runs last, right before
    the rebuild, so debloat/DSV/modded-apps results all end up in app/.
    No-op when data-app is absent."""
    src = product_dir / "data-app"
    if not src.is_dir():
        print("No product/data-app dir, skip moving into app/.\n")
        return
    print(f"=== Moving {src} into {product_dir / 'app'} ===")
    merge_tree_into(src, product_dir / "app")
    try:
        src.rmdir()  # now empty (best effort)
    except OSError:
        pass
    print("data-app -> app move done.\n")


def apply_donor_files(stock_root: Path, port_root: Path) -> None:
    """Copy donor blobs from the unpacked stock trees into the unpacked port
    trees (device_features, displayconfig, product overlays, vndk/compos
    APEXes). Port mode only — mod mode skips donors entirely (full stock).
    Missing sources only warn — OTAs differ between builds."""
    print("=== Copying donor files (stock -> port) ===")
    copied, missing = 0, 0
    for src_rel, dst_rel in DONOR_FILES:
        src, dst = stock_root / src_rel, port_root / dst_rel
        if not src.is_file():
            print(f"  [missing, skip] {src_rel}")
            missing += 1
            continue
        dst.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(src, dst)
        copied += 1
    for src_rel, dst_rel in DONOR_DIRS:
        src, dst = stock_root / src_rel, port_root / dst_rel
        if not src.is_dir():
            print(f"  [missing, skip] {src_rel}/")
            missing += 1
            continue
        shutil.copytree(src, dst, dirs_exist_ok=True)
        copied += 1
    for src_dir_rel, dst_dir_rel, names in DONOR_DIR_FILES:
        for name in names:
            src = stock_root / src_dir_rel / name
            dst = port_root / dst_dir_rel / name
            if not src.is_file():
                print(f"  [missing, skip] {src_dir_rel}/{name}")
                missing += 1
                continue
            dst.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(src, dst)
            copied += 1
    print(f"Donor files done: copied {copied}, missing {missing}.\n")


def apply_debloat_entries(unpacked_root: Path, entries: List[str], label: str) -> None:
    """Delete entries from an unpacked tree. Missing entries only warn —
    OTAs differ between builds."""
    print(f"=== Applying debloat list {label} ({len(entries)} entries) ===")
    removed, missing = 0, 0
    for rel in entries:
        target = unpacked_root / rel
        if target.is_dir() and not target.is_symlink():
            shutil.rmtree(target)
            removed += 1
        elif target.is_file() or target.is_symlink():
            target.unlink()
            removed += 1
        else:
            print(f"  [missing, skip] {rel}")
            missing += 1
    print(f"Debloat done: removed {removed}, missing {missing}.\n")


def apply_debloat(unpacked_root: Path, version: str) -> None:
    """Delete the debloat list entries for a HyperOS version from the target
    unpacked tree (port tree in port mode, stock tree in mod mode), plus the
    init.miui.mi_ext.rc file, removed for every version."""
    apply_debloat_entries(unpacked_root,
                          list(DEBLOAT.get(version, [])) + DEBLOAT_COMMON_FILES,
                          f"'{version}'")


def apply_stock_debloat(stock_root: Path) -> None:
    """Delete the STOCK_DEBLOAT entries from the unpacked stock tree."""
    if STOCK_DEBLOAT:
        apply_debloat_entries(stock_root, STOCK_DEBLOAT, "stock")


def run_logged(cmd: List[str], what: str) -> None:
    """Run a chatty tool; show output only on failure."""
    proc = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
    if proc.returncode != 0:
        print(f"{what} failed (exit {proc.returncode}). Last log lines:")
        print("\n".join(proc.stdout.splitlines()[-30:]))
        raise subprocess.CalledProcessError(proc.returncode, proc.args)


def replace_method_bodies(text: str, names: List[str], registers, call) -> tuple:
    """Replace bodies of .method blocks whose header contains one of `names`
    (each name includes the opening paren, e.g. "checkCapability("). Returns
    (new_text, patched_headers). Raises on an unterminated block or a missing
    .registers line in "keep" mode."""
    if isinstance(call, list):
        tail = [f"    {line}\n" for line in call]
    elif call is None:
        tail = ["    return-void\n"]
    else:
        tail = [f"    invoke-static {{}}, Landroid/os/XdConfig;->{call}()Z\n",
                "    move-result v0\n",
                "    return v0\n"]
    keep_regs = (registers == "keep")
    out: List[str] = []
    patched: List[str] = []
    skipping = False
    kept_regs_line = None
    for line in text.splitlines(keepends=True):
        stripped = line.strip()
        if not skipping:
            out.append(line)
            if stripped.startswith(".method") and any(
                    re.search(r"(?<![\w$])" + re.escape(n), stripped) for n in names):
                patched.append(stripped)
                skipping = True
                kept_regs_line = None
        elif stripped == ".end method":
            if keep_regs:
                if kept_regs_line is None:
                    raise RuntimeError("No .registers/.locals in patched method body")
                out.append(kept_regs_line)
            else:
                out.append(f"    .registers {registers}\n")
            out.extend(tail)
            out.append(line)
            skipping = False
        elif keep_regs and kept_regs_line is None and (
                stripped.startswith(".registers") or stripped.startswith(".locals")):
            kept_regs_line = line  # reuse original, emit at .end method
        # else: drop old body line
    if skipping:
        raise RuntimeError("Unterminated .method block while patching")
    return "".join(out), patched


def insert_at_method_start(text: str, header_frags: List[str], insert_lines: List[str],
                           require_markers=()) -> tuple:
    """Insert lines after the prologue of .method blocks whose header contains
    all `header_frags` and whose body contains all `require_markers`. The
    prologue (blank lines + dot-directives like .registers/.params/.annotation
    blocks) is preserved; insertion lands before the first instruction/label.
    Empty methods are left alone with a warning. Returns (new_text, [headers])."""
    lines = text.splitlines(keepends=True)
    out: List[str] = []
    patched: List[str] = []
    i, n = 0, len(lines)
    while i < n:
        line = lines[i]
        stripped = line.strip()
        if not (stripped.startswith(".method")
                and all(f in stripped for f in header_frags)):
            out.append(line)
            i += 1
            continue
        # collect the whole block to check markers
        j = i + 1
        while j < n and lines[j].strip() != ".end method":
            j += 1
        if j >= n:
            raise RuntimeError("Unterminated .method block while patching")
        if not all(m in "".join(lines[i:j + 1]) for m in require_markers):
            out.extend(lines[i:j + 1])
            i = j + 1
            continue
        patched.append(stripped)
        out.append(line)  # header
        k = i + 1
        depth = 0
        empty = False
        while k <= j:
            ks = lines[k].strip()
            if ks == ".end method":
                empty = True
                break
            if ks.startswith(".annotation"):
                depth += 1
            if depth == 0 and ks != "" and not ks.startswith(".") and not ks.startswith(":"):
                break  # first real instruction/label
            if ks.startswith(".end annotation"):
                depth -= 1
            out.append(lines[k])
            k += 1
        if empty:
            print(f"  [warn] empty method, skip insert: {stripped}")
            out.append(lines[k])  # .end method
        else:
            for ins in insert_lines:
                out.append(f"    {ins}\n")
            while k <= j:
                out.append(lines[k])
                k += 1
        i = j + 1
    return "".join(out), patched


def insert_new_method(text: str, method_frag: str, anchor_frag: str, block: str) -> tuple:
    """Insert a whole new .method block before the first .method whose header
    contains `anchor_frag` (or append at end of file with a warning if the
    anchor is absent). If a .method header already contains `method_frag`,
    skip with a warning (duplicate methods break assembly). Returns
    (new_text, inserted: bool)."""
    lines = text.splitlines(keepends=True)
    for line in lines:
        s = line.strip()
        if s.startswith(".method") and method_frag in s:
            print(f"  [warn] method already present, skip insert: {s}")
            return text, False
    block = block.strip() + "\n"
    out: List[str] = []
    inserted = False
    for line in lines:
        s = line.strip()
        if not inserted and s.startswith(".method") and anchor_frag in s:
            out.append("\n" + block)
            inserted = True
        out.append(line)
    if not inserted:
        print(f"  [warn] anchor {anchor_frag} not found, appending method at end")
        out.append("\n" + block)
        inserted = True
    return "".join(out), inserted


def insert_after_invokes(text: str, pattern: str) -> tuple:
    """Insert an XdConfig RETURN_TRUE call after every line matching `pattern`
    (same indent). Returns (new_text, match_count)."""
    rx = re.compile(pattern)
    insert = "invoke-static {}, Landroid/os/XdConfig;->RETURN_TRUE()Z"
    out: List[str] = []
    count = 0
    for line in text.splitlines(keepends=True):
        out.append(line)
        if rx.search(line):
            indent = line[:len(line) - len(line.lstrip())]
            out.append(f"{indent}{insert}\n")
            count += 1
    return "".join(out), count


def inject_dsv_smali(dsv_key: str, dex_out_dirs: dict) -> dict:
    """Copy dsv/<key>/<dex>/*.smali into the matching decompiled dex dir, at the
    path from each file's own .class declaration. Classes already present in
    any dex dir are skipped (with a warning) to avoid duplicates. Returns
    {dex base: injected class count} for the post-rebuild check."""
    src_root = DSV_DIR / dsv_key
    injected: dict = {}
    if not src_root.is_dir():
        print(f"  [dsv] no {src_root} dir, skip injection")
        return injected
    existing = set()
    for d in dex_out_dirs.values():
        existing.update(p.name for p in d.rglob("*.smali"))
    for src in sorted(src_root.rglob("*.smali")):
        dex = src.relative_to(src_root).parts[0]
        target_root = dex_out_dirs.get(dex)
        if target_root is None:
            target_root = dex_out_dirs.get("classes6") or list(dex_out_dirs.values())[-1]
            print(f"  [dsv] {dex}/ not in jar, injecting {src.name} into {target_root.name}/ instead")
        cls = None
        for raw in src.read_text().splitlines():
            s = raw.strip()
            if s.startswith(".class"):
                m = re.search(r"(L[^;]+;)", s)
                if m:
                    cls = m.group(1)[1:-1] + ".smali"
                break
        if cls is None:
            raise RuntimeError(f"Cannot find .class declaration in {src}")
        if Path(cls).name in existing:
            print(f"  [dsv] {cls} already decompiled, skip {src}")
            continue
        dest = target_root / cls
        dest.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(src, dest)
        existing.add(Path(cls).name)
        base = next(b for b, d in dex_out_dirs.items() if d == target_root)
        injected[base] = injected.get(base, 0) + 1
        print(f"  [dsv] injected {cls} into {base}/")
    return injected


# dex version -> smali/baksmali api level, chosen so a reassembled dex keeps
# its original version (verified locally per api flag). NOTE: tools jars are
# v3.0.10 (latest). dex 041 support was officially added in 3.0.4, but 042+
# has no valid --api here (36+ writes a zeroed header — verified locally), so
# 042+ fails fast in detect_dex_api(). Every decompiled/reassembled dex is
# additionally verified (magic + class count), because both tools exit 0 even
# on failure — return codes prove nothing.
DEX_VERSION_API = {"035": 21, "037": 24, "038": 26, "039": 29, "040": 34, "041": 35}


def detect_dex_api(dex_path: Path) -> int:
    """Read the dex version from the header and map it to a smali --api level."""
    with open(dex_path, "rb") as f:
        magic = f.read(8)
    if len(magic) != 8 or not magic.startswith(b"dex\n") or magic[7:8] != b"\x00":
        raise RuntimeError(f"{dex_path} is not a dex file (bad magic)")
    version = magic[4:7].decode("ascii")
    if version not in DEX_VERSION_API:
        raise RuntimeError(
            f"{dex_path} has dex version {version}, but tools/baksmali.jar + "
            f"tools/smali.jar only support up to 041 — provide newer jars")
    return DEX_VERSION_API[version]


def count_dex_classes(java: str, baksmali_jar: Path, dex_path: Path, api: int) -> int:
    """Count classes in a dex via `baksmali list classes` (also proves it parses)."""
    proc = subprocess.run([java, "-jar", str(baksmali_jar), "list", "classes",
                           "--api", str(api), str(dex_path)],
                          stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
    count = sum(1 for line in proc.stdout.splitlines()
                if line.strip().startswith("L") and line.strip().endswith(";"))
    if count == 0:
        print(f"baksmali list classes on {dex_path.name} yielded no classes. Output:")
        print("\n".join(proc.stdout.splitlines()[-15:]))
        raise RuntimeError(f"{dex_path} has no readable classes")
    return count


def check_dex_blob(path: Path, what: str) -> None:
    """Fail fast on empty/corrupt assembled dex (smali exits 0 even on failure)."""
    if not path.is_file() or path.stat().st_size == 0:
        raise RuntimeError(f"{what} produced no output: {path}")
    with open(path, "rb") as f:
        magic = f.read(8)
    if not magic.startswith(b"dex\n"):
        raise RuntimeError(f"{what} produced a corrupt dex (bad magic): {path}")


def patch_jar_smali(jar_path: Path, dsv_key: str, method_patches, insert_patches,
                    work_root: Path, start_patches=None, new_method_patches=None,
                    replace_patches=None) -> None:
    """Decompile jar's classes*.dex with baksmali, inject dsv smali, apply the
    regex patches, reassemble with smali and replace the jar atomically."""
    if not jar_path.is_file():
        print(f"WARNING: {jar_path} not found, skip smali patching.\n")
        return
    java = shutil.which("java")
    if not java:
        raise RuntimeError("java not found: install a JRE for baksmali/smali (CI: default-jre-headless)")
    baksmali_jar = TOOLS_DIR / "baksmali.jar"
    smali_jar = TOOLS_DIR / "smali.jar"
    for jar in (baksmali_jar, smali_jar):
        if not jar.is_file():
            raise RuntimeError(f"Missing tool jar: {jar}")
    print(f"=== Smali-patching {jar_path.name} ===")

    def dex_sort_key(name: str) -> int:
        m = re.fullmatch(r"classes(\d*)\.dex", name)
        return int(m.group(1)) if m and m.group(1) else 1

    with zipfile.ZipFile(jar_path) as zin:
        infos = zin.infolist()
        blobs = {i.filename: zin.read(i.filename) for i in infos}
    dex_names = sorted([n for n in blobs if re.fullmatch(r"classes(\d*)\.dex", n)],
                       key=dex_sort_key)
    if not dex_names:
        raise RuntimeError(f"No classes*.dex found in {jar_path}")
    print(f"  dex files: {', '.join(dex_names)}")

    if work_root.exists():
        shutil.rmtree(work_root)
    dex_dir = work_root / "dex"
    out_root = work_root / "out"
    new_dir = work_root / "new"
    for d in (dex_dir, out_root, new_dir):
        d.mkdir(parents=True)
    try:
        for dex in dex_names:
            (dex_dir / dex).write_bytes(blobs[dex])
        # 0. intake gate: every dex must parse (proves readability before we
        # touch anything); record class counts for the post-rebuild check
        dex_apis = {}
        dex_classes = {}
        for dex in dex_names:
            api = detect_dex_api(dex_dir / dex)
            dex_apis[dex] = api
            dex_classes[dex] = count_dex_classes(java, baksmali_jar, dex_dir / dex, api)
            print(f"  {dex}: dex api {api}, {dex_classes[dex]} classes")
        # 1. decompile each dex (explicit --api: default 15 is too low for
        # hiddenapi markers and new opcodes)
        dex_out_dirs = {}
        for dex in dex_names:
            base = dex[:-len(".dex")]
            out_d = out_root / base
            run_logged([java, "-jar", str(baksmali_jar), "d", "--api", str(dex_apis[dex]),
                        str(dex_dir / dex), "-o", str(out_d)], f"baksmali {dex}")
            if not any(out_d.rglob("*.smali")):
                raise RuntimeError(f"baksmali produced no smali for {dex} "
                                   f"(it exits 0 even on failure)")
            dex_out_dirs[base] = out_d
        # 2. inject dsv smali (e.g. XdConfig into classes6/android/os/)
        injected = inject_dsv_smali(dsv_key, dex_out_dirs)
        # 3a. method-body replacements
        for basenames, names, regs, call in method_patches:
            for base_name in basenames:
                found = [p for d in dex_out_dirs.values() for p in d.rglob(base_name)]
                if not found:
                    print(f"  [warn] {base_name} not found in any dex")
                    continue
                for path in found:
                    new_text, patched = replace_method_bodies(
                        path.read_text(), names, regs, call)
                    if not patched:
                        print(f"  [warn] no target method in {path.relative_to(out_root)}")
                        continue
                    path.write_text(new_text)
                    for header in patched:
                        print(f"  patched {path.name}: {header}")
        # 3b. invoke insertions
        for basenames, pattern in insert_patches:
            for base_name in basenames:
                found = [p for d in dex_out_dirs.values() for p in d.rglob(base_name)]
                if not found:
                    print(f"  [warn] {base_name} not found in any dex")
                    continue
                for path in found:
                    new_text, count = insert_after_invokes(path.read_text(), pattern)
                    if not count:
                        print(f"  [warn] no target invoke in {path.relative_to(out_root)}")
                        continue
                    path.write_text(new_text)
                    print(f"  patched {path.name}: +{count} XdConfig insert(s)")
        # 3c. method-start insertions (secure-flag bypass style)
        for basenames, header_frags, insert_lines, markers in (start_patches or []):
            for base_name in basenames:
                found = [p for d in dex_out_dirs.values() for p in d.rglob(base_name)]
                if not found:
                    print(f"  [warn] {base_name} not found in any dex")
                    continue
                for path in found:
                    new_text, patched = insert_at_method_start(
                        path.read_text(), header_frags, insert_lines, markers)
                    if not patched:
                        print(f"  [warn] no target method in {path.relative_to(out_root)}")
                        continue
                    path.write_text(new_text)
                    for header in patched:
                        print(f"  patched {path.name}: {header}")
        # 3d. whole new methods (e.g. isBypassSecureFlag)
        for basenames, method_frag, anchor_frag, block in (new_method_patches or []):
            for base_name in basenames:
                found = [p for d in dex_out_dirs.values() for p in d.rglob(base_name)]
                if not found:
                    print(f"  [warn] {base_name} not found in any dex")
                    continue
                for path in found:
                    new_text, inserted = insert_new_method(
                        path.read_text(), method_frag, anchor_frag, block)
                    if not inserted:
                        continue
                    path.write_text(new_text)
                    print(f"  patched {path.name}: +new method {method_frag}")
        # 3e. literal string replacements across whole files
        for basenames, old, new in (replace_patches or []):
            for base_name in basenames:
                found = [p for d in dex_out_dirs.values() for p in d.rglob(base_name)]
                if not found:
                    print(f"  [warn] {base_name} not found in any dex")
                    continue
                for path in found:
                    text = path.read_text()
                    count = text.count(old)
                    if not count:
                        print(f"  [warn] no target string in {path.relative_to(out_root)}")
                        continue
                    path.write_text(text.replace(old, new))
                    print(f"  patched {path.name}: {count}x {old} -> {new}")
        # 4. reassemble each dex (same --api it was decompiled with)
        new_blobs = {}
        for dex in dex_names:
            base = dex[:-len(".dex")]
            out_dex = new_dir / dex
            run_logged([java, "-jar", str(smali_jar), "a", "--api",
                        str(dex_apis[dex]), str(out_root / base),
                        "-o", str(out_dex)], f"smali {base}")
            check_dex_blob(out_dex, f"smali {base}")
            after = count_dex_classes(java, baksmali_jar, out_dex, dex_apis[dex])
            want = dex_classes[dex] + injected.get(base, 0)
            if after != want:
                raise RuntimeError(
                    f"smali {base}: class count changed {dex_classes[dex]} -> {after} "
                    f"(expected {want}), refusing to pack a damaged dex")
            new_blobs[dex] = out_dex.read_bytes()
        # 5. rezip, preserving every other entry byte-identical
        tmp = jar_path.with_name(jar_path.name + ".new")
        with zipfile.ZipFile(tmp, "w") as zout:
            for info in infos:
                zi = zipfile.ZipInfo(info.filename, date_time=info.date_time)
                zi.compress_type = info.compress_type
                zi.external_attr = info.external_attr
                zi.create_system = info.create_system
                zout.writestr(zi, new_blobs.get(info.filename, blobs[info.filename]))
        os.replace(tmp, jar_path)
        print(f"Smali patching done: {jar_path.name} ({jar_path.stat().st_size} bytes).\n")
    finally:
        shutil.rmtree(work_root, ignore_errors=True)


def parse_ext4_rw(value: str, valid: List[str]) -> set:
    """Parse the --ext4-rw partition set: comma-separated names, "all" or
    "none"/empty. Unknown names fail fast (before the long build)."""
    items = [p.strip().lower() for p in value.split(",") if p.strip()]
    if not items or items == ["none"]:
        return set()
    if items == ["all"]:
        return set(valid)
    unknown = [p for p in items if p not in valid]
    if unknown:
        raise RuntimeError(f"Unknown partitions in --ext4-rw: {unknown}. "
                           f"Valid: {sorted(valid)} + all/none")
    return set(items)


# Fixed mtime for rebuilt images (reproducible builds, packer parity).
FIXED_BUILD_TIMESTAMP = "1230768000"


def generate_fs_config(part_name: str, tree_root: Path) -> List[str]:
    """Walk tree_root, emit fs_config lines for e2fsdroid: a `/ 0 0 0755`
    root entry plus `<part>/<relpath> uid gid mode [capabilities=0x...]`
    per dir, regular file AND symlink (e2fsdroid looks files up under the
    mountpoint basename, without a leading slash; symlinks consume inodes
    too, so omitting them starves the build — proven by CI inode exhaustion
    on system). Owners/modes/caps are read live, so modded and donor files
    added earlier are covered with whatever they carry (root:root after
    normalize_tree_perms)."""
    lines = ["/ 0 0 0755"]
    for dirpath, dirnames, filenames in os.walk(tree_root, followlinks=False):
        dirnames.sort()
        for name in sorted(dirnames + filenames):
            p = Path(dirpath) / name
            try:
                st = os.lstat(p)
            except OSError:
                continue
            if not (stat.S_ISDIR(st.st_mode) or stat.S_ISREG(st.st_mode)
                    or stat.S_ISLNK(st.st_mode)):
                continue
            rel = p.relative_to(tree_root).as_posix()
            line = (f"{part_name}/{rel} {st.st_uid} {st.st_gid} "
                    f"{stat.S_IMODE(st.st_mode):04o}")
            if stat.S_ISREG(st.st_mode):
                try:
                    caps = os.getxattr(p, "security.capability")
                except OSError:
                    caps = b""
                if caps:
                    line += f" capabilities=0x{caps.hex()}"
            lines.append(line)
    return lines


def _regexify_context_path(path: str) -> str:
    """Append `(/.*)?` to exact (regex-free) context paths. The vendored
    e2fsdroid (best-match lookup) only matches pattern entries — a literal
    path never matches, proven empirically. `/` itself stays literal (the
    fs root is resolved without lookup). A literal `+` in filenames
    (lost+found) is escaped: as a regex quantifier it wouldn't even match
    itself; other metacharacters mean the author wrote a real pattern,
    kept verbatim."""
    if path == "/":
        return path
    if "+" in path and not any(c in path for c in "*?[]()|^$\\"):
        return path.replace("+", r"\+") + "(/.*)?"
    if any(c in path for c in "*?+[]()|^$"):
        return path
    return path + "(/.*)?"


# Safe grammars for ROM file_contexts lines (anything else is dropped +
# logged: it can only ever break the selinux parse or the lookup, while
# the `$` tiers below keep every path covered regardless). The path class
# deliberately allows alternations `(a|b)`, classes `[^/]`/`[0-9]` and `@`
# (HAL service names) — all standard in real vendor policy, proven by CI.
_CONTEXT_PATH_RE = re.compile(r"^[A-Za-z0-9/_.\-+*?()|^$\\\[\]@]+$")
_CONTEXT_CTX_RE = re.compile(r"^u:[A-Za-z0-9_.-]+:[A-Za-z0-9_.-]+"
                             r"(?::[A-Za-z0-9_.,:=\-]+)?$")
_CONTEXT_KINDS = {"-d", "-f", "-l", "-s", "-b", "-c", "-p", "--"}


def _sanitize_context_line(line: str):
    """Check a ROM file_contexts line against the safe grammar. Returns the
    (possibly path-regexified) line, or None to drop it. Dropped lines only
    lose a policy-specific label — the `$` tiers still cover the path."""
    parts = line.split()
    if len(parts) == 2:
        path, ctx = parts
        rest = ""
    elif len(parts) == 3 and parts[1] in _CONTEXT_KINDS:
        path, _, ctx = parts
        rest = f" {parts[1]}"
    else:
        return None
    if not _CONTEXT_PATH_RE.match(path):
        return None
    if not _CONTEXT_CTX_RE.match(ctx):
        return None
    return f"{_regexify_context_path(path)}{rest} {ctx}"


def collect_file_contexts(part_name: str, tree_root: Path,
                          fallback_files: List[Path]) -> List[str]:
    """Assemble a file_contexts list for e2fsdroid: a `/` root entry, then
    the partition's own `etc/selinux/*_file_contexts`, then fallbacks
    (plat, vendor — specific-first). ROM lines pass an allowlist grammar
    (safe path/context chars, optional known file-kind); anything else is
    dropped and logged, since a single malformed line can fail lookups
    with cryptic errors — dropped paths stay covered by the `$` tiers.
    Exact paths are converted to `(/.*)?` pattern form: this lookup only
    matches patterns (proven). ROM selinux files always carry broad
    self-coverage (`/<part>(/.*)?`, otherwise the AOSP build itself would
    fail the same way); if coverage is still incomplete, e2fsdroid fails
    fast naming the missing label — loud and actionable, never silent.
    Returns [] when nothing but the root entry was found (caller falls
    back to the legacy build)."""
    lines = ["/ u:object_r:rootfs:s0"]
    seen = set(lines)
    own = sorted((tree_root / "etc" / "selinux").glob("*_file_contexts")) \
        if (tree_root / "etc" / "selinux").is_dir() else []
    dropped: List[str] = []
    n_dropped = 0
    for src in own + list(fallback_files):
        try:
            text = src.read_text()
        except OSError:
            continue
        for raw in text.splitlines():
            line = raw.strip()
            if not line or line.startswith("#"):
                continue
            clean = _sanitize_context_line(line)
            if clean is None:
                n_dropped += 1
                if len(dropped) < 20:
                    dropped.append(f"{src.name}: {line[:120]}")
                continue
            if clean not in seen:
                seen.add(clean)
                lines.append(clean)
    if n_dropped:
        print(f"  [sanitize] dropped {n_dropped} non-conforming ROM line(s), "
              f"covered by $ tiers instead:")
        for d in dropped:
            print(f"    dropped: {d}")
    return lines if len(lines) > 1 else []


def _read_context(path: Path, follow_symlinks: bool = True) -> str:
    """Dumped SELinux context of path, '' when absent or malformed."""
    try:
        ctx = os.getxattr(path, "security.selinux",
                          follow_symlinks=follow_symlinks) \
            .decode(errors="replace").split("\x00")[0].strip()
    except OSError:
        return ""
    return ctx if ctx.count(":") >= 2 else ""


def _escape_context_path(path: str) -> str:
    """Escape regex metacharacters that break self-matching in `$` lines.
    Proven: a literal `+` (libc++.so, lost+found) never matches itself as
    a quantifier; `.` is harmless (matches itself among others)."""
    return path.replace("+", r"\+")


def _anchor_lines(part_name: str, tree_root: Path):
    """`$`-anchored entries for every dir, file and symlink in the tree.
    Returns (truth, inherit): `truth` holds paths whose context was dumped
    from the tree itself (stock truth — wins over everything); `inherit`
    holds the rest, labeled with the nearest resolved parent (top-down) or
    `system_file` for the mountpoint root (partition roots carry no xattr
    in practice, yet are conventionally system_file). `$` matches exactly
    its path, so neither list can shadow real patterns placed between
    them. Stock policy files simply don't cover every path (proven by CI
    failures on whole priv-app castes) — without the inherit tier the
    build could never go green; with it, unknowns get the parent context,
    which is also the runtime default for new files."""
    truth: List[str] = []
    inherit: List[str] = []
    resolved: dict = {}
    rels = [""]
    for dirpath, dirnames, filenames in os.walk(tree_root, followlinks=False):
        dirnames.sort()
        base = Path(dirpath)
        for d in dirnames + sorted(filenames):
            p = base / d
            rels.append(p.relative_to(tree_root).as_posix())
    rels.sort(key=lambda r: (r.count("/"), r))
    for rel in rels:
        abs_p = tree_root / rel if rel else tree_root
        ctx = _read_context(abs_p, follow_symlinks=False)
        tier = inherit
        if ctx:
            tier = truth
        elif not rel:
            ctx = "u:object_r:system_file:s0"
        else:
            parent = rel
            while parent:
                parent = parent.rpartition("/")[0]
                if parent in resolved:
                    ctx = resolved[parent]
                    break
            else:
                ctx = ""
            if not ctx:
                continue
        resolved[rel] = ctx
        abs_path = f"/{part_name}/{rel}" if rel else f"/{part_name}"
        tier.append(f"{_escape_context_path(abs_path)}$ {ctx}")
    return truth, inherit


def build_sidecars(partitions: List[str], unpacked_root: Path, img_dir: Path,
                   ext4_rw: set, fallback_files: List[Path]) -> None:
    """Write build sidecars next to each target `.img`, from the final trees
    (after mods/debloat/data-app move), right before the rebuild:
    - erofs->ext4 conversions: `<part>.fs_config` + `<part>.file_contexts`;
    - erofs->erofs rebuilds: `<part>.file_contexts` only (uid/gid/mode/caps
      come from the tree itself at mkfs time, no fs_config needed).
    Native ext4 originals keep the legacy build (no sidecars).
    `file_contexts` order is load-bearing: `/`, dumped-truth `$` lines,
    ROM patterns (own selinux files, then plat/vendor fallbacks), explicit
    `lost+found`, inherited `$` lines. Missing sources only warn — the
    rebuild then uses the legacy path for that partition."""
    print(f"=== Generating build sidecars in {img_dir} ===")
    for name in partitions:
        img_path = img_dir / f"{name}.img"
        src_dir = unpacked_root / name
        if not img_path.is_file() or not src_dir.is_dir():
            continue  # the rebuild step reports missing inputs itself
        try:
            orig_fmt = detect_image_format(img_path)
        except RuntimeError:
            continue  # same: rebuild raises with context
        if orig_fmt != "erofs":
            if name in ext4_rw:
                print(f"  [warn] {name}.img is native {orig_fmt}, no sidecars — "
                      f"legacy build without contexts")
            continue
        ctx_lines = collect_file_contexts(name, src_dir, fallback_files)
        if len(ctx_lines) <= 1:
            print(f"  [warn] no file_contexts sources for {name}, "
                  f"legacy build without contexts")
            continue
        if name in ext4_rw:
            fs_lines = generate_fs_config(name, src_dir)
            # mke2fs always creates lost+found (absent from the source tree);
            # e2fsdroid labels every dir entry and fails fast on a miss, so
            # both sidecars must cover it explicitly (0700 root, like mke2fs
            # makes it; pattern form — exact paths never match this lookup,
            # proven).
            fs_lines.append(f"{name}/lost+found 0 0 0700")
            ctx_lines.append(
                f"{_regexify_context_path(f'/{name}/lost+found')} "
                f"u:object_r:rootfs:s0")
            (img_dir / f"{name}.fs_config").write_text("\n".join(fs_lines) + "\n")
            print(f"  {name}: fs_config written ({len(fs_lines)} entries)")
        # `$` anchors: truth lines right after `/` (win over everything),
        # inherit lines at the very end (lose to real patterns, catch the
        # rest). `$` matches exactly its path, so neither tier can shadow
        # real patterns placed between them.
        truth, inherit = _anchor_lines(name, src_dir)
        ctx_lines[1:1] = truth
        ctx_lines.extend(inherit)
        n_truth, n_inherit = len(truth), len(inherit)
        (img_dir / f"{name}.file_contexts").write_text("\n".join(ctx_lines) + "\n")
        print(f"  {name}: file_contexts written ({len(ctx_lines)} entries: "
              f"{n_truth} truth, {n_inherit} inherit)")
    print()


def rebuild_partition_image(img_path: Path, src_dir: Path, force_ext4: bool = False,
                            free_mb: int = 150) -> None:
    """Rebuild a partition .img from an unpacked tree, matching the original format.

    With force_ext4 the image is built as ext4 regardless of the original
    format, sized tree + free_mb + margin with -m 0 so the free megabytes are
    really visible in df (RW partitions). Ext4 builds use sidecar
    `<part>.fs_config` / `<part>.file_contexts` (see build_sidecars) when
    present: empty fs via the vendored AOSP mke2fs (journal KEPT, unlike
    packer/UKA `^has_journal`) + populate/label via e2fsdroid — owners,
    modes, caps and SELinux land in the image. Without sidecars (or without
    the vendored tools) it falls back to plain `mkfs.ext4 -d`, as before.

    The original image is replaced atomically (build to temp file + rename),
    so a failed build keeps the previous image intact.
    """
    part_name = img_path.stem
    fmt = detect_image_format(img_path)
    if fmt == "sparse":
        simg_bin = shutil.which("simg2img")
        if not simg_bin:
            raise RuntimeError(
                f"{img_path.name} is a sparse image but simg2img is missing: "
                "install android-sdk-libsparse-utils"
            )
        tmp_raw = img_path.with_suffix(".raw.img")
        try:
            subprocess.run([simg_bin, str(img_path), str(tmp_raw)], check=True)
            os.replace(tmp_raw, img_path)
        finally:
            tmp_raw.unlink(missing_ok=True)
        fmt = detect_image_format(img_path)

    tmp_path = img_path.with_name(img_path.name + ".new")
    try:
        if fmt == "erofs" and not force_ext4:
            side_ctx = img_path.parent / f"{part_name}.file_contexts"
            mkfs_dev = TOOLS_DIR / "mkfs.erofs"
            if mkfs_dev.is_file() and side_ctx.is_file():
                # Contexts path: mount-point + selabels from the sidecar
                # (owners/modes/caps come from the tree itself at mkfs time).
                print(f"  building {img_path.name} with contexts "
                      f"(vendored mkfs.erofs)")
                cmd = [str(mkfs_dev), f"-z{EROFS_COMPRESSOR}",
                       "-T", FIXED_BUILD_TIMESTAMP,
                       "--mount-point", f"/{part_name}",
                       "--file-contexts", str(side_ctx),
                       str(tmp_path), str(src_dir)]
            else:
                if side_ctx.is_file():
                    print(f"  [warn] tools/mkfs.erofs missing, "
                          f"legacy build without contexts")
                mkfs_bin = shutil.which("mkfs.erofs")
                if not mkfs_bin:
                    raise RuntimeError("mkfs.erofs not found: install erofs-utils to rebuild EROFS images")
                cmd = [mkfs_bin, f"-z{EROFS_COMPRESSOR}", str(tmp_path), str(src_dir)]
        else:  # ext4 (native or forced RW conversion)
            if force_ext4 and fmt != "ext4":
                print(f"  converting {img_path.name} to ext4 RW ({fmt} -> ext4)")
            # Size from the original image, grown if the tree no longer fits
            tree_size = 0
            for p in src_dir.rglob("*"):
                try:
                    tree_size += p.lstat().st_size
                except OSError:
                    pass
            if force_ext4:
                new_size = tree_size + (free_mb + EXT4_RW_MARGIN_MB) * 1024 * 1024
            else:
                new_size = max(img_path.stat().st_size, int(tree_size * 1.1) + 32 * 1024 * 1024)
            blocks = str((new_size + 4095) // 4096)
            side_fs = img_path.parent / f"{part_name}.fs_config"
            side_ctx = img_path.parent / f"{part_name}.file_contexts"
            mke2fs_bin = TOOLS_DIR / "mke2fs"
            e2fsdroid_bin = TOOLS_DIR / "e2fsdroid"
            if side_fs.is_file() and side_ctx.is_file() \
                    and mke2fs_bin.is_file() and e2fsdroid_bin.is_file():
                # Contexts path: empty fs + populate/label via e2fsdroid.
                # -s (shared_blocks dedup) only for non-RW, like packer.
                try:
                    with open(side_fs) as f:
                        inodes = sum(1 for _ in f) + 8
                except OSError:
                    inodes = 5000
                print(f"  building {img_path.name} with contexts "
                      f"({inodes} inodes)")
                run_logged([str(mke2fs_bin), "-F", "-L", part_name,
                            "-I", "256", "-N", str(inodes),
                            "-M", f"/{part_name}",
                            "-m", "0", "-t", "ext4", "-b", "4096",
                            str(tmp_path), blocks],
                           f"mke2fs {img_path.name}")
                e2fscmd = [str(e2fsdroid_bin), "-e", "-T", FIXED_BUILD_TIMESTAMP,
                           "-C", str(side_fs), "-S", str(side_ctx),
                           "-f", str(src_dir), "-a", f"/{part_name}"]
                if not force_ext4:
                    e2fscmd.append("-s")
                e2fscmd.append(str(tmp_path))
                run_logged(e2fscmd, f"e2fsdroid {img_path.name}")
                os.replace(tmp_path, img_path)
                return
            if side_fs.is_file() or side_ctx.is_file():
                print(f"  [warn] incomplete sidecars for {img_path.name}, "
                      f"legacy build without contexts")
            elif not mke2fs_bin.is_file() or not e2fsdroid_bin.is_file():
                print(f"  [warn] tools/mke2fs or tools/e2fsdroid missing, "
                      f"legacy build without contexts")
            mkfs_bin = shutil.which("mkfs.ext4")
            if not mkfs_bin:
                raise RuntimeError("mkfs.ext4 not found: install e2fsprogs to rebuild ext4 images")
            cmd = [mkfs_bin, "-F"]
            if force_ext4:
                # no root-reserved blocks: the free target must be visible/usable.
                # explicit -b 4096: without it mke2fs silently picks 1K blocks on
                # small filesystems and the image comes out 4x smaller than asked.
                cmd += ["-m", "0", "-b", "4096"]
            cmd += ["-d", str(src_dir), str(tmp_path), blocks]

        # mkfs tools are chatty; show output only on failure
        proc = subprocess.run(cmd, stdin=subprocess.DEVNULL,
                              stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
        if proc.returncode != 0:
            print(f"Rebuild of {img_path.name} failed (exit {proc.returncode}). Last log lines:")
            print("\n".join(proc.stdout.splitlines()[-30:]))
            raise subprocess.CalledProcessError(proc.returncode, proc.args)
        os.replace(tmp_path, img_path)
    finally:
        tmp_path.unlink(missing_ok=True)


def rebuild_partition_images(partitions: List[str], unpacked_root: Path, img_dir: Path,
                             ext4_rw: set = frozenset(), free_mb: int = 150) -> None:
    """Rebuild every listed partition .img in img_dir from unpacked_root/<name>/ trees.
    Partitions in ext4_rw are forced to ext4 with free_mb megabytes free."""
    print(f"=== Rebuilding {len(partitions)} partition images in {img_dir} ===")
    for name in partitions:
        src_dir = unpacked_root / name
        if not src_dir.is_dir():
            raise FileNotFoundError(f"Missing unpacked tree for rebuild: {src_dir}")
        img_path = img_dir / f"{name}.img"
        if not img_path.exists():
            raise FileNotFoundError(f"Missing required partition image: {img_path}")
        forced = name in ext4_rw
        print(f"Rebuilding {name}.img from {src_dir}..."
              f"{' [ext4 RW]' if forced else ''}")
        fmt = detect_image_format(img_path)
        rebuild_partition_image(img_path, src_dir, force_ext4=forced, free_mb=free_mb)
        print(f"  -> {img_path} ({img_path.stat().st_size // 1024 // 1024}MB, {fmt}"
              f"{'->ext4' if forced and fmt != 'ext4' else ''})")
    print(f"Rebuilding in {img_dir} completed.\n")


def repack_super_image(
    stock_dir: Path, port_dir: Path | None, output_super_img: Path,
    mod_partitions: List[str] | None = None,
) -> None:
    """Pack extracted dynamic partitions into super.img using lpmake with Virtual A/B support.

    Port mode (mod_partitions=None): stock images come from stock_dir
    (STOCK_PARTITIONS), port images from port_dir (PORT_PARTITIONS).
    Mod mode (mod_partitions given): every image comes from stock_dir
    (full stock firmware, port_dir unused).
    Each partition is added twice: `<name>_a` with the real image and
    `<name>_b` as an empty (0-byte) placeholder in the second slot group,
    as stock Virtual A/B super images do.
    """
    print("=== Step 6: Packing partitions into super.img ===")

    lpmake_bin = shutil.which("lpmake") or str(TOOLS_DIR / "lpmake")

    group_a = "qti_dynamic_partitions_a"
    group_b = "qti_dynamic_partitions_b"
    partition_args = []
    total_size = 0

    if mod_partitions is not None:
        sources: list = [(stock_dir, mod_partitions)]
    else:
        if port_dir is None:
            raise ValueError("port_dir is required in port mode")
        sources = [(stock_dir, STOCK_PARTITIONS), (port_dir, PORT_PARTITIONS)]
    for img_dir, names in sources:
        for part_name in names:
            img_path = img_dir / f"{part_name}.img"
            if not img_path.exists():
                raise FileNotFoundError(f"Missing required partition image: {img_path}")

            img_size = img_path.stat().st_size
            # Align partition size to 4096 bytes block size
            aligned_size = ((img_size + 4095) // 4096) * 4096
            total_size += aligned_size

            partition_args.extend([
                "--partition",
                # attr "none" (not "readonly"): matches stock VAB layout and
                # what UnpackerSuper/UKA packs — "readonly" is for retrofit
                # devices; it changes nothing for full-super flashing but
                # breaks parity with stock and on-device tooling.
                f"{part_name}_a:none:{aligned_size}:{group_a}",
                "--image",
                f"{part_name}_a={img_path}",
                # Empty _b slot placeholder: size 0, no --image on purpose
                "--partition",
                f"{part_name}_b:none:0:{group_b}",
            ])

    # Tight packing: groups fit the partitions exactly, super weighs what
    # the images weigh plus the lpmake metadata minimum only. No snapshot
    # padding, no GiB rounding. Both slot groups get the same size (mirrors
    # stock layout); with --virtual-ab the groups may overcommit the
    # physical super size via copy-on-write.
    group_size = total_size
    super_size = total_size + SUPER_METADATA_RESERVE_MB * 1024 * 1024

    cmd = [
        lpmake_bin,
        "--metadata-size",
        "65536",
        "--super-name",
        "super",
        "--metadata-slots",
        "3",
        "--virtual-ab",
        "--device",
        f"super:{super_size}",
        "--group",
        f"{group_a}:{group_size}",
        "--group",
        f"{group_b}:{group_size}",
        *partition_args,
        "--output",
        str(output_super_img),
    ]

    print(
        f"Executing lpmake with Virtual A/B support (--virtual-ab, groups={group_a}/{group_b}, super_size={super_size})..."
    )
    # Fail fast with a clear message when the disk cannot fit the output:
    # lpmake itself reports this only as a cryptic
    # `sparse_file_write failed (error code -22)`.
    print("Partition images for super:")
    for img_dir, names in sources:
        for part_name in names:
            img_path = img_dir / f"{part_name}.img"
            print(f"  {part_name}_a: {img_path.stat().st_size} bytes ({img_path})")
    usage = shutil.disk_usage(output_super_img.parent)
    print(f"Disk at {output_super_img.parent}: total={usage.total} "
          f"used={usage.used} free={usage.free}; need ~{super_size} bytes for super.img")
    if usage.free < super_size + 512 * 1024 * 1024:
        raise RuntimeError(
            f"Not enough free disk for super.img: free={usage.free}, "
            f"need~{super_size + 512 * 1024 * 1024}. Free space and retry.")
    # lpmake is chatty ("will resize" info + "Invalid sparse file format"
    # noise: it probes every raw image as sparse and falls back — harmless).
    # Capture it all; show only the tail on failure.
    proc = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
    if proc.returncode != 0:
        print(f"lpmake failed (exit {proc.returncode}). Last log lines:")
        print("\n".join(proc.stdout.splitlines()[-30:]))
        try:
            usage = shutil.disk_usage(output_super_img.parent)
            print(f"Disk at failure: total={usage.total} used={usage.used} free={usage.free}")
        except OSError:
            pass
        raise subprocess.CalledProcessError(proc.returncode, proc.args)
    print(
        f"Successfully generated {output_super_img} (Size: {output_super_img.stat().st_size} bytes).\n"
    )


def split_file(src_path: Path, dest_dir: Path, parts: int, prefix: str) -> None:
    """Split a file into exactly `parts` Android sparse chunks (UKA/img2simg method).

    Each chunk is a valid sparse image: sparse header + one DONT_CARE chunk
    (offset where this part belongs) + one RAW chunk with the data. That way
    `fastboot flash super` writes every part at its own offset and recovery
    `package_unsparse_file` handles them (plain raw slices would all land at
    offset 0). Sizing is exactly UKA: chunk = ceil(size_in_MB / parts) whole
    MB (size first floored to MiB, like busybox expr integer math); the last
    part takes the remainder, so a 9GiB super yields 53 full chunks + a smaller
    last one. Output names are <prefix>0 .. <prefix>{parts-1} (0-based — UKA
    numbers from 1 and renames, same final result — as the install scripts
    and updater-script expect).
    """
    block_size = 4096
    total = src_path.stat().st_size
    if total % block_size != 0:
        raise ValueError(f"{src_path.name} size {total} is not a multiple of {block_size}")
    size_mb = total // (1024 * 1024)
    piece_mb = (size_mb + parts - 1) // parts
    if piece_mb < 1:
        raise ValueError(f"{src_path.name} too small to split into {parts} parts")
    chunk_size = piece_mb * 1024 * 1024

    dest_dir.mkdir(parents=True, exist_ok=True)
    offset_blocks = 0
    with open(src_path, "rb") as f:
        for i in range(parts):
            # Last part takes everything left, so the split is always exactly
            # `parts` non-empty chunks ((parts-1)*chunk_size < total holds).
            data = f.read() if i == parts - 1 else f.read(chunk_size)
            if not data:
                raise RuntimeError(f"Ran out of data at part {i}, expected exactly {parts}")
            to_write = len(data)
            if to_write % block_size != 0:
                raise ValueError(f"Chunk {i} size {to_write} is not a multiple of {block_size}")
            raw_blocks = to_write // block_size
            header = struct.pack(
                "<IHHHHIIII",
                _SPARSE_HDR_MAGIC, 1, 0,
                _SPARSE_HDR_LEN, _SPARSE_CHUNK_HDR_LEN, block_size,
                offset_blocks + raw_blocks, 2, 0,
            )
            dont_care = struct.pack(
                "<HHII", _SPARSE_CHUNK_DONT_CARE, 0, offset_blocks, _SPARSE_CHUNK_HDR_LEN,
            )
            raw = struct.pack(
                "<HHII", _SPARSE_CHUNK_RAW, 0, raw_blocks, _SPARSE_CHUNK_HDR_LEN + to_write,
            )
            with open(dest_dir / f"{prefix}{i}", "wb") as out:
                out.write(header)
                out.write(dont_care)
                out.write(raw)
                out.write(data)
            offset_blocks += raw_blocks
    print(f"Split {src_path.name} ({total} bytes) into {parts} sparse parts "
          f"(~{piece_mb}MB each) in {dest_dir}.")


def assemble_package(
    super_img: Path,
    meta_dir: Path,
    template_dir: Path = TEMPLATE_DIR,
    package_dir: Path = PACKAGE_DIR,
    package_type: str = "universal",
) -> Path:
    """Assemble the final flashable package: fresh template copy + super.img
    split into images/super.img.0..53 (as the install scripts expect).

    package_type "universal" keeps META-INF (recovery updater-script +
    update-binary AND OTA metadata) so the ZIP flashes in TWRP/OrangeFox
    and works via fastboot scripts after unzipping. "fastboot-only" drops
    the whole META-INF dir (recovery flashing disabled on purpose).
    """
    print("=== Assembling flashable package ===")
    if package_type not in ("universal", "fastboot-only"):
        raise ValueError(f"Unknown package_type: {package_type}")
    if not template_dir.is_dir():
        raise FileNotFoundError(f"Missing flash template: {template_dir}")
    if package_dir.exists():
        shutil.rmtree(package_dir)
    shutil.copytree(template_dir, package_dir)

    if package_type == "fastboot-only":
        shutil.rmtree(package_dir / "META-INF", ignore_errors=True)
        print("Fastboot-only package: META-INF removed.")
    else:
        # NOTE: template/META-INF/com/android/ is empty in git (git does not
        # track empty dirs), so create it — copy2 won't create the path.
        dest_dir = package_dir / "META-INF/com/android"
        dest_dir.mkdir(parents=True, exist_ok=True)
        for meta_name in ("metadata", "metadata.pb"):
            src = meta_dir / "META-INF/com/android" / meta_name
            if not src.exists():
                raise FileNotFoundError(f"Missing OTA META-INF file: {src}")
            shutil.copy2(src, package_dir / "META-INF/com/android" / meta_name)
        print("OTA META-INF (metadata, metadata.pb) installed.")

    split_file(super_img, package_dir / "images", SUPER_SPLIT_PARTS, "super.img.")
    print(f"Flashable package ready: {package_dir}\n")
    return package_dir


def create_recovery_zip(package_dir: Path, output_zip: Path) -> Path:
    """Pack the assembled package/ into a ZIP with maximum DEFLATE compression
    (level 9). The universal package is recovery-flashable (updater-script +
    ARM update-binary already in META-INF); the fastboot-only package has no
    META-INF and is distributed as a plain archive (unzip + run install scripts).
    Sorted walk keeps the archive reproducible.
    """
    print(f"=== Packing ZIP (deflate-9): {output_zip.name} ===")
    if output_zip.exists():
        output_zip.unlink()
    with zipfile.ZipFile(output_zip, "w", compression=zipfile.ZIP_DEFLATED,
                          compresslevel=9, allowZip64=True) as z:
        for root, dirs, files in os.walk(package_dir):
            dirs.sort()
            for name in sorted(files):
                full = Path(root) / name
                arc = full.relative_to(package_dir).as_posix()
                z.write(full, arc,
                        compress_type=zipfile.ZIP_DEFLATED, compresslevel=9)
    print(f"ZIP ready: {output_zip} "
          f"({output_zip.stat().st_size // 1024 // 1024}MB)\n")
    return output_zip


def main() -> None:
    parser = argparse.ArgumentParser(description="HyperOS AutoPorter")
    parser.add_argument(
        "--mode",
        choices=["port", "mod"],
        default="port",
        help="Build mode: 'port' mixes stock + port OTAs (device port), "
             "'mod' modifies the full stock firmware only, no donor files "
             "(default: port)",
    )
    parser.add_argument(
        "--hyper-version",
        choices=sorted(MODDED_APPS),
        default="hos4",
        help="HyperOS version: selects the modded apps set (default: hos4)",
    )
    parser.add_argument(
        "--package-type",
        choices=["universal", "fastboot-only"],
        default="universal",
        help="Package type: 'universal' keeps META-INF (recovery + fastboot), "
             "'fastboot-only' removes META-INF (default: universal)",
    )
    parser.add_argument(
        "--debloat",
        choices=["auto", "hos3", "hos4", "none"],
        default="auto",
        help="Debloat list to apply to the target unpacked tree: 'auto' uses the "
             "--hyper-version list, 'none' skips debloating (default: auto)",
    )
    parser.add_argument(
        "--dsv",
        choices=["yes", "no"],
        default="yes",
        help="Apply DSV smali patching - signature checks disabling "
             "(framework, miui-services, services jars) (default: yes)",
    )
    parser.add_argument(
        "--decrypt-data",
        choices=["yes", "no"],
        default="no",
        help="Rename fileencryption -> fileencryptable in vendor fstab "
             "(decrypted /data, format data after flash) (default: no)",
    )
    parser.add_argument(
        "--ext4-rw",
        default="product,system",
        help="Comma-separated partitions to rebuild as ext4 RW "
             "(erofs ones get converted), 'all' or 'none' "
             "(default: product,system)",
    )
    parser.add_argument(
        "--ext4-free-mb",
        type=int,
        default=150,
        help="Free megabytes to keep in each ext4 RW partition (default: 150)",
    )
    args = parser.parse_args()
    print(f"Starting HyperOS AutoPorter Workflow (mode: {args.mode}, "
          f"HyperOS version: {args.hyper_version}, "
          f"package: {args.package_type}, debloat: {args.debloat}, dsv: {args.dsv}, "
          f"decrypt-data: {args.decrypt_data}, ext4-rw: {args.ext4_rw}, "
          f"ext4-free: {args.ext4_free_mb}MB)...\n")

    # Step 1: Tools Setup
    setup_tools()

    # Step 2: Download & Extract Modded Apps for the selected HyperOS version
    mod_url, mod_dir, mod_name = MODDED_APPS[args.hyper_version]
    download_and_extract_mod(mod_url, mod_dir, mod_name)

    # Step 3: Download Stock & Port Firmwares with Strict Memory Cleanups.
    # Port mode uses separate output dirs: stock extras (product/system_ext)
    # share names with port partitions and would otherwise overwrite each
    # other. Mod mode takes the full stock firmware only (its own META-INF
    # feeds the package); no port OTA is downloaded.
    if args.mode == "port":
        process_firmware(STOCK_URL, "stock_duchamp",
                         STOCK_PARTITIONS + STOCK_EXTRA_PARTITIONS, EXTRACTED_STOCK_DIR)
        process_firmware(PORT_URL, "port_chagall", PORT_PARTITIONS, EXTRACTED_PORT_DIR,
                         extra_files=PORT_META_FILES, extra_dir=PORT_META_DIR)
    else:
        process_firmware(STOCK_URL, "stock_duchamp", MOD_PARTITIONS,
                         EXTRACTED_STOCK_DIR,
                         extra_files=PORT_META_FILES, extra_dir=PORT_META_DIR)

    # Step 4: Unpack partition images for patching.
    # Port mode: stock (+ extras, donors) + port trees. Mod mode: the full
    # stock tree only.
    if args.mode == "port":
        unpack_partitions(STOCK_PARTITIONS + STOCK_EXTRA_PARTITIONS,
                          EXTRACTED_STOCK_DIR, UNPACKED_STOCK_DIR)
        unpack_partitions(PORT_PARTITIONS, EXTRACTED_PORT_DIR, UNPACKED_PORT_DIR)

        # Step 4b: Flatten port product nesting (pangu/system -> product root) so
        # debloat paths and the rebuild see the final flat layout. Port only.
        flatten_pangu_system(UNPACKED_PORT_DIR / "product")

        # Step 4c: Copy stock donor blobs into the port tree (before debloat and
        # rebuild bake the trees into images). Port only — mod has no donors.
        apply_donor_files(UNPACKED_STOCK_DIR, UNPACKED_PORT_DIR)

        # Step 4c2: Overlay the modded-apps set onto the port tree (modded
        # files replace stock/port ones; runs before debloat so oat strips
        # and deletions apply to the final content).
        apply_modded_apps(mod_dir, UNPACKED_PORT_DIR)

        # Tree carrying the build forward (debloat + DSV + rebuild source).
        patch_root = UNPACKED_PORT_DIR
    else:
        unpack_partitions(MOD_PARTITIONS, EXTRACTED_STOCK_DIR, UNPACKED_STOCK_DIR)
        # Same overlay onto the single stock tree (before debloat).
        apply_modded_apps(mod_dir, UNPACKED_STOCK_DIR)
        patch_root = UNPACKED_STOCK_DIR

    # Step 4d: Debloat the unpacked trees + patch vendor fstab (AVB off, rw).
    # Port mode: DEBLOAT onto the port tree, STOCK_DEBLOAT onto the stock
    # tree. Mod mode: both lists onto the single stock tree. Fstab patching
    # is not debloat-gated (functional, not deletions); only the
    # fileencryption rename follows --decrypt-data. Runs before the rebuild.
    debloat_version = args.hyper_version if args.debloat == "auto" else args.debloat
    if debloat_version == "none":
        print("Debloat skipped (--debloat none).\n")
    elif args.mode == "port":
        apply_debloat(UNPACKED_PORT_DIR, debloat_version)
        apply_stock_debloat(UNPACKED_STOCK_DIR)
    else:
        apply_debloat(UNPACKED_STOCK_DIR, debloat_version)
        apply_stock_debloat(UNPACKED_STOCK_DIR)
    patch_vendor_fstab(UNPACKED_STOCK_DIR, decrypt_data=(args.decrypt_data == "yes"))

    # Steps 4e-4g: DSV smali patching (signature checks disabling).
    if args.dsv == "yes":
        # Step 4e: Smali-patch framework.jar (signature checks -> XdConfig).
        patch_jar_smali(
            patch_root / "system" / "system" / "framework" / "framework.jar",
            "framework", FRAMEWORK_METHOD_PATCHES, FRAMEWORK_INSERT_PATCHES,
            BASE_DIR / "smali_work" / "framework",
        )
        # Step 4f: Smali-patch miui-services.jar (signature checks -> void,
        # secure-flag bypass at method start).
        patch_jar_smali(
            patch_root / "system_ext" / "framework" / "miui-services.jar",
            "miui-services", MIUI_SERVICES_METHOD_PATCHES, [],
            BASE_DIR / "smali_work" / "miui-services",
            start_patches=MIUI_SERVICES_START_PATCHES,
            replace_patches=MIUI_SERVICES_REPLACE_PATCHES,
        )
        # Step 4g: Smali-patch services.jar (signature checks -> XdConfig/void,
        # secure-flag bypass incl. a brand-new isBypassSecureFlag method).
        # NOTE: services.jar lives in system/system (AOSP location), NOT in
        # system_ext like miui-services.jar (proven by CI: absent under system_ext).
        patch_jar_smali(
            patch_root / "system" / "system" / "framework" / "services.jar",
            "services", SERVICES_METHOD_PATCHES, [],
            BASE_DIR / "smali_work" / "services",
            start_patches=SERVICES_START_PATCHES,
            new_method_patches=SERVICES_NEW_METHODS,
        )
    else:
        print("DSV smali patching skipped (--dsv no).\n")

    # Step 4h: Move product/data-app/* into product/app/ on the build tree.
    # Runs last, right before the rebuild, so everything (debloat leftovers,
    # DSV, modded apps) lands in app/.
    move_data_app_to_app(patch_root / "product")

    # Rebuild jobs: (partitions, unpacked tree, image dir). Port mode rebuilds
    # the port list from the port tree plus STOCK_PARTITIONS from the stock
    # tree; mod mode rebuilds the full stock set from the single stock tree.
    if args.mode == "port":
        rebuild_jobs = [(PORT_PARTITIONS, UNPACKED_PORT_DIR, EXTRACTED_PORT_DIR),
                        (STOCK_PARTITIONS, UNPACKED_STOCK_DIR, EXTRACTED_STOCK_DIR)]
    else:
        rebuild_jobs = [(MOD_PARTITIONS, UNPACKED_STOCK_DIR, EXTRACTED_STOCK_DIR)]
    ext4_rw = parse_ext4_rw(args.ext4_rw, sorted(set(STOCK_PARTITIONS
                                                       + STOCK_EXTRA_PARTITIONS
                                                       + PORT_PARTITIONS)))
    if ext4_rw:
        print(f"ext4 RW partitions: {sorted(ext4_rw)} "
              f"(+{args.ext4_free_mb}MB free each)\n")

    # Step 4i: Generate build sidecars (<part>.fs_config + <part>.file_contexts
    # next to each target .img) for erofs->ext4 conversions, from the final
    # trees. Fallback selinux files: plat from the build tree's system,
    # vendor from the stock tree (both trees are unpacked in every mode).
    plat_dir = patch_root / "system" / "etc" / "selinux"
    vendor_dir = UNPACKED_STOCK_DIR / "vendor" / "etc" / "selinux"
    fallback_files = sorted(plat_dir.glob("*_file_contexts")) \
        if plat_dir.is_dir() else []
    fallback_files += sorted(vendor_dir.glob("*_file_contexts")) \
        if vendor_dir.is_dir() else []
    for parts, uroot, idir in rebuild_jobs:
        build_sidecars(parts, uroot, idir, ext4_rw, fallback_files)

    # Step 5: Rebuild partition images from (patched) unpacked trees.
    # Port mode NOTE: stock product/system_ext are donors only (files are
    # copied out of them into unpacked_port later) — never rebuilt, never
    # packed into super. ext4_rw names can only match rebuilt partitions, so
    # stock extras (same names as port ones) are never affected.
    # Mod mode: the full stock set is rebuilt from the single stock tree.
    for parts, uroot, idir in rebuild_jobs:
        rebuild_partition_images(parts, uroot, idir, ext4_rw, args.ext4_free_mb)

    # Step 5b: Drop unpacked trees — the rebuild is done and nothing below
    # uses them; lpmake needs ~super_size bytes free right after this.
    for unpacked_dir in (UNPACKED_STOCK_DIR, UNPACKED_PORT_DIR):
        if unpacked_dir.exists():
            print(f"Removing {unpacked_dir} to free disk space...")
            shutil.rmtree(unpacked_dir)

    # Step 6: Repack partitions into super.img
    super_output = BASE_DIR / "super.img"
    if args.mode == "port":
        repack_super_image(EXTRACTED_STOCK_DIR, EXTRACTED_PORT_DIR, super_output)
    else:
        repack_super_image(EXTRACTED_STOCK_DIR, None, super_output,
                           mod_partitions=MOD_PARTITIONS)

    # Step 7: Assemble the final flashable package (template + super chunks,
    # with or without META-INF depending on package type)
    package_dir = assemble_package(super_output, PORT_META_DIR,
                                   package_type=args.package_type)

    # Step 8: Pack it into a ZIP (max compression). The name marks the mode
    # (port = stock+port mix, mod = stock-only) and fastboot-only builds;
    # the universal ZIP is recovery-flashable.
    mode_prefix = "port" if args.mode == "port" else "mod"
    zip_suffix = "" if args.package_type == "universal" else f"-{args.package_type}"
    create_recovery_zip(package_dir,
                        BASE_DIR / f"HyperOS-{mode_prefix}-duchamp-{args.hyper_version}{zip_suffix}.zip")

    print("HyperOS AutoPorter completed successfully!")


if __name__ == "__main__":
    main()
