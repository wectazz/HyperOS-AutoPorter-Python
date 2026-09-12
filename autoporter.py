#!/usr/bin/env python3
"""
HyperOS AutoPorter - Automated Firmware Porting Tool
"""

import argparse
import os
import re
import struct
import sys
import shutil
import zipfile
import subprocess
from pathlib import Path
from typing import List

import requests
from tqdm import tqdm
import gdown

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

HOS3_GDRIVE_URL = (
    "https://drive.google.com/file/d/1GMmz3S8KnYri11cKavSdkIC9U-x0YY4Q/view?usp=sharing"
)
HOS4_GDRIVE_URL = (
    "https://drive.google.com/file/d/1M1mNPWO5jt5Q1_AJCfpFp3VTmTycVJ3Q/view?usp=sharing"
)

# Modded apps sets per HyperOS version: (gdrive_url, output_dir, archive_name)
MODDED_APPS = {
    "hos3": (HOS3_GDRIVE_URL, MODDED_HOS3_DIR, "moddedapps_hos3"),
    "hos4": (HOS4_GDRIVE_URL, MODDED_HOS4_DIR, "moddedapps_hos4"),
}
# Target Partition lists
STOCK_PARTITIONS = ["odm", "vendor", "odm_dlkm", "system_dlkm", "vendor_dlkm"]
PORT_PARTITIONS = ["mi_ext", "product", "system", "system_ext"]
# Extra stock partitions: dumped + unpacked for reference/patching only,
# NOT packed into super.img (super takes product/system_ext from the port)
STOCK_EXTRA_PARTITIONS = ["product", "system_ext"]

# Extra files taken from the port OTA zip (before it is deleted) for the
# final flashable package: recovery META-INF descriptor of the port build
PORT_META_FILES = ["META-INF/com/android/metadata", "META-INF/com/android/metadata.pb"]

# Smali patching (signature-check neutering -> XdConfig). Applied to jars from
# the unpacked port tree BEFORE the rebuild bakes them back in. Extra smali to
# inject lives in dsv/<jar-key>/<dex>/ and lands in the matching decompiled dex
# dir at the path from its own .class declaration (e.g. XdConfig goes to
# android/os/ of classes6). Extend per jar (miui-services.jar, services.jar).
DSV_DIR = BASE_DIR / "dsv"

# Method-body replacements: (target basenames, [method name + '('], registers,
# XdConfig method). The whole body between the .method header and .end method
# is replaced (annotations inside are dropped with it).
FRAMEWORK_METHOD_PATCHES = [
    (["AssetManager.smali"], ["containsAllocatedTable("], 2, "RETURN_FALSE"),
    (["PackageParser$SigningDetails.smali", "SigningDetails.smali"],
     ["checkCapability(", "checkCapabilityRecover(", "hasCommonAncestor(",
      "signaturesMatchExactly("], 4, "RETURN_TRUE"),
    (["StrictJarVerifier.smali"], ["verifyMessageDigest("], 3, "RETURN_TRUE"),
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
]
DEBLOAT = {"hos3": DEBLOAT_HOS3, "hos4": DEBLOAT_HOS4}
# Removed for EVERY version (not part of the per-version lists).
DEBLOAT_COMMON_FILES = ["mi_ext/etc/init/init.miui.mi_ext.rc"]

# Number of super.img.N chunks the install scripts expect (super.img.0 .. super.img.53)
SUPER_SPLIT_PARTS = 54

# EROFS compressor for rebuilt images. Target kernel is 6.1 (duchamp), so
# MicroLZMA ("lzma,9", the maximum 1.7.1 offers) would also be readable, but
# builds take much longer — "lz4hc,12" is the fast safe fallback (decodes via
# the plain LZ4 path everywhere lz4 works). Do NOT switch to deflate: it needs
# 6.6+ — unreadable images = bootloop.
EROFS_COMPRESSOR = "lz4hc,12"


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


def download_and_extract_gdrive_mod(gdrive_url: str, output_dir: Path, name: str) -> None:
    """Download and unpack Google Drive modded apps archives."""
    print(f"=== Downloading Modded Apps: {name} ===")
    archive_path = output_dir / f"{name}.zip"

    # Download using gdown library API
    gdown.download(url=gdrive_url, output=str(archive_path), quiet=False)

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
    """Extract EROFS image with fsck.erofs --extract. Returns file/symlink count."""
    fsck_bin = shutil.which("fsck.erofs")
    if not fsck_bin:
        raise RuntimeError("fsck.erofs not found: install erofs-utils to unpack EROFS images")
    # fsck.erofs is silent on success; show only the tail on failure
    proc = subprocess.run(
        [fsck_bin, f"--extract={dest_dir}", str(img_path)],
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        text=True,
    )
    if proc.returncode != 0:
        print(f"fsck.erofs failed on {img_path.name} (exit {proc.returncode}). Last log lines:")
        print("\n".join(proc.stdout.splitlines()[-30:]))
        raise subprocess.CalledProcessError(proc.returncode, proc.args)
    return sum(1 for p in dest_dir.rglob("*") if p.is_file() or p.is_symlink())


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


def apply_donor_files(stock_root: Path, port_root: Path) -> None:
    """Copy donor blobs from the unpacked stock trees into the unpacked port
    trees (device_features, displayconfig, vndk/compos APEXes). Missing
    sources only warn — OTAs differ between builds."""
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


def apply_debloat(unpacked_root: Path, version: str) -> None:
    """Delete the debloat list entries for a HyperOS version from the unpacked
    port tree (plus the init.miui.mi_ext.rc file, removed for every version).
    Missing entries only warn — OTAs differ between builds."""
    entries = list(DEBLOAT.get(version, [])) + DEBLOAT_COMMON_FILES
    print(f"=== Applying debloat list '{version}' ({len(entries)} entries) ===")
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


def run_logged(cmd: List[str], what: str) -> None:
    """Run a chatty tool; show output only on failure."""
    proc = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
    if proc.returncode != 0:
        print(f"{what} failed (exit {proc.returncode}). Last log lines:")
        print("\n".join(proc.stdout.splitlines()[-30:]))
        raise subprocess.CalledProcessError(proc.returncode, proc.args)


def replace_method_bodies(text: str, names: List[str], registers: int, call: str) -> tuple:
    """Replace bodies of .method blocks whose header contains one of `names`
    (each name includes the opening paren, e.g. "checkCapability("). Returns
    (new_text, patched_headers). Raises on an unterminated block."""
    body = (f"    .registers {registers}\n"
            f"    invoke-static {{}}, Landroid/os/XdConfig;->{call}()Z\n"
            f"    move-result v0\n"
            f"    return v0\n")
    out: List[str] = []
    patched: List[str] = []
    skipping = False
    for line in text.splitlines(keepends=True):
        stripped = line.strip()
        if not skipping:
            out.append(line)
            if stripped.startswith(".method") and any(
                    re.search(r"(?<![\w$])" + re.escape(n), stripped) for n in names):
                patched.append(stripped)
                out.append(body)
                skipping = True
        elif stripped == ".end method":
            out.append(line)
            skipping = False
        # else: drop old body line
    if skipping:
        raise RuntimeError("Unterminated .method block while patching")
    return "".join(out), patched


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
                    work_root: Path) -> None:
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


def rebuild_partition_image(img_path: Path, src_dir: Path) -> None:
    """Rebuild a partition .img from an unpacked tree, matching the original format.

    The original image is replaced atomically (build to temp file + rename),
    so a failed build keeps the previous image intact.
    """
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
        if fmt == "erofs":
            mkfs_bin = shutil.which("mkfs.erofs")
            if not mkfs_bin:
                raise RuntimeError("mkfs.erofs not found: install erofs-utils to rebuild EROFS images")
            cmd = [mkfs_bin, f"-z{EROFS_COMPRESSOR}", str(tmp_path), str(src_dir)]
        else:  # ext4
            mkfs_bin = shutil.which("mkfs.ext4")
            if not mkfs_bin:
                raise RuntimeError("mkfs.ext4 not found: install e2fsprogs to rebuild ext4 images")
            # Size from the original image, grown if the tree no longer fits
            tree_size = 0
            for p in src_dir.rglob("*"):
                try:
                    tree_size += p.lstat().st_size
                except OSError:
                    pass
            new_size = max(img_path.stat().st_size, int(tree_size * 1.1) + 32 * 1024 * 1024)
            cmd = [mkfs_bin, "-F", "-d", str(src_dir), str(tmp_path),
                   str((new_size + 4095) // 4096)]

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


def rebuild_partition_images(partitions: List[str], unpacked_root: Path, img_dir: Path) -> None:
    """Rebuild every listed partition .img in img_dir from unpacked_root/<name>/ trees."""
    print(f"=== Rebuilding {len(partitions)} partition images in {img_dir} ===")
    for name in partitions:
        src_dir = unpacked_root / name
        if not src_dir.is_dir():
            raise FileNotFoundError(f"Missing unpacked tree for rebuild: {src_dir}")
        img_path = img_dir / f"{name}.img"
        if not img_path.exists():
            raise FileNotFoundError(f"Missing required partition image: {img_path}")
        print(f"Rebuilding {name}.img from {src_dir}...")
        fmt = detect_image_format(img_path)
        rebuild_partition_image(img_path, src_dir)
        print(f"  -> {img_path} ({img_path.stat().st_size // 1024 // 1024}MB, {fmt})")
    print(f"Rebuilding in {img_dir} completed.\n")


def repack_super_image(
    stock_dir: Path, port_dir: Path, output_super_img: Path
) -> None:
    """Pack extracted dynamic partitions into super.img using lpmake with Virtual A/B support.

    Stock images come from stock_dir (STOCK_PARTITIONS), port images from
    port_dir (PORT_PARTITIONS). Each partition is added twice: `<name>_a`
    with the real image and `<name>_b` as an empty (0-byte) placeholder
    in the second slot group, as stock Virtual A/B super images do.
    """
    print("=== Step 6: Packing partitions into super.img ===")

    lpmake_bin = shutil.which("lpmake") or str(TOOLS_DIR / "lpmake")

    group_a = "qti_dynamic_partitions_a"
    group_b = "qti_dynamic_partitions_b"
    partition_args = []
    total_size = 0

    for img_dir, names in ((stock_dir, STOCK_PARTITIONS), (port_dir, PORT_PARTITIONS)):
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
                f"{part_name}_a:readonly:{aligned_size}:{group_a}",
                "--image",
                f"{part_name}_a={img_path}",
                # Empty _b slot placeholder: size 0, no --image on purpose
                "--partition",
                f"{part_name}_b:readonly:0:{group_b}",
            ])

    # Calculate super device and group size with padding.
    # Both slot groups get the same size (mirrors stock layout and leaves
    # room for future OTA snapshot growth); with --virtual-ab the groups
    # may overcommit the physical super size via copy-on-write.
    padding = 64 * 1024 * 1024  # 64MB extra
    group_size = total_size + padding
    # Round super up to whole GiB like factory images / GUI tools (DNA) do:
    # lpmake takes --device size literally and never rounds by itself.
    super_size = group_size + (4 * 1024 * 1024)  # metadata header allowance
    gib = 1024 * 1024 * 1024
    super_size = ((super_size + gib - 1) // gib) * gib

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
    for img_dir, names in ((stock_dir, STOCK_PARTITIONS), (port_dir, PORT_PARTITIONS)):
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
    update-binary AND port metadata) so the ZIP flashes in TWRP/OrangeFox
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
                raise FileNotFoundError(f"Missing port META-INF file: {src}")
            shutil.copy2(src, package_dir / "META-INF/com/android" / meta_name)
        print("Port META-INF (metadata, metadata.pb) installed.")

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
        help="Debloat list to apply to the unpacked port tree: 'auto' uses the "
             "--hyper-version list, 'none' skips debloating (default: auto)",
    )
    args = parser.parse_args()
    print(f"Starting HyperOS AutoPorter Workflow (HyperOS version: {args.hyper_version}, "
          f"package: {args.package_type}, debloat: {args.debloat})...\n")

    # Step 1: Tools Setup
    setup_tools()

    # Step 2: Download & Extract Modded Apps for the selected HyperOS version
    gdrive_url, mod_dir, mod_name = MODDED_APPS[args.hyper_version]
    download_and_extract_gdrive_mod(gdrive_url, mod_dir, mod_name)

    # Step 3: Download Stock & Port Firmwares with Strict Memory Cleanups.
    # Separate output dirs: stock extras (product/system_ext) share names
    # with port partitions and would otherwise overwrite each other.
    process_firmware(STOCK_URL, "stock_duchamp",
                     STOCK_PARTITIONS + STOCK_EXTRA_PARTITIONS, EXTRACTED_STOCK_DIR)
    process_firmware(PORT_URL, "port_chagall", PORT_PARTITIONS, EXTRACTED_PORT_DIR,
                     extra_files=PORT_META_FILES, extra_dir=PORT_META_DIR)

    # Step 4: Unpack partition images for patching (stock + port)
    unpack_partitions(STOCK_PARTITIONS + STOCK_EXTRA_PARTITIONS,
                      EXTRACTED_STOCK_DIR, UNPACKED_STOCK_DIR)
    unpack_partitions(PORT_PARTITIONS, EXTRACTED_PORT_DIR, UNPACKED_PORT_DIR)

    # Step 4b: Flatten port product nesting (pangu/system -> product root) so
    # debloat paths and the rebuild see the final flat layout.
    flatten_pangu_system(UNPACKED_PORT_DIR / "product")

    # Step 4c: Copy stock donor blobs into the port tree (before debloat and
    # rebuild bake the trees into images)
    apply_donor_files(UNPACKED_STOCK_DIR, UNPACKED_PORT_DIR)

    # Step 4d: Debloat the unpacked port tree (before the rebuild bakes it in)
    debloat_version = args.hyper_version if args.debloat == "auto" else args.debloat
    if debloat_version == "none":
        print("Debloat skipped (--debloat none).\n")
    else:
        apply_debloat(UNPACKED_PORT_DIR, debloat_version)

    # Step 4e: Smali-patch framework.jar (signature checks -> XdConfig).
    # Extend with (miui-services.jar, services.jar) calls when their rules land.
    patch_jar_smali(
        UNPACKED_PORT_DIR / "system" / "system" / "framework" / "framework.jar",
        "framework", FRAMEWORK_METHOD_PATCHES, FRAMEWORK_INSERT_PATCHES,
        BASE_DIR / "smali_work" / "framework",
    )

    # Step 5: Rebuild partition images from (patched) unpacked trees.
    # NOTE: stock product/system_ext are donors only (files are copied out of
    # them into unpacked_port later) — never rebuilt, never packed into super.
    rebuild_partition_images(PORT_PARTITIONS, UNPACKED_PORT_DIR, EXTRACTED_PORT_DIR)
    rebuild_partition_images(STOCK_PARTITIONS, UNPACKED_STOCK_DIR, EXTRACTED_STOCK_DIR)

    # Step 5b: Drop unpacked trees — the rebuild is done and nothing below
    # uses them; lpmake needs ~super_size bytes free right after this.
    for unpacked_dir in (UNPACKED_STOCK_DIR, UNPACKED_PORT_DIR):
        if unpacked_dir.exists():
            print(f"Removing {unpacked_dir} to free disk space...")
            shutil.rmtree(unpacked_dir)

    # Step 6: Repack partitions into super.img
    super_output = BASE_DIR / "super.img"
    repack_super_image(EXTRACTED_STOCK_DIR, EXTRACTED_PORT_DIR, super_output)

    # Step 7: Assemble the final flashable package (template + super chunks,
    # with or without META-INF depending on package type)
    package_dir = assemble_package(super_output, PORT_META_DIR,
                                   package_type=args.package_type)

    # Step 8: Pack it into a ZIP (max compression). The name marks
    # fastboot-only builds; the universal ZIP is recovery-flashable.
    zip_suffix = "" if args.package_type == "universal" else f"-{args.package_type}"
    create_recovery_zip(package_dir,
                        BASE_DIR / f"HyperOS-port-duchamp-{args.hyper_version}{zip_suffix}.zip")

    print("HyperOS AutoPorter completed successfully!")


if __name__ == "__main__":
    main()
