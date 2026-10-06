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
import tempfile
import zipfile
import subprocess
from collections import Counter
from pathlib import Path
from typing import List

import requests
from tqdm import tqdm

# Directory definitions
BASE_DIR = Path(__file__).parent.resolve()
TOOLS_DIR = BASE_DIR / "tools"
MODDED_HOS3_DIR = BASE_DIR / "moddedapps_hos3"
MODDED_HOS4_DIR = BASE_DIR / "moddedapps_hos4"
MODDED_HOS4_GL_DIR = BASE_DIR / "moddedapps_hos4_gl"
EXTRACTED_STOCK_DIR = BASE_DIR / "extracted_stock"
EXTRACTED_PORT_DIR = BASE_DIR / "extracted_port"
UNPACKED_STOCK_DIR = BASE_DIR / "unpacked_stock"
UNPACKED_PORT_DIR = BASE_DIR / "unpacked_port"
PACKAGE_DIR = BASE_DIR / "package"
PORT_META_DIR = BASE_DIR / "port_meta"

# Supported devices. Everything device-specific lives here (add a record
# per phone — stock URL, fingerprint, template prefix, ...); the only
# device today is duchamp.
DEVICES = {
    "duchamp": {
        "template_prefix": "duchamp_template",
        "fingerprint": ("POCO/duchamp_global/duchamp:16/BP2A.250605.031.A3/"
                        "OS3.0.9.0.WNLMIXM:user/release-keys"),
    },
}


def template_dir_for(device: str, variant: str) -> Path:
    """Flash template dir for a device + build variant (base -> nonfenrir,
    fenrir -> fenrir)."""
    suffix = "fenrir" if variant == "fenrir" else "nonfenrir"
    return BASE_DIR / f"{DEVICES[device]['template_prefix']}_{suffix}"

# Download URLs
STOCK_URL = (
    "https://bkt-sgp-miui-ota-update-alisgp.oss-ap-southeast-1.aliyuncs.com/"
    "OS3.0.304.0.WNLCNXM/duchamp-ota_full-OS3.0.304.0.WNLCNXM-user-16.0-5dc5bd9579.zip"
)
PORT_URL = (
    "https://bkt-sgp-miui-ota-update-alisgp.oss-ap-southeast-1.aliyuncs.com/"
    "OS4.0.0.5.XPSMIXM/warhol_global-ota_full-OS4.0.0.5.XPSMIXM-user-17.0-1c96a82e5f.zip"
)

HOS3_MOD_URL = (
    "https://github.com/wectazz/HyperOS-AutoPorter-Python/releases/download/"
    "modded-apps/moddedapps_hos3.zip"
)
HOS4_MOD_URL = (
    "https://github.com/wectazz/HyperOS-AutoPorter-Python/releases/download/"
    "modded-apps/moddedapps_hos4.zip"
)
HOS4_GL_MOD_URL = (
    "https://github.com/wectazz/HyperOS-AutoPorter-Python/releases/download/"
    "modded-apps/moddedapps_hos4_gl.zip"
)

# Modded apps sets per HyperOS version: (download_url, output_dir, archive_name).
# Hosted as release assets on GitHub (direct links, no auth, no quotas).
MODDED_APPS = {
    "hos3": (HOS3_MOD_URL, MODDED_HOS3_DIR, "moddedapps_hos3"),
    "hos4": (HOS4_MOD_URL, MODDED_HOS4_DIR, "moddedapps_hos4"),
    "hos4_gl": (HOS4_GL_MOD_URL, MODDED_HOS4_GL_DIR, "moddedapps_hos4_gl"),
}


def select_modded_apps(hyper_version: str, region: str) -> tuple:
    """Pick the modded-apps set for a HyperOS version + firmware region:
    global hos4 takes the hos4_gl set, everything else the version set.
    A global firmware on a version without a gl set (hos3) falls back to
    the version set with a warning."""
    if hyper_version == "hos4" and region != "CN":
        print("Global firmware: using moddedapps_hos4_gl set")
        return MODDED_APPS["hos4_gl"]
    if hyper_version != "hos4" and region != "CN":
        print(f"  [warn] no global mod set for {hyper_version}, "
              f"using {hyper_version} set")
    return MODDED_APPS[hyper_version]


# Firmware region codes: 2 letters before the trailing XM in the OS version
# (e.g. OS3.0.304.0.WNLCNXM -> CN, OS4.0.6.0.XPSEUXM -> EU). CN = China,
# anything else (MI/EU/RU/ID/...) = global. Matched against the OTA URL
# or file name alike.
REGION_VERSION_RE = re.compile(r"OS\d[\d.]*\.[A-Z]*([A-Z]{2})XM")


def port_codename_candidates(url: str) -> list:
    """Device codename candidates from an OTA URL/filename: the full head
    before -ota (warhol_global / chagall), then the short token before _
    (warhol / chagall). CN names carry no _global part (both coincide)."""
    base = url.rsplit("/", 1)[-1]
    head = base.split("-ota")[0]
    cands = []
    for cand in (head, head.split("_")[0]):
        if cand and cand not in cands:
            cands.append(cand)
    return cands


def detect_region_code(source: str) -> str:
    """Return the 2-letter firmware region code from an OTA URL/filename.
    Unparseable sources fall back to CN (status quo) with a warning."""
    m = REGION_VERSION_RE.search(source)
    if not m:
        print(f"  [warn] cannot detect region in {source}, assume CN")
        return "CN"
    return m.group(1)
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

# Unpacked as a donor/mod source only (mi_ext content is relocated into
# product/ by the tweaks above) — never rebuilt, never packed into super.
SUPER_EXCLUDE = {"mi_ext"}

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

# mi_ext tweaks (step 4c3, both modes: mi_ext is the port's in port mode,
# the stock's in mod mode). build.prop key edits + moves of uninstall blobs
# from the nested mi_ext/product/ into the real product partition.
MI_EXT_BUILD_PROP = "mi_ext/etc/build.prop"
MI_EXT_MOD_DEVICE = "duchamp"
# build.prop keys dropped from mi_ext (matched by key, any value).
MI_EXT_DROP_PROP_KEYS = [
    "ro.mi.xms.version.incremental",
    "ro.mi.os.custfeatureresolve",
    "ro.mi.os.version.beta",
    "ro.vendor.build.ab_ota_partitions",
]
# Set to 3 when the key exists ("if possible" — never added when absent).
MI_EXT_RADIO_5G_KEY = "ro.vendor.radio.5g"
# "TengeOS | " is prepended to its value (e.g. OS4.0.0.12.XPTCNXM ->
# "TengeOS | OS4.0.0.12.XPTCNXM"); already-prefixed values are left alone.
MI_EXT_VERSION_INCR_KEY = "ro.mi.os.version.incremental"
MI_EXT_VERSION_PREFIX = "TengeOS | "
# Moved out of mi_ext/etc/build.prop into product/etc/build.prop.
MI_EXT_UNINSTALL_FLAG = "ro.miui.support.system.app.uninstall.v2"
# (mi_ext/product/... source, product/... dest, hyper-version gate or None).
# NOTE: the on-device name is platform-miui-uninstall.xml.
MI_EXT_PRODUCT_MOVES = [
    ("mi_ext/product/etc/permissions/platform-miui-uninstall.xml",
     "product/etc/permissions/platform-miui-uninstall.xml", None),
    ("mi_ext/product/etc/permissions/rustruntime_cfg_v3_v5.xml",
     "product/etc/permissions/rustruntime_cfg_v3_v5.xml", "hos4"),
    ("mi_ext/product/framework/miui-uninstall-empty.jar",
     "product/framework/miui-uninstall-empty.jar", None),
]
# Nested dirs dropped from the mi_ext tree (never baked into mi_ext.img).
MI_EXT_DROP_DIRS = ["mi_ext/system", "mi_ext/system_ext", "mi_ext/product/app"]
# GMS permission XML removed from product on CN firmwares only (both modes,
# not debloat-gated; global firmwares keep it).
PRODUCT_GMS_PERMISSION = "product/etc/permissions/cn.google.services.xml"
# Global firmwares only: named entries moved from mi_ext/product/* into
# product/* ((mi_ext source dir, product dest dir, [names]) — files are
# moved, dirs merged recursively). CN firmwares keep MI_EXT_PRODUCT_MOVES.
MI_EXT_GLOBAL_DIR_MOVES = [
    ("mi_ext/product/app", "product/app",
     ["Gemini_arm64", "IFAAService", "SoterService", "XiaomiInCallUI"]),
    ("mi_ext/product/data-app", "product/data-app",
     ["GlobalWPSLITE", "MiuiCalendarGlobal", "MIUICompassGlobal",
      "XMRemoteController"]),
    ("mi_ext/product/priv-app", "product/priv-app",
     ["AndroidSystemIntelligence_Features_arm64", "CotaService",
      "CrossDeviceServices", "PrivateComputeServices_arm64",
      "SearchSelector"]),
    ("mi_ext/product/etc", "product/etc",
     ["ecc_list.xml", "vendor_miui.xml", "miext_removable_apk_info.xml",
      "default-permissions", "permissions", "sysconfig", "cust_features"]),
    ("mi_ext/product", "product",
     ["framework", "opcust", "overlay"]),
]
# Removed from product/overlay after the mi_ext overlay move (global only).
PRODUCT_TELEPHONY_OVERLAY = "product/overlay/MiuiTelephonyResCustOverlay.apk"

# device_features patch (step 4c5, both modes, on patch_root): applies the
# duchamp_mod.xml tweaks to product/etc/device_features/duchamp.xml.
# support_aod_fullscreen follows --aod-fullscreen (yaml choice true/false),
# everything else is fixed.
DEVICE_FEATURES_XML = "product/etc/device_features/duchamp.xml"

# Vibrator fix for hos3->hos4 ports (step 4c6 on the stock tree + services.jar
# rule below, port mode only): duchamp's vibrator HAL/service is published
# as /vibratorfeature, the hos4 tree expects /default.
VIBRATOR_XML = ("odm/etc/vintf/manifest/"
                "vendor.xiaomi.hardware.vibratorfeature.service.xml")
VIBRATOR_XML_OLD = "/vibratorfeature"
VIBRATOR_XML_NEW = "/default"
VIBRATOR_BIN = "odm/bin/hw/vendor.xiaomi.hardware.vibratorfeature.service"
VIBRATOR_BIN_OLD = b"/vibratorfeature\x00"
VIBRATOR_BIN_NEW = b"/default\x00"
# Smali sequence replacement in VibratorManagerServiceStub$Holder (port mode
# services.jar): MiuiStubUtil.getImpl lookup -> direct instantiation.
# NOTE: exact baksmali formatting — the vendored baksmali separates every
# instruction with a blank line, so multi-line blocks must include them;
# unmatched files only warn.
VIBRATOR_SMALI_OLD = (
    "    const-class v0, Lcom/android/server/vibrator/VibratorManagerServiceStub;\n"
    "\n"
    "    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;\n"
    "\n"
    "    move-result-object v0\n"
    "\n"
    "    check-cast v0, Lcom/android/server/vibrator/VibratorManagerServiceStub;\n"
)
VIBRATOR_SMALI_NEW = (
    "    new-instance v0, Lcom/android/server/vibrator/VibratorManagerServiceStub;\n"
    "\n"
    "    invoke-direct {v0}, Lcom/android/server/vibrator/VibratorManagerServiceStub;-><init>()V\n"
)
SERVICES_VIBRATOR_REPLACE_PATCHES = [
    (["VibratorManagerServiceStub$Holder.smali"],
     VIBRATOR_SMALI_OLD, VIBRATOR_SMALI_NEW),
]

# Extended keyboard (Baidu -> Gboard), always applied in both modes (step
# 4f2 jars + step 4g2 APKs). Both the dotted form (const-string component
# names, proven in Settings.apk) and the slashed form (type descriptors).
BAIDU_PKG_DOTTED = "com.baidu.input_mi"
GBOARD_PKG_DOTTED = "com.google.android.inputmethod.latin"
BAIDU_PKG_SLASHED = "com/baidu/input_mi"
GBOARD_PKG_SLASHED = "com/google/android/inputmethod/latin"
# Force-enable IME bottom support: const/4 v0, 0x1 right after the getInt
# move-result (same blank-line formatting note as the vibrator blocks).
FUNCTION_SELECT_OLD = (
    "    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I\n"
    "\n"
    "    move-result v0\n"
)
FUNCTION_SELECT_NEW = (
    "    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I\n"
    "\n"
    "    move-result v0\n"
    "    const/4 v0, 0x1\n"
)
# DRM broadcast removal in ActivityManagerServiceImpl (always, both modes):
# the 4-line DrmBroadcast sequence is deleted outright (replaced with "").
# Same blank-line-exact block style as the vibrator/function-select rules.
DRM_BROADCAST_OLD = (
    "    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mContext:Landroid/content/Context;\n"
    "\n"
    "    invoke-static {v4}, Lmiui/drm/DrmBroadcast;->getInstance(Landroid/content/Context;)Lmiui/drm/DrmBroadcast;\n"
    "\n"
    "    move-result-object v4\n"
    "\n"
    "    invoke-virtual {v4}, Lmiui/drm/DrmBroadcast;->broadcast()V\n"
)
MIUI_SERVICES_DRM_REPLACE_PATCHES = [
    (["ActivityManagerServiceImpl.smali"], DRM_BROADCAST_OLD, ""),
]
# Fullscreen-AOD catch patch (step 4f, miui-services.jar only, gated by
# --aod-fullscreen like the duchamp.xml flag — NOT dsv-gated, it's
# functional). Tuples: (target basenames, previous exception, anchor
# exception, new exception). After every `.catch <anchor>` whose previous
# .catch line is `<prev>` with the same try range + handler, a
# `.catch <new>` with that same range + handler is inserted (same indent).
# Try/catch labels are captured from the file itself (e.g. try_start_3f /
# catch_49), so hos3/hos4 numbering differences don't matter. The prev-line
# guard keeps unrelated SecurityException catches elsewhere untouched;
# "*.smali" scans every decompiled dex dir since the owning class isn't
# pinned. Idempotent: an already-present identical line is not duplicated.
MIUI_SERVICES_AOD_CATCH_PATCHES = [
    (["*.smali"], "Landroid/os/RemoteException;",
     "Ljava/lang/SecurityException;", "Ljava/util/NoSuchElementException;"),
]
# (apk/jar-relative rules built per target, basenames + both pkg forms).
MIUIFREQUENTPHRASE_APK = "product/app/MIUIFrequentPhrase/MIUIFrequentPhrase.apk"
SETTINGS_APK = "system_ext/priv-app/Settings/Settings.apk"
# Provision.apk Poco gate (always, both modes): isPocoDevice()Z -> return
# false (const/4 v0 + return v0, original registers kept).
PROVISION_APK = "system_ext/priv-app/Provision/Provision.apk"
PROVISION_METHOD_PATCHES = [
    (["provision/Utils.smali"], ["isPocoDevice("], "keep",
     ["const/4 v0, 0x0", "return v0"]),
]
# PowerKeeper.apk thermal/display neutering (always, both modes):
# getDisplayCtrlCode()I -> return 0; setScreenEffect(+Internal) -> void.
POWERKEEPER_APK = "system_ext/app/PowerKeeper/PowerKeeper.apk"
POWERKEEPER_METHOD_PATCHES = [
    (["feedbackcontrol/ThermalManager.smali"], ["getDisplayCtrlCode("], "keep",
     ["const/4 p0, 0x0", "return p0"]),
    (["statemachine/DisplayFrameSetting.smali"],
     ["setScreenEffect(Ljava/lang/String;II)V",
      "setScreenEffectInternal(ILjava/lang/String;)V"], "keep", None),
]
# MIUI dialer (global firmwares only — CN ships it already; gated by
# --dialer). EU firmwares carry no dialer in mi_ext, so the committed
# dialer_gl/ set is used; other global regions move the apps from the
# port/stock mi_ext instead. Either way GmsConfigOverlayComms.apk gets
# its Google dialer/contacts/messages strings repointed at the MIUI apps.
DIALER_GL_DIR = BASE_DIR / "dialer_gl"
DIALER_GL_APPS = ["InCallUI", "MIUIContactsTGlobal", "MiuiMmsGlobal"]
DIALER_PRIV_APP = "product/priv-app"
DIALER_MI_EXT_PRIV_APP = "mi_ext/product/priv-app"
GMS_OVERLAY_APK = "product/overlay/GmsConfigOverlayComms.apk"
GMS_DIALER_RES_PATCHES = [
    ("strings.xml",
     r"com\.google\.android\.dialer", "com.android.contacts"),
    ("strings.xml",
     r"com\.google\.android\.contacts", "com.android.contacts"),
    ("strings.xml",
     r"com\.google\.android\.apps\.messaging", "com.android.mms"),
]
# DevicesOverlay.apk resource patch (step 4g3, always, both modes):
# status_bar_padding_top 14.0px -> 25.0px in any decoded xml carrying it
# (the value lives in dimen-port variants, not plain dimen.xml, so the glob
# is deliberately broad — the tag+value regex itself is the guard).
# (glob matched against every decoded file name, pattern is a regex —
# the dimen line indent may vary, so only the tag+value is anchored).
DEVICE_OVERLAY_APK = "product/overlay/DevicesOverlay.apk"
DEVICE_OVERLAY_RES_PATCHES = [
    ("*.xml",
     r'(<dimen name="status_bar_padding_top">)14\.0px(</dimen>)',
     r"\g<1>25.0px\g<2>"),
]
# Settings.apk .array-data replacements (step 4g2, always, both modes).
# Old blocks are matched by their 16 float values (as ints — robust to the
# декомпилер's :array_NNN label numbering, which shifts between builds),
# new blocks repeat a 4-value pattern x4. Hex without 0x prefix, lowercase.
SETTINGS_ARRAY_GROUP1_OLD = [
    ("3e4ccccd", "3d75c28f", "3f6147ae", "3ecccccd",
     "3e99999a", "3e0f5c29", "3f0ccccd", "3f000000",
     "0", "3f23d70a", "3f75c28f", "3f000000",
     "3de147ae", "3e23d70a", "3f547ae1", "3ecccccd"),
    ("3d8f5c29", "3e19999a", "3f4a3d71", "3f000000",
     "3f1eb852", "3e570a3d", "3f2b851f", "3f000000",
     "3d75c28f", "3e800000", "3f570a3d", "3f000000",
     "0", "3e4ccccd", "3f47ae14", "3f000000"),
    ("3f147ae1", "3e99999a", "3f3d70a4", "3ecccccd",
     "3e8a3d71", "3e3851ec", "3f19999a", "3f000000",
     "3f28f5c3", "3e851eb8", "3f1eb852", "3f000000",
     "3df5c28f", "3e23d70a", "3f333333", "3f19999a"),
]
SETTINGS_ARRAY_GROUP1_NEW = (
    ("3d4ccccd", "0.05f"), ("3e4ccccd", "0.2f"),
    ("3dcccccd", "0.1f"), ("3f800000", "1.0f"),
) * 4
SETTINGS_ARRAY_GROUP2_OLD = [
    ("3f800000", "3f666666", "3f70a3d7", "3f800000",
     "3f800000", "3f570a3d", "3f63d70a", "3f800000",
     "3f7851ec", "3f3ae148", "3f51eb85", "3f800000",
     "3f23d70a", "3f266666", "3f7ae148", "3f800000"),
    ("3f147ae1", "3f3d70a4", "3f800000", "3f800000",
     "3f800000", "3f666666", "3f6e147b", "3f800000",
     "3f3d70a4", "3f428f5c", "3f800000", "3f800000",
     "3f7851ec", "3f451eb8", "3f570a3d", "3f800000"),
    ("3f7ae148", "3f5c28f6", "3f666666", "3f800000",
     "3f19999a", "3f3ae148", "3f7ae148", "3f800000",
     "3f6b851f", "3f6e147b", "3f800000", "3f800000",
     "3f0f5c29", "3f30a3d7", "3f800000", "3f800000"),
]
SETTINGS_ARRAY_GROUP2_NEW = (
    ("3f333333", "0.7f"), ("3f4ccccd", "0.8f"),
    ("3f2e147b", "0.68f"), ("3f4ccccd", "0.8f"),
) * 4
# (target basenames, old values, new (hex, comment) items). "*.smali" scans
# every decoded dex dir since the owning class isn't pinned — the 16-value
# match itself is the guard (accidental collisions are ~impossible).
SETTINGS_ARRAY_PATCHES = (
    [(["*.smali"], old, SETTINGS_ARRAY_GROUP1_NEW)
     for old in SETTINGS_ARRAY_GROUP1_OLD]
    + [(["*.smali"], old, SETTINGS_ARRAY_GROUP2_NEW)
       for old in SETTINGS_ARRAY_GROUP2_OLD]
)
# Settings.apk notification-icon-count extension (always, both modes):
# notification_icon_counts entries 0,1,3 -> 0,1,3,3,3 and values 0,1,3 ->
# 0,1,3,5,7, plus the setupShowNotificationIconCount()V smali widening
# (registers -> 8, extra consts, 5-elem filled-new-array) to match.
NOTIF_ICON_ENTRIES_ARRAY = "notification_icon_counts_entries"
NOTIF_ICON_ENTRIES_ITEM = "<item>@string/display_notification_icon_3</item>"
NOTIF_ICON_ENTRIES_WANT = 3
NOTIF_ICON_VALUES_ARRAY = "notification_icon_counts_values"
NOTIF_ICON_VALUES_ADD = ["5", "7"]
# (target basenames, func). "*.smali" scans every decoded dex dir since the
# owning class (IconDisplayCustomizationSettings) isn't pinned — the method
# name itself is the guard.
NOTIF_COUNT_METHOD_FRAG = "setupShowNotificationIconCount("

KASHI_PRESENTER_OLD = (
    '.method private getLineNum()I\n'
    '    .locals 3\n'
    '\n'
    '    .line 153\n'
    '    iget-object v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;\n'
    '\n'
    '    invoke-static {v0}, Lcom/android/settings/display/LargeFontUtils;->isLargeFontLevel(Landroid/content/Context;)Z\n'
    '\n'
    '    move-result v0\n'
    '\n'
    '    const/4 v1, 0x1\n'
    '\n'
    '    if-eqz v0, :cond_0\n'
    '\n'
    '    return v1\n'
    '\n'
    '    .line 154\n'
    '    :cond_0\n'
    '    iget-boolean v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->isUseMiui15CardStyle:Z\n'
    '\n'
    '    const/4 v2, 0x2\n'
    '\n'
    '    if-eqz v0, :cond_2\n'
    '\n'
    '    .line 155\n'
    '    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z\n'
    '\n'
    '    move-result p0\n'
    '\n'
    '    if-eqz p0, :cond_1\n'
    '\n'
    '    return v2\n'
    '\n'
    '    :cond_1\n'
    '    return v1\n'
    '\n'
    '    .line 157\n'
    '    :cond_2\n'
    '    iget-object p0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;\n'
    '\n'
    '    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->isLandScape(Landroid/content/Context;)Z\n'
    '\n'
    '    move-result p0\n'
    '\n'
    '    if-eqz p0, :cond_3\n'
    '\n'
    '    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z\n'
    '\n'
    '    move-result p0\n'
    '\n'
    '    if-eqz p0, :cond_3\n'
    '\n'
    '    const/4 p0, 0x3\n'
    '\n'
    '    return p0\n'
    '\n'
    '    :cond_3\n'
    '    return v2\n'
    '.end method\n'
)
KASHI_PRESENTER_NEW = (
    '.method private getLineNum()I\n'
    '    .locals 2\n'
    '\n'
    '    iget-boolean v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->isUseMiui15CardStyle:Z\n'
    '\n'
    '    const/4 v1, 0x2\n'
    '\n'
    '    if-eqz v0, :cond_0\n'
    '\n'
    '    return v1\n'
    '\n'
    '    :cond_0\n'
    '    iget-object p0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter;->mContext:Landroid/content/Context;\n'
    '\n'
    '    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->isLandScape(Landroid/content/Context;)Z\n'
    '\n'
    '    move-result p0\n'
    '\n'
    '    if-eqz p0, :cond_1\n'
    '\n'
    '    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z\n'
    '\n'
    '    move-result p0\n'
    '\n'
    '    if-eqz p0, :cond_1\n'
    '\n'
    '    const/4 v1, 0x3\n'
    '\n'
    '    :cond_1\n'
    '    return v1\n'
    '.end method'
)

# Settings.apk kashi "About phone" page merge (always, both modes — the
# reference is the hand-patched warhol Settings): 17 committed files under
# kashi_settings/ (10 smali into the classes12 dex, 6 new res incl. 2 PNGs,
# miui_version_card.xml as a full replacement; public.xml is deliberately
# NOT carried — the rebuild reassigns IDs), wiring edits in 3 device cards
# + DeviceBasicInfoPresenter.getLineNum() + MiuiSettings ALPHA swaps +
# res appends. Validated against the warhol base only: PORT_URL must be
# that firmware, otherwise anchors warn-skip and the merge must be
# re-diffed. Matching resource IDs in the copied smali are proven only by
# the on-device About-page render, never by the build going green.
KASHI_DIR = BASE_DIR / "kashi_settings"
# Basenames that may legitimately appear in the rebuilt APK (new kashi
# resources — layouts/drawables stay individual entries, PNGs too);
# anything else in the entry-set diff still fails fast.
KASHI_EXPECTED_NEW_ENTRIES = frozenset({
    "version_card_img_dark.png", "version_card_img_light.png",
    "device_info_item_kashi.xml", "storage_info_item_kashi.xml",
    "ic_device_name_info.xml", "storage_progress_drawable.xml",
})
# Literal exact-once smali block replaces for the kashi wiring:
# (target basenames, old, new). Applied when old occurs exactly once;
# skipped silently when already applied (new present, old absent);
# anything else warns (usually a firmware drifted from the reference).
KASHI_CARD_REPLACE = [
    (["MiuiVersionCard.smali"],
     "    invoke-virtual {p0}, Lcom/android/settings/device/MiuiVersionCard;->refreshVersionName()V\n"
     "\n"
     "    .line 102\n",
     "    invoke-virtual {p0}, Lcom/android/settings/device/MiuiVersionCard;->refreshVersionName()V\n"
     "\n"
     "    invoke-static {p0}, Lcom/android/settings/kashi/Utils;->setVersionCardBgElement(Lcom/android/settings/device/MiuiVersionCard;)V\n"
     "\n"
     "    .line 102\n"),
    (["MiuiVersionCard.smali"],
     "    invoke-static {}, Lcom/android/settings/MiuiUtils;->isLiteOrLowDevice()Z\n"
     "\n"
     "    move-result v0\n"
     "\n"
     "    if-nez v0, :cond_2\n",
     "    invoke-static {}, Lcom/android/settings/MiuiUtils;->isLiteOrLowDevice()Z\n"
     "\n"
     "    move-result v0\n"
     "\n"
     "    const/4 v0, 0x0\n"
     "\n"
     "    if-nez v0, :cond_2\n"),
    (["MiuiMemoryCard.smali"],
     "    const/4 v2, 0x1\n"
     "\n"
     "    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;\n",
     "    const/4 v2, 0x1\n"
     "\n"
     "    invoke-static {p0}, Lcom/android/settings/kashi/Utils;->getStorageLayout(Landroid/widget/FrameLayout;)I\n"
     "\n"
     "    move-result v1\n"
     "\n"
     "    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;\n"),
    (["MiuiDeviceNameCard.smali"],
     "    const/4 v2, 0x1\n"
     "\n"
     "    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;\n",
     "    const/4 v2, 0x1\n"
     "\n"
     "    invoke-static {p0}, Lcom/android/settings/kashi/Utils;->getDeviceLayout(Landroid/widget/FrameLayout;)I\n"
     "\n"
     "    move-result v1\n"
     "\n"
     "    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;\n"),
]
# MiuiSettings ALPHA swaps (IS_INTERNATIONAL_BUILD -> IS_ALPHA_BUILD at the
# reference sites only — the other 8 occurrences in the file stay): each
# old block carries its R$id context, so same-shaped blocks for other
# preferences never match.
KASHI_ALPHA_REPLACE = [
    (["MiuiSettings.smali"],
     "    sget-boolean p2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z\n",
     "    sget-boolean p2, Lmiui/os/Build;->IS_ALPHA_BUILD:Z\n"),
    (["MiuiSettings.smali"],
     "    sget-boolean v10, Lcom/android/settings/utils/SettingsFeatures;->IS_NEED_REMOVE_THEME:Z\n"
     "\n"
     "    if-nez v10, :cond_b\n"
     "\n"
     "    sget-boolean v10, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z\n"
     "\n"
     "    if-eqz v10, :cond_b\n",
     "    sget-boolean v10, Lcom/android/settings/utils/SettingsFeatures;->IS_NEED_REMOVE_THEME:Z\n"
     "\n"
     "    if-nez v10, :cond_b\n"
     "\n"
     "    sget-boolean v10, Lmiui/os/Build;->IS_ALPHA_BUILD:Z\n"
     "\n"
     "    if-eqz v10, :cond_b\n"),
    (["MiuiSettings.smali"],
     "    sget v10, Lcom/android/settings/R$id;->wallpaper_settings:I\n"
     "\n"
     "    if-ne v9, v10, :cond_a\n"
     "\n"
     "    if-nez v3, :cond_8\n"
     "\n"
     "    .line 1051\n"
     "    sget-boolean v10, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z\n"
     "\n"
     "    if-eqz v10, :cond_8\n",
     "    sget v10, Lcom/android/settings/R$id;->wallpaper_settings:I\n"
     "\n"
     "    if-ne v9, v10, :cond_a\n"
     "\n"
     "    if-nez v3, :cond_8\n"
     "\n"
     "    .line 1051\n"
     "    sget-boolean v10, Lmiui/os/Build;->IS_ALPHA_BUILD:Z\n"
     "\n"
     "    if-eqz v10, :cond_8\n"),
    (["MiuiSettings.smali"],
     "    sget v10, Lcom/android/settings/R$id;->security_status:I\n"
     "\n"
     "    if-ne v9, v10, :cond_15\n"
     "\n"
     "    .line 1085\n"
     "    sget-boolean v10, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z\n"
     "\n"
     "    if-nez v10, :cond_14\n",
     "    sget v10, Lcom/android/settings/R$id;->security_status:I\n"
     "\n"
     "    if-ne v9, v10, :cond_15\n"
     "\n"
     "    .line 1085\n"
     "    sget-boolean v10, Lmiui/os/Build;->IS_ALPHA_BUILD:Z\n"
     "\n"
     "    if-nez v10, :cond_14\n"),
    (["MiuiSettings.smali"],
     "    sget v10, Lcom/android/settings/R$id;->privacy_protection_settings:I\n"
     "\n"
     "    if-ne v9, v10, :cond_36\n"
     "\n"
     "    .line 1206\n"
     "    sget-boolean v10, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z\n"
     "\n"
     "    if-nez v10, :cond_35\n",
     "    sget v10, Lcom/android/settings/R$id;->privacy_protection_settings:I\n"
     "\n"
     "    if-ne v9, v10, :cond_36\n"
     "\n"
     "    .line 1206\n"
     "    sget-boolean v10, Lmiui/os/Build;->IS_ALPHA_BUILD:Z\n"
     "\n"
     "    if-nez v10, :cond_35\n"),
    (["MiuiSettings.smali"],
     "    sget v10, Lcom/android/settings/R$id;->personalize_title:I\n"
     "\n"
     "    if-ne v9, v10, :cond_38\n"
     "\n"
     "    sget-boolean v10, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z\n"
     "\n"
     "    if-nez v10, :cond_37\n",
     "    sget v10, Lcom/android/settings/R$id;->personalize_title:I\n"
     "\n"
     "    if-ne v9, v10, :cond_38\n"
     "\n"
     "    sget-boolean v10, Lmiui/os/Build;->IS_ALPHA_BUILD:Z\n"
     "\n"
     "    if-nez v10, :cond_37\n"),
    (["MiuiSettings.smali"],
     "    sget-boolean v10, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z\n"
     "\n"
     "    if-nez v10, :cond_44\n",
     "    sget-boolean v10, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z\n"
     "\n"
     "    const/4 v10, 0x0\n"
     "\n"
     "    if-nez v10, :cond_44\n"),
]
# Resource appends (glob, full lines incl. indent): inserted before
# </resources> when the name="..." is absent (order is irrelevant —
# aapt sorts the table, so appended position never affects IDs).
KASHI_RES_APPENDS = [
    ("values/colors.xml", [
        '    <color name="bw">#ff000000</color>',
        '    <color name="storage_progress_bg">#11000000</color>',
    ]),
    ("values-night/colors.xml", [
        '    <color name="bw">#ffffff</color>',
        '    <color name="storage_progress_bg">#33ffffff</color>',
    ]),
    ("values/ids.xml", [
        '    <id name="storage_progress_kchi" />',
        '    <id name="device_info_version_card_bg" />',
        '    <id name="device_name_in_banner" />',
    ]),
]


def _append_missing_xml_items(text: str, items) -> tuple:
    """Insert full-line XML items before </resources> when their name="..."
    is absent (order is irrelevant — aapt sorts the table, so appended
    position never affects IDs). Returns (new_text, added)."""
    if "</resources>" not in text:
        return text, 0
    have = set()
    for line in text.splitlines():
        m = re.search(r'name="([^"]+)"', line)
        if m:
            have.add(m.group(1))
    missing = [ln for ln in items
               if re.search(r'name="([^"]+)"', ln).group(1) not in have]
    if not missing:
        return text, 0
    new_text = text.replace("</resources>",
                            "\n".join(missing) + "\n</resources>")
    return new_text, len(missing)


def apply_kashi_overlay(work_root: Path, dex_dirs: list) -> None:
    """Merge the committed kashi_settings/ overlay into an apktool-decoded
    Settings tree: new smali into the classes12 dex dir (located by its
    vendor/.../misys content), new/overwritten res into res/ (public.xml
    is deliberately NOT carried — the rebuild reassigns IDs), wiring +
    ALPHA smali block replaces (exact-once or warn-skip), and res appends.
    Missing sources only warn."""
    if not KASHI_DIR.is_dir():
        print(f"  [warn] kashi overlay not found: {KASHI_DIR}, skip")
        return
    print("=== Applying kashi Settings overlay ===")
    # 1. new smali into the classes12 dex dir
    dex_target = next(
        (d for d in dex_dirs if (d / "vendor/xiaomi/hardware/misys").is_dir()),
        None)
    if dex_target is None:
        print("  [warn] classes12 dex dir not found, skip kashi smali")
    else:
        smali_src = KASHI_DIR / "smali_classes12"
        copied = 0
        for src in sorted(smali_src.rglob("*.smali")):
            dest = dex_target / src.relative_to(smali_src)
            dest.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(src, dest)
            copied += 1
        print(f"  copied {copied} kashi smali files into {dex_target.name}/")
    # 2. new/overwritten res into res/ (miui_version_card.xml included:
    # full replacement rides the same overwrite copy)
    res_root = work_root / "res"
    if not res_root.is_dir():
        print("  [warn] decoded res/ not found, skip kashi res")
        res_root = None
    else:
        res_src = KASHI_DIR / "res"
        copied = 0
        for src in sorted(res_src.rglob("*")):
            if src.is_dir() or src.is_symlink() or not src.is_file():
                continue
            dest = res_root / src.relative_to(res_src)
            dest.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(src, dest)
            copied += 1
        print(f"  copied {copied} kashi res files into res/")
    # 3. wiring + ALPHA + Presenter smali block replaces (exact-once).
    for basenames, old, new in KASHI_CARD_REPLACE + KASHI_ALPHA_REPLACE + [
            (["DeviceBasicInfoPresenter.smali"],
             KASHI_PRESENTER_OLD, KASHI_PRESENTER_NEW)]:
        for base_name in basenames:
            found = [p for d in dex_dirs for p in d.rglob(base_name)]
            if not found:
                print(f"  [warn] {base_name} not found in any dex")
                continue
            for path in found:
                text = path.read_text()
                if old not in text and new in text:
                    continue  # already applied
                if text.count(old) != 1:
                    print(f"  [warn] kashi anchor x{text.count(old)} in "
                          f"{path.relative_to(work_root)}, skip")
                    continue
                path.write_text(text.replace(old, new))
                print(f"  patched {path.name}: kashi block")
    # 4. res appends (colors/night-colors/ids)
    if res_root is not None:
        for glob, items in KASHI_RES_APPENDS:
            total = 0
            for path in sorted(work_root.rglob(glob)):
                if not path.is_file() or path.is_symlink():
                    continue
                try:
                    text = path.read_text()
                except (UnicodeDecodeError, OSError):
                    continue
                new_text, added = _append_missing_xml_items(text, items)
                if not added:
                    continue
                path.write_text(new_text)
                print(f"  patched {path.relative_to(work_root)}: +{added} res item(s)")
                total += added
            if not total:
                print(f"  [warn] no res target for {glob}")
    print()

# init.rc tweak (step 4c3c, both modes, on patch_root): appended once to the
# end of system/system/etc/init/hw/init.rc (SAR-nested, like the jars and
# system build.prop). Starts animationfix on boot_completed to force the
# deviceLevelList setting.
INIT_RC = "system/system/etc/init/hw/init.rc"
INIT_RC_APPEND = [
    "on property:sys.boot_completed=1",
    "   start animationfix",
    "",
    "service animationfix /system/bin/sh -c \"settings put system deviceLevelList v:1,c:3,g:3\"",
    "    seclabel u:r:shell:s0",
    "    user root",
    "    oneshot",
    "    disabled",
]
INIT_RC_GUARD = "service animationfix"
# About-phone overlay (step 4c3b, both modes, on patch_root): committed
# about_phone_description/duchamp/<hos3|hos4>/ files copied into the build
# tree for the selected --hyper-version.
# (source rel under the version dir, dest rel under patch_root).
# COPY, not move — the overlay is repo content.
ABOUT_PHONE_DIR = BASE_DIR / "about_phone_description" / "duchamp"
ABOUT_PHONE_MOVES = [
    ("product/etc/device_info.json",
     "product/etc/device_info.json"),
    ("system/system/priv-app/HTMLViewer/HTMLViewer.apk",
     "system/system/priv-app/HTMLViewer/HTMLViewer.apk"),
]


def keyboard_replace_rules(basenames: List[str]):
    """Baidu->Gboard literal replace rules for the given smali basenames
    (dotted const-strings + slashed type descriptors)."""
    return [(list(basenames), old, new)
            for old, new in ((BAIDU_PKG_DOTTED, GBOARD_PKG_DOTTED),
                             (BAIDU_PKG_SLASHED, GBOARD_PKG_SLASHED))]


def signature_patch_lists(dsv: str) -> tuple:
    """Return the signature-verification patch lists gated by --dsv:
    (framework methods, framework inserts, miui-services methods, services
    methods). With "yes" the DSV_* constants, with "no" empty lists.
    Functional smali fixes are NOT here and always apply: secure-flag bypass
    (SERVICES_START_PATCHES, MIUI_SERVICES_START_PATCHES, SERVICES_NEW_METHODS),
    notification fix (MIUI_SERVICES_REPLACE_PATCHES) and the port vibrator
    rule (SERVICES_VIBRATOR_REPLACE_PATCHES) — DSV is disable-signature-
    verification only."""
    if dsv == "yes":
        return (FRAMEWORK_METHOD_PATCHES, FRAMEWORK_INSERT_PATCHES,
                MIUI_SERVICES_METHOD_PATCHES, SERVICES_METHOD_PATCHES)
    return ([], [], [], [])

# build.prop tweaks (step 4c4, both modes, on patch_root): density + custom
# prop blocks + locale/host normalization. Fixed paths: product props live
# in product/etc/build.prop, system props in nested system/system/build.prop
# (SAR layout, like the jars) — both trees alike.
PRODUCT_BUILD_PROP = "product/etc/build.prop"
SYSTEM_BUILD_PROP = "system/system/build.prop"
DENSITY_PROP_KEYS = ["persist.miui.density_v2", "ro.sf.lcd_density"]
PRODUCT_PROP_APPEND = [
    "ro.control_privapp_permissions=",
    "persist.sys.add_blurnoise_supported=true",
    "persist.sys.background_blur_status_default=true",
    "persist.sys.background_blur_supported=true",
    "persist.sys.background_blur_version=2",
    "ro.miui.has_handy_mode_sf=1",
    "ro.miui.support.system.app.uninstall.v2=true",
    "ro.miui.product.home=com.miui.home",
]
SYSTEM_PROP_APPEND = [
    "ro.control_privapp_permissions=",
    "ro.miui.has_gmscore=1",
    "ro.opa.eligible_device=true",
    "# Optimized & Safe Dex2oat",
    "dalvik.vm.dex2oat-filter=speed",
    "dalvik.vm.image-dex2oat-filter=speed",
    "dalvik.vm.dex2oat-threads=4",
    "dalvik.vm.boot-dex2oat-threads=4",
    "pm.dexopt.bg-dexopt=speed",
    "ro.sys.fw.bg_apps_limit=32",
    "ro.config.sdha_apps_bg_max=64",
    "ro.config.sdha_apps_bg_min=8",
    "persist.sys.props.games=true",
    "debug.graphics.game_default_frame_rate.disabled=true",
    "debug.hwui.renderer=skiavk",
]
# Computility levels (hos4/hos4_gl, either mode): written into
# product/etc/build.prop. The keys already exist in stock build.prop, so
# _apply_prop_entries() replaces them in place (no append, no dupes).
COMPUTILITY_PROPS = [
    "persist.sys.computilityV2.cpulevel=2",
    "persist.sys.computilityV2.gpulevel=2",
    "persist.sys.computilityV2.devicelevel=4",
    "persist.sys.computility.cpulevel=6",
    "persist.sys.computility.gpulevel=6",
]
COMPUTILITY_VERSIONS = ("hos4", "hos4_gl")

# Build fingerprint stamped over every ro.*.build.fingerprint key in every
# build.prop of both unpacked trees (both modes, always). Device value comes
# from DEVICES[device]["fingerprint"].
FINGERPRINT_PROP_RE = re.compile(r"^ro\.(?:.*\.)?build\.fingerprint\s*=.*$")


def apply_fingerprint(unpacked_roots: list, fingerprint: str) -> None:
    """Stamp fingerprint over every ro.*.build.fingerprint key in every
    build.prop under the given unpacked roots (in place, idempotent).
    Missing files/keys only warn."""
    print("=== Applying build fingerprint ===")
    files, stamped = 0, 0
    for root in unpacked_roots:
        if not root.is_dir():
            continue
        for prop in sorted(root.rglob("build.prop")):
            if not prop.is_file() or prop.is_symlink():
                continue
            lines = prop.read_text().splitlines()
            changed = 0
            for i, raw in enumerate(lines):
                if FINGERPRINT_PROP_RE.match(raw.strip()):
                    key = raw.strip().split("=", 1)[0].strip()
                    if lines[i].strip() != f"{key}={fingerprint}":
                        lines[i] = f"{key}={fingerprint}"
                        changed += 1
            if changed:
                prop.write_text("\n".join(lines) + "\n")
                print(f"  {prop.relative_to(root)}: fingerprint x{changed}")
                stamped += changed
            files += 1
    if not files:
        print("  [warn] no build.prop files found, skip fingerprint")
    else:
        print(f"Fingerprint done: {stamped} key(s) in {files} file(s).\n")


# vendor/etc/build.prop tweaks (stock tree — vendor exists only in stock,
# both modes): every ro.hwui.use_vulkan=* -> true, debug.renderengine.-
# backend=* -> skiavkthreaded, and the enforce line is dropped.
VENDOR_VULKAN_REPLACE = [
    ("ro.hwui.use_vulkan", "true"),
    ("debug.renderengine.backend", "skiavkthreaded"),
]
VENDOR_DROP_LINES = ["ro.control_privapp_permissions=enforce"]


def apply_vendor_build_prop(stock_root: Path) -> None:
    """Patch vendor/build.prop in the unpacked stock tree (both modes):
    Vulkan/RenderEngine values forced, the enforce privapp line dropped.
    Missing file only warns."""
    print("=== Applying vendor build.prop tweaks ===")
    prop = stock_root / "vendor" / "build.prop"
    if not prop.is_file():
        print("  [missing, skip] vendor/build.prop\n")
        return
    out: List[str] = []
    forced, dropped = 0, 0
    for raw in prop.read_text().splitlines():
        s = raw.strip()
        if s in VENDOR_DROP_LINES:
            dropped += 1
            continue
        if s and not s.startswith("#") and "=" in s:
            key, _, value = (part.strip() for part in s.partition("="))
            for fix_key, fix_value in VENDOR_VULKAN_REPLACE:
                if key == fix_key and value != fix_value:
                    indent = raw[:len(raw) - len(raw.lstrip())]
                    out.append(f"{indent}{fix_key}={fix_value}")
                    forced += 1
                    break
            else:
                out.append(raw)
                continue
            continue
        out.append(raw)
    prop.write_text("\n".join(out) + "\n")
    print(f"  vendor/build.prop: forced {forced} value(s), "
          f"dropped {dropped} line(s).\n")


# mi_ext -> product prop transfer: every key from mi_ext/etc/build.prop is
# moved (copied + deleted from mi_ext) into product/etc/build.prop, EXCEPT
# these (matched by key, value ignored). Runs on final mi_ext values.
MI_EXT_COPY_EXCLUDE = [
    "ro.vendor.build.ab_ota_partitions",
    "ro.product.build.version.incremental",
    "ro.build.version.incremental",
    "ro.vendor.miui.support_esim",
    "ro.mi.xms.version.incremental",
    "ro.mi.os.custfeatureresolve",
    "ro.mi.os.version.beta",
]


def apply_mi_ext_prop_transfer(build_root: Path) -> None:
    """Move every mi_ext/etc/build.prop key except MI_EXT_COPY_EXCLUDE into
    product/etc/build.prop (upsert, idempotent). Missing files only warn."""
    print("=== Moving mi_ext props into product ===")
    src_prop = build_root / MI_EXT_BUILD_PROP
    dest_prop = build_root / "product" / "etc" / "build.prop"
    if not src_prop.is_file():
        print(f"  [missing, skip] {MI_EXT_BUILD_PROP}\n")
        return
    if not dest_prop.is_file():
        print("  [missing, skip] product/etc/build.prop "
              "(props have nowhere to go)\n")
        return
    moved, skipped = 0, 0
    out: List[str] = []
    for raw in src_prop.read_text().splitlines():
        s = raw.strip()
        if not s or s.startswith("#") or "=" not in s:
            out.append(raw)
            continue
        key, _, value = (part.strip() for part in s.partition("="))
        if key in MI_EXT_COPY_EXCLUDE:
            out.append(raw)
            skipped += 1
            continue
        _upsert_prop(dest_prop, key, value)
        moved += 1
    # rewrite mi_ext without the moved keys (comments/blanks/excluded kept)
    src_prop.write_text("\n".join(out) + "\n")
    print(f"  moved {moved} prop(s), kept {skipped} excluded.\n")


# Extra props for the fenrir variant, appended to system/system/build.prop.
FENRIR_PROPS = [
    "ro.boot.verifiedbootstate=green",
    "vendor.boot.verifiedbootstate=green",
    "vendor.boot.vbmeta.device_state=locked",
    "ro.boot.veritymode=enforcing",
    "ro.boot.vbmeta.device_state=locked",
    "ro.boot.flash.locked=1",
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
    "product/data-app/MIpay",
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
    "product/app/facebook-appmanager",
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
    "product/priv-app/facebook-installer",
    "product/priv-app/facebook-services",
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
# Debloat for hos4 GLOBAL firmwares (warhol and friends): the CN list
# mostly misses there (different app names), so this replaces it — plus the
# version-generic tails (system_ext, kept-app oat, both warn-skip when
# absent). Paths relative to the unpacked target tree, like above.
DEBLOAT_HOS4_GLOBAL = [
    # product/app
    "product/app/AiAsstVision",
    "product/app/AnalyticsCore",
    "product/app/CatchLog",
    "product/app/Drive",
    "product/app/GlobalPackageInstaller",
    "product/app/Gmail2",
    "product/app/Maps",
    "product/app/Meet",
    "product/app/MiBugReportOS4Global",
    "product/app/MiSightServiceGlobal",
    "product/app/MITSMClientGlobal",
    "product/app/MIUISystemAppUpdater",
    "product/app/MSA-Global",
    "product/app/ThirdAppAssistantGlobal",
    "product/app/Updater",
    "product/app/facebook-appmanager",
    "product/app/Videos",
    "product/app/XMSFKeeperAll",
    "product/app/YouTube",
    "product/app/YTMusic",
    # product/data-app
    "product/data-app/MiGalleryLockScreenGlobalOs4",
    # product/priv-app
    "product/priv-app/AndroidAutoStub",
    "product/priv-app/FamilyLinkParentalControl",
    "product/priv-app/LinkToWindows",
    "product/priv-app/MIServiceGlobal",
    "product/priv-app/MIUIEsimLPA",
    "product/priv-app/MIUIMusicGlobal",
    "product/priv-app/MIUIVideoPlayer",
    "product/priv-app/PersonalSafety",
    "product/priv-app/Wellbeing",
    "product/priv-app/facebook-installer",
    "product/priv-app/facebook-services",
    # system_ext leftovers (same as CN — warn-skip when absent)
    "system_ext/app/DebugLoggerUI",
    "system_ext/app/digitalkey",
    "system_ext/app/MiSightService",
    "system_ext/app/MiuiDaemon",
    "system_ext/priv-app/VoiceCommand",
    "system_ext/priv-app/VoiceUnlock",
    # oat dirs stripped from kept apps (the app itself stays)
    "product/priv-app/MIUISecurityCenterGlobal/oat",
    "product/app/MIUISystemUIPlugin/oat",
]
# Removed for EVERY version (not part of the per-version lists).
DEBLOAT_COMMON_FILES = ["mi_ext/etc/init/init.miui.mi_ext.rc"]
# Debloat for the unpacked STOCK tree. NOTE: vendor exists only in stock
# (super takes vendor from stock, never from the port) — there is no
# unpacked_port/vendor, so vendor entries live here. Stock firmware is fixed
# (duchamp), hence not versioned.
STOCK_DEBLOAT = [
    "vendor/etc/voicecommand",
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
    drop /mi_ext mount lines (mi_ext is not packed into super, so nothing
    must try to mount it), and with decrypt_data also rename fileencryption
    -> fileencryptable (decrypted /data). AVB strips run before the rename,
    otherwise the renamed option would no longer match."""
    fstabs = sorted((stock_root / "vendor" / "etc").glob("fstab.*"))
    if not fstabs:
        print("  [warn] no vendor/etc/fstab.* found, skip fstab patching\n")
        return
    print(f"=== Patching {len(fstabs)} vendor fstab file(s), decrypt_data={decrypt_data} ===")
    for fst in fstabs:
        stripped, overlays, miext, encrypts = 0, 0, 0, 0
        out: List[str] = []
        for line in fst.read_text().splitlines(keepends=True):
            if "overlay" in line:
                overlays += 1
                continue
            fields = line.split()
            if len(fields) >= 2 and fields[1] == "/mi_ext":
                miext += 1
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
              f"overlay line(s), dropped {miext} mi_ext mount line(s), "
              f"fileencryptable x{encrypts}")
    print()

# Number of super.img.N chunks the install scripts expect (super.img.0 .. super.img.53)
SUPER_SPLIT_PARTS = 54

# lpmake metadata headroom for super packing (see repack_super_image).
# Proven minimum on tools/lpmake (android-15 line): total+983040 bytes fails
# with exit 70 "Not enough space on device", total+1MB builds cleanly —
# verified locally, incl. the real 9-partition layout.
SUPER_METADATA_RESERVE_MB = 1

# Super size stepping (DNA-style): super is rounded UP to whole steps, so
# free space remains inside the groups (for COW/OTA) instead of tight
# packing with ~0 free. E.g. images summing to 8.62GB -> 9.0GB super.
SUPER_SIZE_STEP_MB = 512

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
    for folder in [TOOLS_DIR, MODDED_HOS3_DIR, MODDED_HOS4_DIR, MODDED_HOS4_GL_DIR,
                   EXTRACTED_STOCK_DIR, EXTRACTED_PORT_DIR, UNPACKED_STOCK_DIR,
                   UNPACKED_PORT_DIR, PORT_META_DIR]:
        folder.mkdir(parents=True, exist_ok=True)

    # Add tools/ to system PATH
    os.environ["PATH"] = f"{TOOLS_DIR}:{os.environ.get('PATH', '')}"

    # Set chmod +x on binaries present in tools/
    for tool_file in sorted(TOOLS_DIR.iterdir()):
        make_executable(tool_file)
        if tool_file.is_file():
            print(f"  tool: {tool_file.name} ({tool_file.stat().st_size} bytes)")

    if hasattr(os, "geteuid"):
        euid = os.geteuid()
        print(f"Running as uid={euid} ({'root' if euid == 0 else 'non-root'})")
    # Probe the vendored erofs extractor: xattr restore (needed by the
    # contexts pipeline) only works with it, and only as root.
    fsck_probe = TOOLS_DIR / "fsck.erofs"
    if fsck_probe.is_file():
        try:
            subprocess.run([str(fsck_probe), "--help"],
                           stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
            print("Vendored fsck.erofs: runnable")
        except OSError as e:
            print(f"Vendored fsck.erofs: BROKEN ({e}), will fall back to system")
    else:
        print("Vendored fsck.erofs: MISSING (will fall back to system)")

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
        else:
            print(f"  extracted {img_path.name} WITHOUT xattrs (system {cmd[0]})")
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


def drop_oat_next_to(apk_path: Path, reason: str = "modified") -> bool:
    """Drop the stale oat/ dir next to an APK whose content just changed
    (modded-apps overlay, donor/about-phone copy-in, smali patch). The oat/
    dir holds precompiled code for the previous bytes — keeping it would
    boot stale code. No-op (False) when absent; True when dropped."""
    oat = apk_path.parent / "oat"
    if oat.is_dir() and not oat.is_symlink():
        shutil.rmtree(oat)
        print(f"  removed {oat} (stale oat next to {reason} APK)")
        return True
    return False


def apply_modded_apps(mod_dir: Path, unpacked_root: Path,
                      fallback_root: Path | None = None) -> None:
    """Overlay the modded-apps set onto an unpacked tree: each top-level
    partition dir (product/, system/, system_ext/, ...) merges recursively
    into the same-named unpacked partition, modded files replacing stock
    ones (system/ keeps its nested system/ level — both sides mirror it).
    Port mode targets the port tree, mod mode the stock tree. A partition
    dir missing in the target (e.g. vendor/, which lives only in the stock
    tree in port mode) falls back to fallback_root when given there.
    Missing partition dirs on both sides only warn."""
    print(f"=== Applying modded apps from {mod_dir} into {unpacked_root} ===")
    if not mod_dir.is_dir():
        print(f"  [warn] modded apps dir not found: {mod_dir}, skip\n")
        return

    def resolve(part_name: str) -> Path | None:
        dest = unpacked_root / part_name
        if dest.is_dir():
            return dest
        if fallback_root is not None:
            fb = fallback_root / part_name
            if fb.is_dir():
                print(f"  [fallback] {part_name}/ -> {fallback_root}")
                return fb
        return None

    applied, missing = 0, 0
    for part in sorted(mod_dir.iterdir()):
        if part.is_symlink() or not part.is_dir():
            print(f"  [warn, skip] unexpected top-level entry: {part.name}")
            missing += 1
            continue
        dest = resolve(part.name)
        if dest is None:
            print(f"  [missing, skip] no such partition in target tree: {part.name}/")
            missing += 1
            continue
        copy_tree_into(part, dest)
        applied += 1
    print(f"Modded apps done: applied {applied} partition(s), skipped {missing}.")
    # Every overlaid APK invalidates the precompiled code beside the dest:
    # drop oat/ next to each dest APK the mod set provides.
    oat_dropped = 0
    for part in sorted(mod_dir.iterdir()):
        if part.is_symlink() or not part.is_dir():
            continue
        dest_root = resolve(part.name)
        if dest_root is None:
            continue
        for apk in sorted(part.rglob("*.apk")):
            if apk.is_symlink() or not apk.is_file():
                continue
            dest_apk = dest_root / apk.relative_to(part)
            if dest_apk.is_file() or dest_apk.is_symlink():
                if drop_oat_next_to(dest_apk, "overlaid"):
                    oat_dropped += 1
    if oat_dropped:
        print(f"  dropped stale oat next to {oat_dropped} overlaid APK(s)")
    print()


def flatten_pangu_system(product_dir: Path) -> None:
    """Move <product>/pangu/system/* up into <product>/ (stock and port OTAs
    nest product content there). No-op when the nested dir is absent."""
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
    recursively (existing entries are replaced). data-app itself is kept
    as an empty dir (never removed). Runs last, right before the rebuild,
    so debloat/DSV/modded-apps results all end up in app/.
    No-op when data-app is absent."""
    src = product_dir / "data-app"
    if not src.is_dir():
        print("No product/data-app dir, skip moving into app/.\n")
        return
    print(f"=== Moving {src} into {product_dir / 'app'} ===")
    merge_tree_into(src, product_dir / "app")
    print("data-app -> app move done (data-app kept empty).\n")


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
        if dst.suffix == ".apk":
            drop_oat_next_to(dst, "donor")
        copied += 1
    for src_rel, dst_rel in DONOR_DIRS:
        src, dst = stock_root / src_rel, port_root / dst_rel
        if not src.is_dir():
            print(f"  [missing, skip] {src_rel}/")
            missing += 1
            continue
        shutil.copytree(src, dst, dirs_exist_ok=True)
        for apk in sorted(dst.rglob("*.apk")):
            if apk.is_file() and not apk.is_symlink():
                drop_oat_next_to(apk, "donor")
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
            if dst.suffix == ".apk":
                drop_oat_next_to(dst, "donor")
            copied += 1
    print(f"Donor files done: copied {copied}, missing {missing}.\n")


def move_file_preserve(src: Path, dst: Path) -> None:
    """Move one file/symlink, preserving xattrs (copy_file_preserve alone
    only copies). An existing dest is replaced (with a warning)."""
    if src.is_symlink():
        if dst.is_dir() and not dst.is_symlink():
            shutil.rmtree(dst)
        elif dst.exists() or dst.is_symlink():
            print(f"  [move] replacing {dst} with {src}")
            dst.unlink()
        dst.parent.mkdir(parents=True, exist_ok=True)
        os.symlink(os.readlink(src), dst)
        try:
            for name in os.listxattr(src, follow_symlinks=False):
                try:
                    os.setxattr(dst, name,
                                os.getxattr(src, name, follow_symlinks=False),
                                follow_symlinks=False)
                except OSError:
                    pass
        except OSError:
            pass
        src.unlink()
        return
    if dst.is_dir() and not dst.is_symlink():
        print(f"  [move] replacing {dst} with {src}")
        shutil.rmtree(dst)
    elif dst.exists() or dst.is_symlink():
        print(f"  [move] replacing {dst} with {src}")
        dst.unlink()
    dst.parent.mkdir(parents=True, exist_ok=True)
    copy_file_preserve(src, dst)
    src.unlink()


def _upsert_prop(prop_path: Path, key: str, value: str) -> None:
    """Set key=value in a build.prop file (replace in place, else append).
    Comments/blank lines are preserved; creates the file when absent."""
    lines = prop_path.read_text().splitlines() if prop_path.is_file() else []
    found = False
    for i, raw in enumerate(lines):
        s = raw.strip()
        if not s or s.startswith("#") or "=" not in s:
            continue
        if s.partition("=")[0].strip() == key:
            lines[i] = f"{key}={value}"
            found = True
    if not found:
        lines.append(f"{key}={value}")
    prop_path.parent.mkdir(parents=True, exist_ok=True)
    prop_path.write_text("\n".join(lines) + "\n")


def _patch_mi_ext_build_prop(build_root: Path, codename_cands: list) -> None:
    """Edit mi_ext/etc/build.prop: the port codename in mod_device (taken
    from the OTA filename, e.g. warhol) is replaced with duchamp (key must
    exist — never appended), drop the version/ai/ab_ota keys, force
    radio.5g=3 when present, and move the uninstall flag line into
    product/etc/build.prop. Missing file only warns."""
    src_prop = build_root / MI_EXT_BUILD_PROP
    if not src_prop.is_file():
        print(f"  [missing, skip] {MI_EXT_BUILD_PROP}")
        return
    out: List[str] = []
    dropped, flag_value, mod_device, radio, versioned = 0, None, False, False, False
    for raw in src_prop.read_text().splitlines():
        s = raw.strip()
        if not s or s.startswith("#") or "=" not in s:
            out.append(raw)
            continue
        key, _, value = (part.strip() for part in s.partition("="))
        if key in MI_EXT_DROP_PROP_KEYS:
            dropped += 1
            continue
        if key == MI_EXT_UNINSTALL_FLAG:
            flag_value = value
            dropped += 1
            continue
        if key == "ro.product.mod_device":
            new_value = value
            for cand in codename_cands:
                if cand in new_value:
                    new_value = new_value.replace(cand, MI_EXT_MOD_DEVICE)
                    break
            if new_value == value and MI_EXT_MOD_DEVICE not in value:
                print(f"  [warn] ro.product.mod_device={value} has no port "
                      f"codename, forced duchamp")
                new_value = MI_EXT_MOD_DEVICE
            out.append(f"ro.product.mod_device={new_value}")
            mod_device = True
            continue
        if key == MI_EXT_RADIO_5G_KEY:
            out.append(f"{MI_EXT_RADIO_5G_KEY}=3")
            radio = True
            continue
        if key == MI_EXT_VERSION_INCR_KEY:
            if not value.startswith(MI_EXT_VERSION_PREFIX):
                value = f"{MI_EXT_VERSION_PREFIX}{value}"
            out.append(f"{MI_EXT_VERSION_INCR_KEY}={value}")
            versioned = True
            continue
        out.append(raw)
    src_prop.write_text("\n".join(out) + "\n")
    print(f"  {MI_EXT_BUILD_PROP}: mod_device={'set' if mod_device else 'absent, skip'}, "
          f"dropped {dropped} line(s), radio.5g={'=3' if radio else 'absent, skip'}, "
          f"version.incr={'prefixed' if versioned else 'absent, skip'}")
    if flag_value is None:
        print(f"  [missing, skip] {MI_EXT_UNINSTALL_FLAG} flag (not in mi_ext build.prop)")
        return
    dest_prop = build_root / "product" / "etc" / "build.prop"
    if not dest_prop.is_file():
        print("  [missing, skip] product/etc/build.prop (flag has nowhere to go)")
        return
    _upsert_prop(dest_prop, MI_EXT_UNINSTALL_FLAG, flag_value)
    print(f"  moved {MI_EXT_UNINSTALL_FLAG}={flag_value} -> product/etc/build.prop")


def _drop_emptied_parents(src_parent: Path, stop: Path) -> None:
    """rmdir src_parent up towards stop while empty (best effort)."""
    parent = src_parent
    while parent == stop or stop in parent.parents:
        try:
            parent.rmdir()
        except OSError:
            break
        if parent == stop:
            break
        parent = parent.parent


def _move_fs_entry(build_root: Path, src_rel: str, dst_rel: str) -> bool:
    """Move one file/symlink/dir from the build tree onto its dest: files
    via move_file_preserve(), dirs merged recursively (existing dest dirs
    are merged, missing dests are plain moves). Stale oat/ next to a
    moved-in APK is dropped. Returns False (with a warning) when the
    source is absent."""
    src, dst = build_root / src_rel, build_root / dst_rel
    if src.is_symlink() or src.is_file():
        move_file_preserve(src, dst)
    elif src.is_dir() and not src.is_symlink():
        if dst.is_symlink() or (dst.exists() and not dst.is_dir()):
            dst.unlink()
        if dst.is_dir() and not dst.is_symlink():
            merge_tree_into(src, dst)
            try:
                src.rmdir()  # now empty (best effort)
            except OSError:
                pass
        else:
            dst.parent.mkdir(parents=True, exist_ok=True)
            shutil.move(str(src), str(dst))
    else:
        print(f"  [missing, skip] {src_rel}")
        return False
    print(f"  moved {src_rel} -> {dst_rel}")
    if dst.is_file() and dst.suffix == ".apk":
        drop_oat_next_to(dst, "moved")
    elif dst.is_dir():
        for apk in sorted(dst.rglob("*.apk")):
            if apk.is_file() and not apk.is_symlink():
                drop_oat_next_to(apk, "moved")
    _drop_emptied_parents(src.parent, build_root / "mi_ext" / "product")
    return True


def apply_mi_ext_global_moves(build_root: Path) -> None:
    """Global firmwares only: move mi_ext/product content (apps, configs,
    framework/opcust/overlay) into product/, then drop the telephony
    cust overlay that the moved overlays replace. Missing sources only
    warn — OTAs differ between builds."""
    print("=== Applying mi_ext global moves ===")
    moved, missing = 0, 0
    for src_dir_rel, dst_dir_rel, names in MI_EXT_GLOBAL_DIR_MOVES:
        for name in names:
            if _move_fs_entry(build_root,
                              f"{src_dir_rel}/{name}", f"{dst_dir_rel}/{name}"):
                moved += 1
            else:
                missing += 1
    tele = build_root / PRODUCT_TELEPHONY_OVERLAY
    if tele.is_file() or tele.is_symlink():
        tele.unlink()
        print(f"  removed {PRODUCT_TELEPHONY_OVERLAY}")
    else:
        print(f"  [missing, skip] {PRODUCT_TELEPHONY_OVERLAY}")
    print(f"Global moves done: moved {moved}, missing {missing}.\n")


def apply_mi_ext_tweaks(build_root: Path, hyper_version: str,
                        region: str, codename_cands: list) -> None:
    """mi_ext + product permission tweaks on the build tree (patch_root, so
    both modes): mi_ext build.prop edits, moves of uninstall blobs from the
    nested mi_ext/product/ into product/, global mi_ext/product content
    moves (global firmwares only), removal of mi_ext/system{,_ext}, and
    removal of the GMS permission XML from product (CN firmwares only).
    Missing sources only warn — OTAs differ between builds."""
    print(f"=== Applying mi_ext tweaks (region: {region}) ===")
    mi_ext = build_root / "mi_ext"
    if not mi_ext.is_dir():
        print("  [warn] no mi_ext/ in build tree, skip mi_ext tweaks")
    else:
        _patch_mi_ext_build_prop(build_root, codename_cands)
        for src_rel, dst_rel, gate in MI_EXT_PRODUCT_MOVES:
            if gate is not None and gate != hyper_version:
                print(f"  [skip] {src_rel} (needs {gate})")
                continue
            src, dst = build_root / src_rel, build_root / dst_rel
            if not (src.is_file() or src.is_symlink()):
                print(f"  [missing, skip] {src_rel}")
                continue
            move_file_preserve(src, dst)
            print(f"  moved {src_rel} -> {dst_rel}")
            # drop emptied parents up to mi_ext/product (best effort)
            _drop_emptied_parents(src.parent, build_root / "mi_ext" / "product")
        if region != "CN":
            apply_mi_ext_global_moves(build_root)
        for rel in MI_EXT_DROP_DIRS:
            target = build_root / rel
            if target.is_dir() and not target.is_symlink():
                shutil.rmtree(target)
                print(f"  removed {rel}/")
            elif target.is_symlink() or target.exists():
                target.unlink()
                print(f"  removed {rel}")
            else:
                print(f"  [missing, skip] {rel}/")
    if region == "CN":
        gms = build_root / PRODUCT_GMS_PERMISSION
        if gms.is_file() or gms.is_symlink():
            gms.unlink()
            print(f"  removed {PRODUCT_GMS_PERMISSION}")
        else:
            print(f"  [missing, skip] {PRODUCT_GMS_PERMISSION}")
    else:
        print(f"  [skip] {PRODUCT_GMS_PERMISSION} kept on global firmware")
    # Tail: move mi_ext props into product (final mi_ext values).
    apply_mi_ext_prop_transfer(build_root)


def apply_about_phone_description(build_root: Path, hyper_version: str) -> None:
    """Copy the committed about_phone_description/duchamp/<hyper_version>/
    overlay into the build tree (patch_root, both modes): device_info.json
    -> product/etc/ and HTMLViewer.apk -> system/system/priv-app/, both for
    the     selected version. Copy (not move) with xattrs/symlinks via
    copy_file_preserve(); existing dests are replaced. Stale oat/ next to a
    copied-in APK is dropped. Missing sources only warn."""
    print("=== Applying about_phone_description overlay ===")
    overlay = ABOUT_PHONE_DIR / hyper_version
    if not overlay.is_dir():
        print(f"  [warn] overlay dir not found: {overlay}, skip\n")
        return
    for src_rel, dst_rel in ABOUT_PHONE_MOVES:
        src, dst = overlay / src_rel, build_root / dst_rel
        if not (src.is_file() or src.is_symlink()):
            print(f"  [missing, skip] {src_rel}")
            continue
        dst.parent.mkdir(parents=True, exist_ok=True)
        if src.is_symlink():
            if dst.is_dir() and not dst.is_symlink():
                shutil.rmtree(dst)
            elif dst.exists() or dst.is_symlink():
                dst.unlink()
            os.symlink(os.readlink(src), dst)
            try:
                for name in os.listxattr(src, follow_symlinks=False):
                    try:
                        os.setxattr(dst, name,
                                    os.getxattr(src, name, follow_symlinks=False),
                                    follow_symlinks=False)
                    except OSError:
                        pass
            except OSError:
                pass
        else:
            if dst.is_dir() and not dst.is_symlink():
                shutil.rmtree(dst)
            elif dst.is_symlink() or dst.exists():
                dst.unlink()
            copy_file_preserve(src, dst)
        if dst.suffix == ".apk":
            drop_oat_next_to(dst, "overlaid")
        print(f"  copied {src_rel} -> {dst_rel}")
    print()


def apply_init_rc_tweak(build_root: Path) -> None:
    """Append the animationfix block once to the end of system/system/etc/
    init/hw/init.rc on the build tree (patch_root, both modes). Idempotent:
    skipped when the guard line is already present. Missing file only
    warns."""
    print("=== Applying init.rc tweak ===")
    rc = build_root / INIT_RC
    if not rc.is_file():
        print(f"  [missing, skip] {INIT_RC}\n")
        return
    text = rc.read_text()
    if INIT_RC_GUARD in text:
        print(f"  already present, skip {INIT_RC}\n")
        return
    if text and not text.endswith("\n"):
        text += "\n"
    text += "\n".join(INIT_RC_APPEND) + "\n"
    rc.write_text(text)
    print(f"  appended animationfix block to {INIT_RC}\n")


def _apply_prop_entries(prop_path: Path, entries: List[str]) -> None:
    """Upsert entries into a build.prop file, in order: key=value lines
    replace in place (first occurrence) or append at the end; comments are
    appended once (no dups on re-runs). Other lines are preserved verbatim."""
    lines = prop_path.read_text().splitlines()
    for entry in entries:
        s = entry.strip()
        if not s or s.startswith("#"):
            if s and all(s != l.strip() for l in lines):
                lines.append(s)
            continue
        key, _, value = (p.strip() for p in s.partition("="))
        for i, raw in enumerate(lines):
            t = raw.strip()
            if t and not t.startswith("#") and "=" in t \
                    and t.partition("=")[0].strip() == key:
                lines[i] = f"{key}={value}"
                break
        else:
            lines.append(f"{key}={value}")
    prop_path.write_text("\n".join(lines) + "\n")


def apply_build_prop_tweaks(build_root: Path, density: int,
                            hyper_version: str, variant: str) -> None:
    """product/system build.prop tweaks on the build tree (patch_root, both
    modes): density keys in product, custom append blocks, computility
    levels on hos4/hos4_gl (replaced in place — the keys already exist),
    fenrir verified-boot props on the fenrir variant, and locale/host
    normalization in both files. Missing files only warn."""
    print("=== Applying build.prop tweaks ===")
    product_entries = ([f"{k}={density}" for k in DENSITY_PROP_KEYS]
                       + PRODUCT_PROP_APPEND)
    if hyper_version in COMPUTILITY_VERSIONS:
        product_entries += COMPUTILITY_PROPS
        print(f"  hos4 computility levels: {len(COMPUTILITY_PROPS)} entries")
    system_entries = list(SYSTEM_PROP_APPEND)
    if variant == "fenrir":
        system_entries += FENRIR_PROPS
        print(f"  fenrir verified-boot props: {len(FENRIR_PROPS)} entries")
    jobs = [
        (PRODUCT_BUILD_PROP, product_entries),
        (SYSTEM_BUILD_PROP, system_entries),
    ]
    tail = ["ro.product.locale=en-US", "ro.build.host=wectazz"]
    for rel, entries in jobs:
        prop = build_root / rel
        if not prop.is_file():
            print(f"  [missing, skip] {rel}")
            continue
        _apply_prop_entries(prop, entries + tail)
        print(f"  {rel}: +{len(entries)} entries, locale=en-US, host=wectazz")
    print()


def _set_xml_value(lines: List[str], tag: str, name: str, value: str,
                   only_value: str = None) -> bool:
    """Set <tag name="name">value</tag> in place. With only_value, only lines
    currently holding that value are touched (leaves other occurrences —
    e.g. the already-true first aod_support_keycode_goto_dismiss — alone).
    Returns True when at least one line was rewritten."""
    pat = re.compile(rf'^(\s*<{tag} name="{re.escape(name)}">)(.*)(</{tag}>\s*)$')
    hit = False
    for i, raw in enumerate(lines):
        m = pat.match(raw)
        if m and (only_value is None or m.group(2).strip() == only_value):
            lines[i] = f"{m.group(1)}{value}{m.group(3)}"
            hit = True
    return hit


def _ensure_xml_after(lines: List[str], anchors: List[str], new_line: str) -> bool:
    """Insert new_line after the first line matching the first anchor that
    matches anything (anchors are priority-ordered fallbacks), unless a line
    with the same tag+name already exists. Returns True when inserted."""
    name_m = re.search(r'name="([^"]+)"', new_line)
    if name_m:
        key_pat = re.compile(rf'<\w+ name="{re.escape(name_m.group(1))}">')
        if any(key_pat.search(l) for l in lines):
            return False
    for anchor_pat in anchors:
        anchor = re.compile(anchor_pat)
        for i, raw in enumerate(lines):
            if anchor.search(raw):
                lines.insert(i + 1, new_line)
                return True
    return False


# Committed device_features mod reference (copied over the donor file on
# every build, both modes, any region — patch_device_features() then
# enforces the per-run choices like --aod-fullscreen on top of it).
DUCHAMP_OVERLAY_DIR = BASE_DIR / "duchamp"


def apply_device_features_overlay(build_root: Path) -> None:
    """Copy duchamp/duchamp.xml over product/etc/device_features/duchamp.xml
    (replacing the stock donor copy). Missing overlay only warns — the
    donor file is kept and patch_device_features() still applies."""
    print("=== Applying duchamp device_features overlay ===")
    src = DUCHAMP_OVERLAY_DIR / "duchamp.xml"
    dst = build_root / DEVICE_FEATURES_XML
    if not src.is_file():
        print(f"  [warn] overlay not found: {src}, keep donor file\n")
        return
    dst.parent.mkdir(parents=True, exist_ok=True)
    if dst.is_dir() and not dst.is_symlink():
        shutil.rmtree(dst)
    elif dst.exists() or dst.is_symlink():
        dst.unlink()
    shutil.copy2(src, dst)
    print(f"  copied duchamp/duchamp.xml -> {DEVICE_FEATURES_XML}\n")


def _normalize_moved_perms(root: Path) -> None:
    """chmod-only normalize (dirs 0755, files 0644, symlinks untouched) for
    repo-overlay copies like dialer_gl/ (checkouts carry arbitrary modes)."""
    for dirpath, dirnames, filenames in os.walk(root, followlinks=False):
        for name in dirnames:
            p = Path(dirpath) / name
            try:
                if stat.S_ISLNK(os.lstat(p).st_mode):
                    continue
            except OSError:
                continue
            os.chmod(p, 0o755)
        for name in filenames:
            p = Path(dirpath) / name
            try:
                if not stat.S_ISREG(os.lstat(p).st_mode):
                    continue
            except OSError:
                continue
            os.chmod(p, 0o644)


def apply_dialer(build_root: Path, region: str) -> None:
    """MIUI dialer on the build tree (patch_root, both modes): CN firmwares
    already ship it (skipped), EU firmwares take the committed dialer_gl/
    set (absent from EU mi_ext), other global regions move the apps from
    mi_ext/product/priv-app. Then GmsConfigOverlayComms.apk strings are
    repointed from Google to MIUI apps. Missing sources only warn."""
    if region == "CN":
        print("CN firmware already ships the MIUI dialer, skip dialer.\n")
        return
    if region == "EU":
        print("=== Applying dialer_gl overlay (EU mi_ext has no dialer) ===")
        if not DIALER_GL_DIR.is_dir():
            print(f"  [warn] dialer set not found: {DIALER_GL_DIR}, skip\n")
            return
        for name in DIALER_GL_APPS:
            src, dst = DIALER_GL_DIR / name, build_root / DIALER_PRIV_APP / name
            if not src.is_dir() or src.is_symlink():
                print(f"  [missing, skip] dialer_gl/{name}")
                continue
            copy_tree_into(src, dst)
            _normalize_moved_perms(dst)
            print(f"  copied dialer_gl/{name} -> {DIALER_PRIV_APP}/{name}")
            for apk in sorted(dst.rglob("*.apk")):
                if apk.is_file() and not apk.is_symlink():
                    drop_oat_next_to(apk, "dialer")
        print()
    else:
        print(f"=== Moving dialer apps from mi_ext (global {region}) ===")
        moved, missing = 0, 0
        for name in DIALER_GL_APPS:
            if _move_fs_entry(build_root,
                              f"{DIALER_MI_EXT_PRIV_APP}/{name}",
                              f"{DIALER_PRIV_APP}/{name}"):
                moved += 1
            else:
                missing += 1
        print(f"Dialer moves done: moved {moved}, missing {missing}.\n")
    patch_apk_res(
        GMS_OVERLAY_APK, "gmsdialer",
        GMS_DIALER_RES_PATCHES,
        build_root,
    )


def patch_device_features(build_root: Path, aod_fullscreen: str) -> None:
    """Apply the duchamp_mod.xml tweaks to product/etc/device_features/
    duchamp.xml on the build tree (patch_root, both modes — in port mode the
    file arrives via donors, so this runs after them). support_aod_fullscreen
    follows aod_fullscreen (yaml true/false), the rest is fixed: new
    support_aod_aon/doze/BlanksAfterDoze/notification_animate keys,
    screen_enhance/AI_display keys, keycode_goto flips,
    90Hz in fpsList, defaultFps 120. Missing file only warns; re-runs are
    idempotent (values are set, inserts are skipped when the key exists)."""
    xml = build_root / DEVICE_FEATURES_XML
    if not xml.is_file():
        print(f"  [missing, skip] {DEVICE_FEATURES_XML}\n")
        return
    print("=== Patching device_features/duchamp.xml ===")
    lines = xml.read_text().splitlines()
    log: List[str] = []

    def set_or_insert(tag, name, value, anchors, only_value=None):
        if _set_xml_value(lines, tag, name, value, only_value):
            log.append(f"set {name}={value}")
        elif _ensure_xml_after(lines, anchors,
                               f'    <{tag} name="{name}">{value}</{tag}>'):
            log.append(f"added {name}={value}")

    # AOD block (anchor: the support_aod line itself).
    set_or_insert("bool", "support_aod_fullscreen", aod_fullscreen,
                  [r'<bool name="support_aod">'])
    set_or_insert("bool", "support_aod_aon", "true",
                  [r'<bool name="support_aod_fullscreen">',
                   r'<bool name="support_aod">'])
    # Doze/AOD extras (from the duchamp/duchamp.xml mod reference).
    set_or_insert("bool", "doze_display_state_supported", "true",
                  [r'<bool name="support_aod_aon">',
                   r'<bool name="support_aod_fullscreen">',
                   r'<bool name="support_aod">'])
    set_or_insert("bool", "doze_proximity_check_before_pulse_intent", "true",
                  [r'<bool name="doze_display_state_supported">',
                   r'<bool name="support_aod_aon">',
                   r'<bool name="support_aod">'])
    set_or_insert("bool", "config_displayBlanksAfterDoze", "false",
                  [r'<bool name="doze_proximity_check_before_pulse_intent">',
                   r'<bool name="doze_display_state_supported">',
                   r'<bool name="support_aod">'])
    set_or_insert("bool", "support_aod_notification_animate", "true",
                  [r'<bool name="config_displayBlanksAfterDoze">',
                   r'<bool name="doze_proximity_check_before_pulse_intent">',
                   r'<bool name="support_aod">'])
    # Keycode-goto flips (second aod_support_keycode_goto_dismiss only: the
    # first one is already true in stock, so only false->true is touched).
    # r'$^' never matches: these keys must exist, never be created.
    set_or_insert("bool", "is_only_support_keycode_goto", "false", [r'$^'])
    set_or_insert("bool", "aod_support_keycode_goto_dismiss", "true", [r'$^'],
                  only_value="false")
    # Display block (anchor: eyecare mode line, like in the mod file).
    set_or_insert("bool", "support_screen_enhance_engine", "true",
                  [r'<integer name="default_eyecare_mode">'])
    set_or_insert("bool", "support_AI_display", "true",
                  [r'<bool name="support_screen_enhance_engine">',
                   r'<integer name="default_eyecare_mode">'])
    # 90Hz in fpsList (anchor: the 120 item of that block).
    if not any("<item>90</item>" in l for l in lines):
        in_fps, done = False, False
        for i, raw in enumerate(lines):
            if '<integer-array name="fpsList">' in raw:
                in_fps = True
            elif in_fps and "</integer-array>" in raw:
                break
            elif in_fps and "<item>120</item>" in raw:
                lines.insert(i + 1, "        <item>90</item>")
                done = True
                break
        if done:
            log.append("added fpsList 90Hz")
    # Default refresh rate.
    set_or_insert("integer", "defaultFps", "120", [r'$^'])

    xml.write_text("\n".join(lines) + "\n")
    for entry in log:
        print(f"  {DEVICE_FEATURES_XML}: {entry}")
    if not log:
        print(f"  {DEVICE_FEATURES_XML}: already patched, no changes")
    print()


def apply_vibrator_fix(stock_root: Path) -> None:
    """hos3->hos4 vibrator fix on the unpacked stock tree (port mode only —
    odm exists only in stock): /vibratorfeature -> /default in the vintf
    manifest XML, and the same replacement (NUL-padded to equal length) in
    the hw service binary. Missing sources only warn; a binary without the
    pattern is left alone (already patched or firmware differs)."""
    print("=== Applying vibrator fix (hos3->hos4) ===")
    manifest = stock_root / VIBRATOR_XML
    if not manifest.is_file():
        print(f"  [missing, skip] {VIBRATOR_XML}")
    else:
        text = manifest.read_text()
        count = text.count(VIBRATOR_XML_OLD)
        if not count:
            print(f"  [warn] no {VIBRATOR_XML_OLD} in {VIBRATOR_XML}, skip")
        else:
            manifest.write_text(text.replace(VIBRATOR_XML_OLD, VIBRATOR_XML_NEW))
            print(f"  {VIBRATOR_XML}: {count}x {VIBRATOR_XML_OLD} -> {VIBRATOR_XML_NEW}")
    service = stock_root / VIBRATOR_BIN
    if not service.is_file():
        print(f"  [missing, skip] {VIBRATOR_BIN}")
    else:
        data = bytearray(service.read_bytes())
        count = data.count(VIBRATOR_BIN_OLD)
        if count == 1:
            padded = VIBRATOR_BIN_NEW + b"\x00" * (len(VIBRATOR_BIN_OLD) - len(VIBRATOR_BIN_NEW))
            service.write_bytes(data.replace(VIBRATOR_BIN_OLD, padded))
            print(f"  {VIBRATOR_BIN}: patched 1 occurrence (NUL-padded, size kept)")
        elif not count:
            print(f"  [warn] pattern absent in {VIBRATOR_BIN} "
                  f"(already patched or firmware differs), skip")
        else:
            print(f"  [warn] {count}x pattern in {VIBRATOR_BIN} (expected 1), skip")
    print()


def _resolve_insensitive(root: Path, rel: str) -> Path:
    """Resolve rel under root, matching each path component case-sensitively
    first, then case-insensitively (OEMs shuffle capitalization like
    MIPay/MIpay between builds). Returns None when a component matches
    nothing."""
    cur = root
    for part in Path(rel).parts:
        if not cur.is_dir():
            return None
        match = cur / part
        if not (match.exists() or match.is_symlink()):
            match = None
            try:
                lowered = part.lower()
                for child in cur.iterdir():
                    if child.name.lower() == lowered:
                        match = child
                        break
            except OSError:
                return None
            if match is None:
                return None
        cur = match
    return cur


def apply_debloat_entries(unpacked_root: Path, entries: List[str], label: str) -> None:
    """Delete entries from an unpacked tree (matched case-insensitively per
    component). Missing entries only warn — OTAs differ between builds."""
    print(f"=== Applying debloat list {label} ({len(entries)} entries) ===")
    removed, missing = 0, 0
    for rel in entries:
        target = _resolve_insensitive(unpacked_root, rel)
        if target is None:
            print(f"  [missing, skip] {rel}")
            missing += 1
            continue
        if target != unpacked_root / rel:
            print(f"  [case] {rel} -> "
                  f"{target.relative_to(unpacked_root).as_posix()}")
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


def apply_debloat(unpacked_root: Path, version: str, region: str) -> None:
    """Delete the debloat list entries for a HyperOS version from the target
    unpacked tree (port tree in port mode, stock tree in mod mode), plus the
    init.miui.mi_ext.rc file, removed for every version. Hos4 global
    firmwares take DEBLOAT_HOS4_GLOBAL instead of the CN list."""
    if version == "hos4" and region != "CN":
        apply_debloat_entries(unpacked_root,
                              list(DEBLOAT_HOS4_GLOBAL) + DEBLOAT_COMMON_FILES,
                              "'hos4-global'")
    else:
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


CATCH_LINE_RX = re.compile(r"^(\s*)\.catch\s+(\S+);\s*(\{[^}]*\})\s*(:\S+)\s*$")


def insert_catch_handler(text: str, prev_exc: str, anchor_exc: str,
                         new_exc: str) -> tuple:
    """Insert `.catch <new_exc>;` after every `.catch <anchor_exc>;` line
    whose previous .catch line is `<prev_exc>;` with the same try range and
    handler (blank lines between .catch directives are skipped when looking
    back). The inserted line reuses the anchor's indent, try range and
    handler. Already-present identical lines are not duplicated. Returns
    (new_text, inserted_count)."""
    prev_exc = prev_exc.rstrip(";")
    anchor_exc = anchor_exc.rstrip(";")
    new_exc = new_exc.rstrip(";")
    lines = text.splitlines(keepends=True)
    out: List[str] = []
    count = 0
    last_catch = None  # (exc, braced range, handler) of previous .catch line
    i, n = 0, len(lines)
    while i < n:
        line = lines[i]
        m = CATCH_LINE_RX.match(line.rstrip("\n"))
        out.append(line)
        if m:
            indent, exc, braced, handler = m.groups()
            if (exc == anchor_exc and last_catch is not None
                    and last_catch[0] == prev_exc
                    and last_catch[1] == braced
                    and last_catch[2] == handler):
                # look ahead past blank lines: already patched?
                j = i + 1
                while j < n and lines[j].strip() == "":
                    j += 1
                if j < n:
                    nm = CATCH_LINE_RX.match(lines[j].rstrip("\n"))
                    if nm and nm.groups()[1:] == (new_exc, braced, handler):
                        last_catch = (exc, braced, handler)
                        i += 1
                        continue
                out.append(f"{indent}.catch {new_exc}; {braced} {handler}\n")
                count += 1
            last_catch = (exc, braced, handler)
        elif line.strip() != "":
            last_catch = None
        i += 1
    return "".join(out), count


ARRAY_VALUE_RX = re.compile(r"0[xX][0-9a-fA-F]+")


def replace_array_data(text: str, old_hex, new_items) -> tuple:
    """Replace `.array-data` blocks whose values (as ints — `0x0` and
    `0x00000000` compare equal) exactly equal `old_hex`. The `.array-data`
    and `.end array-data` lines are kept byte-identical; items are rewritten
    with the file's own indent as `0x<hex>  # <comment>`. Labels above the
    block (`:array_NNN`) are never matched, so renumbering between builds
    doesn't matter. Blocks with non-hex body lines or a missing end marker
    are left untouched. Returns (new_text, replaced_count)."""
    old = tuple(int(x, 16) for x in old_hex)
    lines = text.splitlines(keepends=True)
    out: List[str] = []
    count = 0
    i, n = 0, len(lines)
    while i < n:
        line = lines[i]
        if not line.strip().startswith(".array-data"):
            out.append(line)
            i += 1
            continue
        j = i + 1
        vals: List[int] = []
        ok = True
        while j < n and lines[j].strip() != ".end array-data":
            s = lines[j].strip()
            if s == "":
                j += 1
                continue
            m = ARRAY_VALUE_RX.search(lines[j])
            if not m:
                ok = False
                break
            vals.append(int(m.group(0), 16))
            j += 1
        if ok and j < n and tuple(vals) == old:
            indent = ""
            k = i + 1
            while k < j:
                if ARRAY_VALUE_RX.search(lines[k]):
                    indent = lines[k][:len(lines[k]) - len(lines[k].lstrip())]
                    break
                k += 1
            out.append(line)
            for hx, comment in new_items:
                out.append(f"{indent}0x{hx}  # {comment}\n")
            out.append(lines[j])
            count += 1
            i = j + 1
            continue
        out.append(line)
        i += 1
    return "".join(out), count


def patch_notification_arrays(text: str) -> tuple:
    """Extend notification_icon_counts string-arrays in a decoded XML text:
    the entries item is duplicated up to NOTIF_ICON_ENTRIES_WANT copies,
    the values array gains NOTIF_ICON_VALUES_ADD items. Applies to every
    matching array in the file (qualifier variants alike). Already-present
    items are not duplicated (idempotent). Returns (new_text, changes)."""
    lines = text.splitlines()
    out: List[str] = []
    changes = 0
    i, n = 0, len(lines)
    while i < n:
        line = lines[i]
        m = re.search(r'<string-array\s+name="([^"]+)"', line)
        if not m:
            out.append(line)
            i += 1
            continue
        name = m.group(1)
        j = i + 1
        while j < n and "</string-array>" not in lines[j]:
            j += 1
        if j >= n:
            out.append(line)  # unterminated block, leave alone
            i += 1
            continue
        block = lines[i:j + 1]
        if name == NOTIF_ICON_ENTRIES_ARRAY:
            idx = [k for k in range(1, len(block) - 1)
                   if block[k].strip() == NOTIF_ICON_ENTRIES_ITEM]
            while 0 < len(idx) < NOTIF_ICON_ENTRIES_WANT:
                anchor = idx[-1]
                indent = block[anchor][:len(block[anchor]) - len(block[anchor].lstrip())]
                block.insert(anchor + 1, f"{indent}{NOTIF_ICON_ENTRIES_ITEM}")
                changes += 1
                idx.append(anchor + 1)
        elif name == NOTIF_ICON_VALUES_ARRAY:
            have = {block[k].strip() for k in range(1, len(block) - 1)}
            indent = ""
            for k in range(1, len(block) - 1):
                if block[k].strip().startswith("<item>"):
                    indent = block[k][:len(block[k]) - len(block[k].lstrip())]
                    break
            if not indent:
                indent = " " * 8
            for val in NOTIF_ICON_VALUES_ADD:
                if f"<item>{val}</item>" in have:
                    continue
                block.insert(len(block) - 1, f"{indent}<item>{val}</item>")
                changes += 1
        out.extend(block)
        i = j + 1
    new_text = "\n".join(out)
    if text.endswith("\n"):
        new_text += "\n"
    return new_text, changes


def _is_const4(line: str, reg: str, val: str) -> bool:
    """Match a `const/4 <reg>, <val>` instruction line exactly."""
    return re.fullmatch(rf"const/4 {re.escape(reg)}, {re.escape(val)}",
                        line.strip()) is not None


def patch_notification_count_smali(text: str) -> tuple:
    """Widen setupShowNotificationIconCount()V for the extended icon-count
    arrays: `.registers`/`.locals` N -> `.registers 8`, insert
    `const/4 v5, 0x5` + `const/4 v6, 0x7` after the v0=0x3/v1=0x0/v2=0x1
    triple (blank-line tolerant), and extend
    `filled-new-array {v1, v2, v0}` with v5, v6. Applies to every matching
    method in the file; already-patched methods are skipped (idempotent).
    Returns (new_text, patched_methods)."""
    lines = text.splitlines(keepends=True)
    out: List[str] = []
    patched = 0
    i, n = 0, len(lines)
    while i < n:
        line = lines[i]
        s = line.strip()
        if not (s.startswith(".method") and NOTIF_COUNT_METHOD_FRAG in s):
            out.append(line)
            i += 1
            continue
        j = i + 1
        while j < n and lines[j].strip() != ".end method":
            j += 1
        if j >= n:
            raise RuntimeError("Unterminated .method block while patching")
        block = lines[i:j + 1]
        body = "".join(block)
        if "const/4 v5, 0x5" in body and "const/4 v6, 0x7" in body:
            out.extend(block)  # already patched
            i = j + 1
            continue
        new_block = list(block)
        for k, bl in enumerate(new_block):
            bs = bl.strip()
            if bs.startswith(".registers") or bs.startswith(".locals"):
                m = re.fullmatch(r"\.(registers|locals)\s+(\d+)", bs)
                if m:
                    indent = bl[:len(bl) - len(bl.lstrip())]
                    new_block[k] = (f"{indent}.{m.group(1)} "
                                    f"{int(m.group(2)) + 2}\n")
                    break
        anchor = None
        for k, bl in enumerate(new_block):
            if _is_const4(bl, "v0", "0x3"):
                rest = [(t, x) for t, x in enumerate(new_block[k + 1:])
                        if x.strip() != ""]
                if (len(rest) >= 2
                        and _is_const4(rest[0][1], "v1", "0x0")
                        and _is_const4(rest[1][1], "v2", "0x1")):
                    anchor = k + 1 + rest[1][0]
                    break
        if anchor is None:
            out.extend(block)  # no const triple, leave untouched
            i = j + 1
            continue
        v2line = new_block[anchor]
        indent = v2line[:len(v2line) - len(v2line.lstrip())]
        new_block[anchor + 1:anchor + 1] = [
            "\n",
            f"{indent}const/4 v5, 0x5\n",
            "\n",
            f"{indent}const/4 v6, 0x7\n",
        ]
        joined, nrep = re.subn(
            r"filled-new-array\s+\{v1,\s*v2,\s*v0\}",
            "filled-new-array {v1, v2, v0, v5, v6}", "".join(new_block))
        if not nrep:
            out.extend(block)  # triple without the array init, leave untouched
            i = j + 1
            continue
        out.append(joined)
        patched += 1
        i = j + 1
    return "".join(out), patched


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
                    replace_patches=None, catch_patches=None) -> None:
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
        # 3e. literal string replacements across whole files.
        # Paired rules (e.g. Baidu->Gboard dotted + slashed forms) target
        # the same files, but a file normally holds only one form — so a
        # single miss is the normal case, not a warning. Warn only when NO
        # rule hit the file at all.
        replace_hit: set = set()
        replace_miss: dict = {}
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
                        replace_miss.setdefault(path, []).append(old)
                        continue
                    path.write_text(text.replace(old, new))
                    replace_hit.add(path)
                    print(f"  patched {path.name}: {count}x {old} -> {new}")
        for path in sorted(replace_miss):
            if path not in replace_hit:
                olds = ", ".join(replace_miss[path])
                print(f"  [warn] no target string in {path.relative_to(out_root)} ({olds})")
        # 3f. .catch handler insertions (e.g. fullscreen-AOD
        # NoSuchElementException catch after the SecurityException one).
        for basenames, prev_exc, anchor_exc, new_exc in (catch_patches or []):
            for base_name in basenames:
                found = [p for d in dex_out_dirs.values() for p in d.rglob(base_name)]
                if not found:
                    print(f"  [warn] {base_name} not found in any dex")
                    continue
                for path in found:
                    text = path.read_text()
                    if anchor_exc not in text:
                        continue
                    new_text, count = insert_catch_handler(
                        text, prev_exc, anchor_exc, new_exc)
                    if not count:
                        continue
                    path.write_text(new_text)
                    print(f"  patched {path.name}: +{count} .catch {new_exc}")
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
        print(f"Smali patching done: {jar_path.name} ({jar_path.stat().st_size} bytes).")
        if jar_path.suffix == ".jar":
            # Drop only this jar's stale precompiled files: oat/<isa>/ holds
            # other jars' valid outputs too, so the whole dir must stay.
            # The device recompiles on first boot (odrefresh/dalvik-cache).
            removed = []
            for ext in (".odex", ".vdex", ".art"):
                stale = jar_path.parent / "oat" / "arm64" / f"{jar_path.stem}{ext}"
                if stale.is_file() or stale.is_symlink():
                    stale.unlink()
                    removed.append(stale.name)
            if removed:
                print(f"  removed stale oat files: {', '.join(sorted(removed))}")
            else:
                print(f"  no stale oat files for {jar_path.stem}, skip")
        print()
    finally:
        shutil.rmtree(work_root, ignore_errors=True)


def _apply_apk_replace_patches(dex_dirs, replace_patches, log_base) -> None:
    """Literal whole-file replaces over decoded dex dirs (same semantics as
    step 3e: warn only when no rule hit the file at all — paired dotted +
    slashed rules normally match just one form per file)."""
    replace_hit: set = set()
    replace_miss: dict = {}
    for basenames, old, new in replace_patches:
        for base_name in basenames:
            found = [p for d in dex_dirs for p in d.rglob(base_name)]
            if not found:
                print(f"  [warn] {base_name} not found in any dex")
                continue
            for path in found:
                text = path.read_text()
                count = text.count(old)
                if not count:
                    replace_miss.setdefault(path, []).append(old)
                    continue
                path.write_text(text.replace(old, new))
                replace_hit.add(path)
                print(f"  patched {path.name}: {count}x replace")
    for path in sorted(replace_miss):
        if path not in replace_hit:
            olds = ", ".join(replace_miss[path])
            print(f"  [warn] no target string in {path.relative_to(log_base)} ({olds})")


def _apply_apk_array_patches(dex_dirs, array_patches, log_base) -> None:
    """.array-data content replacements (values, not labels)."""
    for basenames, old_hex, new_items in (array_patches or []):
        total = 0
        for base_name in basenames:
            found = [p for d in dex_dirs for p in d.rglob(base_name)]
            if not found:
                print(f"  [warn] {base_name} not found in any dex")
                continue
            for path in found:
                text = path.read_text()
                if ".array-data" not in text:
                    continue
                new_text, count = replace_array_data(text, old_hex, new_items)
                if not count:
                    continue
                path.write_text(new_text)
                print(f"  patched {path.name}: {count}x .array-data")
                total += count
        if not total:
            print(f"  [warn] no matching .array-data block (starts 0x{old_hex[0]})")


def _apply_apk_res_array_funcs(work_root: Path, res_array_funcs) -> None:
    """String-array content funcs (glob, func) on decoded xml."""
    for glob, func in (res_array_funcs or []):
        total = 0
        for path in sorted(work_root.rglob(glob)):
            if not path.is_file() or path.is_symlink():
                continue
            try:
                text = path.read_text()
            except (UnicodeDecodeError, OSError):
                continue
            if "<string-array" not in text:
                continue
            new_text, count = func(text)
            if not count:
                continue
            path.write_text(new_text)
            print(f"  patched {path.relative_to(work_root)}: +{count} array item(s)")
            total += count
        if not total:
            print(f"  [warn] no matching string-array for {glob}")


def _apply_apk_method_funcs(dex_dirs, method_funcs, log_base) -> None:
    """Method-scoped smali funcs (basenames, func)."""
    for basenames, func in (method_funcs or []):
        total = 0
        for base_name in basenames:
            found = [p for d in dex_dirs for p in d.rglob(base_name)]
            if not found:
                print(f"  [warn] {base_name} not found in any dex")
                continue
            for path in found:
                new_text, count = func(path.read_text())
                if not count:
                    continue
                path.write_text(new_text)
                print(f"  patched {path.name}: +{count} method(s)")
                total += count
        if not total:
            print(f"  [warn] no target method for {func.__name__}")


def _apply_apk_method_body_patches(dex_dirs, method_body_patches,
                                   log_base) -> None:
    """Method-body replacements (basenames, [names + '('], registers, call —
    same semantics as the jar step 3a; call None = void body, list = custom
    body lines)."""
    for basenames, names, regs, call in (method_body_patches or []):
        for base_name in basenames:
            found = [p for d in dex_dirs for p in d.rglob(base_name)]
            if not found:
                print(f"  [warn] {base_name} not found in any dex")
                continue
            for path in found:
                new_text, patched = replace_method_bodies(
                    path.read_text(), names, regs, call)
                if not patched:
                    print(f"  [warn] no target method in {path.relative_to(log_base)}")
                    continue
                path.write_text(new_text)
                for header in patched:
                    print(f"  patched {path.name}: {header}")


def _apply_apk_res_replace_patches(work_root: Path, res_replace_patches) -> None:
    """Literal (glob, old, new) replaces on decoded text files (glob matched
    against each file name via rglob). Missing matches only warn."""
    for glob, old, new in (res_replace_patches or []):
        total = 0
        for path in sorted(work_root.rglob(glob)):
            if not path.is_file() or path.is_symlink():
                continue
            try:
                text = path.read_text()
            except (UnicodeDecodeError, OSError):
                continue
            count = text.count(old)
            if not count:
                continue
            path.write_text(text.replace(old, new))
            print(f"  patched {path.relative_to(work_root)}: {count}x res replace")
            total += count
        if not total:
            print(f"  [warn] no res replace match for {glob}")


def patch_apk_smali(apk_rel: str, tag: str, replace_patches,
                    build_root: Path, array_patches=None,
                    res_array_funcs=None, method_funcs=None,
                    method_body_patches=None,
                    expected_new_entries: frozenset = frozenset()) -> None:
    """Smali-patch one APK inside the build tree (patch_root, both modes)
    via tools/apkeditor.jar (decode -> patch smali -> build back): full
    decode with the internal dex lib (handles dex up to 042, unlike the
    baksmali/smali jars), literal whole-file replaces like step 3e plus
    .array-data content replacements (matched by values, not :array_NNN
    labels), string-array content funcs (glob, func) on decoded xml,
    method-scoped smali funcs (basenames, func) and method-body replacements
    (jar step 3a semantics) — then a rebuild. Afterwards the oat/ dir next to the APK is
    dropped: dex was rebuilt, so stale compiled code must not survive.
    Missing APK only warns.
    The work dir is wiped afterwards (decodes are huge); entry-name sets must
    match the original or the build fails fast.
    NOTE: like the jar rezip, the rebuild refreshes signatures; DSV neuters
    the checks, same as the modded-apps overlays."""
    apk_path = build_root / apk_rel
    if not apk_path.is_file():
        print(f"WARNING: {apk_rel} not found, skip APK smali patching.\n")
        return
    java = shutil.which("java")
    if not java:
        raise RuntimeError("java not found: install a JRE for apkeditor (CI: default-jre-headless)")
    apkeditor_jar = TOOLS_DIR / "apkeditor.jar"
    if not apkeditor_jar.is_file():
        raise RuntimeError(f"Missing tool jar: {apkeditor_jar}")
    print(f"=== Smali-patching {apk_path.name} (apkeditor) ===")
    with zipfile.ZipFile(apk_path) as zin:
        orig_entries = {i.filename for i in zin.infolist()}
    # Work dir on the system temp fs (NOT the repo: /mnt/d-style mounts are
    # far too slow for thousand-file decodes, and leftovers would pollute
    # the repo when a run dies).
    work_root = Path(tempfile.mkdtemp(prefix=f"apkeditor-{tag}-"))
    try:
        # 1. full decode (apkeditor exits 0 even on failure — verify output).
        run_logged([java, "-jar", str(apkeditor_jar), "d",
                    "-i", str(apk_path), "-o", str(work_root), "-f"],
                   f"apkeditor decode {apk_path.name}")
        smali_root = work_root / "smali"
        dex_dirs = sorted([d for d in smali_root.iterdir() if d.is_dir()],
                          key=lambda d: d.name) if smali_root.is_dir() else []
        if not dex_dirs or not any(d.rglob("*.smali") for d in dex_dirs):
            raise RuntimeError(f"apkeditor produced no smali for {apk_path.name} "
                               f"(it exits 0 even on failure)")
        # 2-2d. rule application (shared helpers, see above).
        _apply_apk_replace_patches(dex_dirs, replace_patches, work_root)
        _apply_apk_array_patches(dex_dirs, array_patches, work_root)
        _apply_apk_res_array_funcs(work_root, res_array_funcs)
        _apply_apk_method_funcs(dex_dirs, method_funcs, work_root)
        _apply_apk_method_body_patches(dex_dirs, method_body_patches,
                                       work_root)
        # 3. rebuild into a temp file (atomic replace keeps the old APK on
        # failure).
        tmp = apk_path.with_name(apk_path.name + ".new")
        if tmp.exists():
            tmp.unlink()
        run_logged([java, "-jar", str(apkeditor_jar), "b",
                    "-i", str(work_root), "-o", str(tmp), "-f"],
                   f"apkeditor build {apk_path.name}")
        if not tmp.is_file() or tmp.stat().st_size == 0:
            raise RuntimeError(f"apkeditor produced no output for {apk_path.name}")
        with zipfile.ZipFile(tmp) as zout:
            new_entries = {i.filename for i in zout.infolist()}
        # New resource files (e.g. kashi PNGs) legitimately add entries;
        # anything else in the diff still fails fast.
        missing = sorted(orig_entries - new_entries)
        extra = sorted(new_entries - orig_entries)
        unexpected = [e for e in extra
                      if Path(e).name not in expected_new_entries]
        if missing or unexpected:
            raise RuntimeError(
                f"apkeditor changed the entry set of {apk_path.name}: "
                f"lost {missing[:5]}, "
                f"added {unexpected[:5]}")
        os.replace(tmp, apk_path)
        print(f"APK smali patching done: {apk_path.name} "
              f"({apk_path.stat().st_size} bytes, {len(new_entries)} entries).\n")
    finally:
        shutil.rmtree(work_root, ignore_errors=True)
    drop_oat_next_to(apk_path, "patched")
    print()


# Linker-required value fixups for the apktool path (applied to the
# decoded tree before rules): stock ships raw strings where aapt2 demands
# typed references. Each swap is semantically identical (boolean true ==
# int 1 == color 0x00000001 via TypedArray data passthrough); missing
# anchors only warn (other firmwares may not need them).
LINKER_FIX_REPLACE = [
    ("values/styles.xml",
     '<item name="android:errorColor">true</item>',
     '<item name="android:errorColor">#00000001</item>'),
]


def _apk_entry_key(name: str) -> str:
    """Normalize APK entry names for cross-tool comparison: aapt drops
    redundant version qualifiers (-vN) and renames legacy densities
    (nxhdpi -> 440dpi) on rebuild."""
    name = re.sub(r"-v\d+", "", name)
    return name.replace("nxhdpi", "440dpi")


def ensure_apktool_framework() -> None:
    """De-private apktool's auto-fetched android framework once: rebuilding
    1.apk from its own decode drops the private flags while keeping every
    ID (same table order), so legacy drawables link. Skipped when the
    installed framework is unchanged since the last run (marker file)."""
    java = shutil.which("java")
    if not java:
        raise RuntimeError("java not found: install a JRE for apktool (CI: default-jre-headless)")
    apktool_jar = TOOLS_DIR / "apktool.jar"
    if not apktool_jar.is_file():
        raise RuntimeError(f"Missing tool jar: {apktool_jar}")
    fw_dir = Path.home() / ".local/share/apktool/framework"
    fw_apk = fw_dir / "1.apk"
    marker = fw_dir / ".deprivated"
    if not fw_apk.is_file():
        raise RuntimeError(
            "apktool framework 1.apk missing: run any apktool build once "
            "(it auto-fetches) and retry")
    try:
        current = f"{fw_apk.stat().st_size}:{fw_apk.stat().st_mtime_ns}"
        if marker.is_file() and marker.read_text().strip() == current:
            print("apktool framework already de-privated, skip")
            return
    except OSError:
        pass
    print("=== De-privating apktool android framework (one-time) ===")
    work = Path(tempfile.mkdtemp(prefix="apktool-fw-"))
    try:
        run_logged([java, "-jar", str(apktool_jar), "d", "-f",
                    "-o", str(work / "fw"), str(fw_apk)],
                   "apktool decode framework")
        run_logged([java, "-jar", str(apktool_jar), "b", str(work / "fw"),
                    "-o", str(work / "fw-new.apk")],
                   "apktool rebuild framework")
        run_logged([java, "-jar", str(apktool_jar), "if",
                    str(work / "fw-new.apk")],
                   "apktool install framework")
        marker.write_text(
            f"{fw_apk.stat().st_size}:{fw_apk.stat().st_mtime_ns}")
    finally:
        shutil.rmtree(work, ignore_errors=True)
    print()


def patch_apk_apktool(apk_rel: str, tag: str, replace_patches,
                      build_root: Path, array_patches=None,
                      res_array_funcs=None, method_funcs=None,
                      res_replace_patches=None, kashi: bool = False,
                      expected_new_entries: frozenset = frozenset()) -> None:
    """Like patch_apk_smali but via tools/apktool.jar (full aapt recompile):
    required when NEW resources are added (apkeditor builds against the
    original table and rejects them). Decode layout is apktool-native
    (res/, smali_classes*/). Afterwards the oat/ dir next to the APK is
    dropped: dex was rebuilt, so stale compiled code must not survive.
    Missing APK only warns.
    The work dir is wiped afterwards (decodes are huge); entry-name sets
    must match the original (modulo META-INF loss, qualifier normalization
    and expected new files) or the build fails fast.
    NOTE: like every other APK edit, the rebuild refreshes signatures; DSV
    neuters the checks, same as the modded-apps overlays."""
    apk_path = build_root / apk_rel
    if not apk_path.is_file():
        print(f"WARNING: {apk_rel} not found, skip APK patching.\n")
        return
    java = shutil.which("java")
    if not java:
        raise RuntimeError("java not found: install a JRE for apktool (CI: default-jre-headless)")
    apktool_jar = TOOLS_DIR / "apktool.jar"
    if not apktool_jar.is_file():
        raise RuntimeError(f"Missing tool jar: {apktool_jar}")
    print(f"=== APK-patching {apk_path.name} (apktool) ===")
    with zipfile.ZipFile(apk_path) as zin:
        orig_entries = {i.filename for i in zin.infolist()}
    # Work dir on the system temp fs (NOT the repo: /mnt/d-style mounts are
    # far too slow for thousand-file decodes, and leftovers would pollute
    # the repo when a run dies).
    work_root = Path(tempfile.mkdtemp(prefix=f"apktool-{tag}-"))
    try:
        # 1. full decode (apktool exits non-zero on failure, unlike apkeditor).
        run_logged([java, "-jar", str(apktool_jar), "d", "-f",
                    "-o", str(work_root), str(apk_path)],
                   f"apktool decode {apk_path.name}")
        dex_dirs = sorted(
            [d for d in work_root.iterdir() if d.is_dir()
             and (d.name == "smali" or d.name.startswith("smali_classes"))],
            key=lambda d: d.name)
        if not dex_dirs or not any(d.rglob("*.smali") for d in dex_dirs):
            raise RuntimeError(f"apktool produced no smali for {apk_path.name}")
        # 2-2d. rule application (shared helpers) + linker fixups.
        _apply_apk_res_replace_patches(work_root, LINKER_FIX_REPLACE)
        _apply_apk_res_replace_patches(work_root, res_replace_patches)
        _apply_apk_replace_patches(dex_dirs, replace_patches, work_root)
        _apply_apk_array_patches(dex_dirs, array_patches, work_root)
        _apply_apk_res_array_funcs(work_root, res_array_funcs)
        _apply_apk_method_funcs(dex_dirs, method_funcs, work_root)
        if kashi:
            apply_kashi_overlay(work_root, dex_dirs)
        # 3. rebuild into a temp file (atomic replace keeps the old APK on
        # failure), with one self-healing retry: a fresh apktool install
        # auto-fetches its android framework on first build still carrying
        # private flags — de-private it and rebuild once.
        tmp = apk_path.with_name(apk_path.name + ".new")
        if tmp.exists():
            tmp.unlink()
        for attempt in (1, 2):
            proc = subprocess.run(
                [java, "-jar", str(apktool_jar), "b", str(work_root),
                 "-o", str(tmp)],
                stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
            if proc.returncode == 0:
                break
            if attempt == 1 and "is private" in proc.stdout:
                print("apktool framework still carries private flags, "
                      "de-privating and retrying...")
                ensure_apktool_framework()
                continue
            print(f"apktool build {apk_path.name} failed "
                  f"(exit {proc.returncode}). Last log lines:")
            print("\n".join(proc.stdout.splitlines()[-30:]))
            raise subprocess.CalledProcessError(proc.returncode, proc.args)
        if not tmp.is_file() or tmp.stat().st_size == 0:
            raise RuntimeError(f"apktool produced no output for {apk_path.name}")
        with zipfile.ZipFile(tmp) as zout:
            new_entries = {i.filename for i in zout.infolist()}
        # META-INF signatures never survive rebuilds (unsigned output; DSV
        # covers); aapt normalizes redundant qualifiers. New resource files
        # (e.g. kashi PNGs) legitimately add entries; anything else in the
        # diff still fails fast.
        old_keys = Counter(_apk_entry_key(e) for e in orig_entries
                           if not e.startswith("META-INF/"))
        new_keys = Counter(_apk_entry_key(e) for e in new_entries
                           if not e.startswith("META-INF/"))
        missing = sorted(set(old_keys) - set(new_keys))
        extra = sorted(set(new_keys) - set(old_keys))
        unexpected = [e for e in extra
                      if Path(e).name not in expected_new_entries]
        if missing or unexpected:
            raise RuntimeError(
                f"apktool changed the entry set of {apk_path.name}: "
                f"lost {missing[:5]}, "
                f"added {unexpected[:5]}")
        os.replace(tmp, apk_path)
        print(f"APK patching done: {apk_path.name} "
              f"({apk_path.stat().st_size} bytes, {len(new_entries)} entries).\n")
    finally:
        shutil.rmtree(work_root, ignore_errors=True)
    drop_oat_next_to(apk_path, "patched")
    print()


def apply_res_file_patches(root: Path, res_patches, log_base: Path) -> int:
    """Apply (file_glob, pattern, repl) regex edits to decoded text files
    under root (file_glob matched against each file name via rglob).
    Binary/unreadable files are skipped. Returns the total replacement
    count (warns per rule when nothing matched)."""
    total_all = 0
    for file_glob, pattern, repl in res_patches:
        rx = re.compile(pattern)
        total = 0
        for path in sorted(root.rglob(file_glob)):
            if not path.is_file() or path.is_symlink():
                continue
            try:
                text = path.read_text()
            except (UnicodeDecodeError, OSError):
                continue
            new_text, count = rx.subn(repl, text)
            if not count:
                continue
            path.write_text(new_text)
            print(f"  patched {path.relative_to(log_base)}: {count}x res")
            total += count
        if not total:
            print(f"  [warn] no res match for {pattern}")
        total_all += total
    return total_all


def patch_apk_res(apk_rel: str, tag: str, res_patches,
                  build_root: Path) -> None:
    """Resource-only APK patch inside the build tree (patch_root, both
    modes) via tools/apkeditor.jar (decode -> regex edits on decoded files
    -> build back). Unlike patch_apk_smali, no dex/smali is required, so
    resource-only overlays (e.g. DevicesOverlay.apk) are covered. Entry-name
    sets must match the original or the build fails fast; the stale oat/
    next to the APK is dropped via drop_oat_next_to(). Missing APK only
    warns. The work dir is wiped afterwards; NOTE the rebuild refreshes
    signatures like every other APK edit (DSV neuters the checks)."""
    apk_path = build_root / apk_rel
    if not apk_path.is_file():
        print(f"WARNING: {apk_rel} not found, skip APK res patching.\n")
        return
    java = shutil.which("java")
    if not java:
        raise RuntimeError("java not found: install a JRE for apkeditor (CI: default-jre-headless)")
    apkeditor_jar = TOOLS_DIR / "apkeditor.jar"
    if not apkeditor_jar.is_file():
        raise RuntimeError(f"Missing tool jar: {apkeditor_jar}")
    print(f"=== Res-patching {apk_path.name} (apkeditor) ===")
    with zipfile.ZipFile(apk_path) as zin:
        orig_entries = {i.filename for i in zin.infolist()}
    work_root = Path(tempfile.mkdtemp(prefix=f"apkeditor-{tag}-"))
    try:
        run_logged([java, "-jar", str(apkeditor_jar), "d",
                    "-i", str(apk_path), "-o", str(work_root), "-f"],
                   f"apkeditor decode {apk_path.name}")
        if not any(work_root.rglob("*.xml")):
            raise RuntimeError(f"apkeditor produced no resources for {apk_path.name} "
                               f"(it exits 0 even on failure)")
        res_total = apply_res_file_patches(work_root, res_patches, work_root)
        # Diagnostic: when nothing matched, show the actual
        # status_bar_padding_top lines (if the tag exists with a different
        # value) so the next run's rule can be adjusted to reality.
        if not res_total:
            shown = 0
            for path in sorted(work_root.rglob("*.xml")):
                if shown >= 5:
                    break
                if not path.is_file() or path.is_symlink():
                    continue
                try:
                    text = path.read_text()
                except (UnicodeDecodeError, OSError):
                    continue
                for line in text.splitlines():
                    if "status_bar_padding_top" in line:
                        print(f"  [res-info] {path.relative_to(work_root)}: {line.strip()[:120]}")
                        shown += 1
                        if shown >= 5:
                            break
            if not shown:
                print("  [res-info] no status_bar_padding_top tag in any decoded xml")
        tmp = apk_path.with_name(apk_path.name + ".new")
        if tmp.exists():
            tmp.unlink()
        run_logged([java, "-jar", str(apkeditor_jar), "b",
                    "-i", str(work_root), "-o", str(tmp), "-f"],
                   f"apkeditor build {apk_path.name}")
        if not tmp.is_file() or tmp.stat().st_size == 0:
            raise RuntimeError(f"apkeditor produced no output for {apk_path.name}")
        with zipfile.ZipFile(tmp) as zout:
            new_entries = {i.filename for i in zout.infolist()}
        if new_entries != orig_entries:
            raise RuntimeError(
                f"apkeditor changed the entry set of {apk_path.name}: "
                f"lost {sorted(orig_entries - new_entries)[:5]}, "
                f"added {sorted(new_entries - orig_entries)[:5]}")
        os.replace(tmp, apk_path)
        print(f"APK res patching done: {apk_path.name} "
              f"({apk_path.stat().st_size} bytes, {len(new_entries)} entries).\n")
    finally:
        shutil.rmtree(work_root, ignore_errors=True)
    drop_oat_next_to(apk_path, "patched")
    print()


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
    # The pattern must compile: an uncompilable pattern (e.g. unbalanced
    # `[`, proven by bisecting CI's real file_contexts down to
    # `/system/system/bin/[$`) fails lookups with cryptic errors.
    try:
        re.compile(path)
    except re.error:
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
    """Escape every regex metacharacter in a literal tree path for `$`
    anchor lines. Proven: an unescaped `+` (libc++.so) — and any other
    metacharacter, e.g. unbalanced `[` (proven by CI bisected poison
    `/system/system/bin/[$`) — never matches itself and can fail lookups
    with cryptic errors. `/` is left alone."""
    return "".join("\\" + c if c in "\\.+*?()[]{}^$|" else c for c in path)


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
    # SUPER_EXCLUDE partitions (mi_ext) are donors only — never packed.
    sources = [(img_dir, [p for p in names if p not in SUPER_EXCLUDE])
               for img_dir, names in sources]
    excluded = sorted(SUPER_EXCLUDE)
    if excluded:
        print(f"Excluded from super (donors only): {', '.join(excluded)}")
    for img_dir, names in sources:
        for part_name in names:
            img_path = img_dir / f"{part_name}.img"
            if not img_path.exists():
                raise FileNotFoundError(f"Missing required partition image: {img_path}")

            img_size = img_path.stat().st_size
            # Align partition size to 4096 bytes block size
            aligned_size = ((img_size + 4095) // 4096) * 4096
            if aligned_size != img_size:
                # Pad the file itself (sparse-safe hole, no disk cost) so
                # partition size == file size: lpmake fails reading past EOF
                # when they differ under explicit device alignment.
                with open(img_path, "ab") as f:
                    f.truncate(aligned_size)
                img_size = aligned_size
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

    # Stepped packing (DNA-style): super is rounded UP to whole
    # SUPER_SIZE_STEP_MB steps, so free space remains inside the groups
    # (for COW/OTA) instead of tight packing. Groups keep the same 1MB
    # metadata delta as before (proven minimum), both slot groups get the
    # same size (mirrors stock layout); with --virtual-ab the groups may
    # overcommit the physical super size via copy-on-write. Explicit 4096
    # device alignment: without it lpmake pads partitions to ~1MB each and
    # tight groups fail with exit 70 on the last partition (proven locally).
    reserve = SUPER_METADATA_RESERVE_MB * 1024 * 1024
    step = SUPER_SIZE_STEP_MB * 1024 * 1024
    super_size = ((total_size + reserve + step - 1) // step) * step
    group_size = super_size - reserve

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
        f"super:{super_size}:4096",
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
    free_inside = group_size - total_size
    print(f"Images sum: {total_size} bytes, "
          f"free inside groups: {free_inside} bytes (~{free_inside // 1024 // 1024}MB)")
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


def validate_template_payloads(template_dir: Path) -> None:
    """Fail fast when template payloads are LFS pointer files (or otherwise
    truncated): every file under images/ and every archive must not start
    with the git-lfs pointer header and must be at least 512 bytes (real
    payloads start at 4KB, e.g. vbmeta; pointers are ~130 bytes). Flashing
    a pointer would brick the device — this check runs before packaging."""
    if not template_dir.is_dir():
        raise FileNotFoundError(f"Missing flash template: {template_dir}")
    checked = 0
    for path in sorted((template_dir / "images").rglob("*")):
        if not path.is_file() or path.is_symlink():
            continue
        size = path.stat().st_size
        with open(path, "rb") as f:
            head = f.read(64)
        if size < 512 or head.startswith(b"version https://git-lfs"):
            raise RuntimeError(
                f"Template payload looks like an LFS pointer or truncated: "
                f"{path} ({size} bytes). Re-pull LFS and retry.")
        checked += 1
    for path in sorted(template_dir.rglob("*.zip")):
        if not path.is_file() or path.is_symlink():
            continue
        size = path.stat().st_size
        with open(path, "rb") as f:
            head = f.read(64)
        if size < 512 or head.startswith(b"version https://git-lfs"):
            raise RuntimeError(
                f"Template archive looks like an LFS pointer or truncated: "
                f"{path} ({size} bytes). Re-pull LFS and retry.")
        checked += 1
    print(f"Template payloads OK: {checked} file(s) in {template_dir.name}.\n")


def assemble_package(
    super_img: Path,
    meta_dir: Path,
    template_dir: Path,
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
    """Pack the assembled package/ into a ZIP with standard DEFLATE
    compression (level 6). Level 9 is deliberately NOT used: CI re-archives
    the artifact on upload anyway (archive-in-archive), so max compression
    only burns build minutes for ~zero size win.
    The universal package is recovery-flashable (updater-script +
    ARM update-binary already in META-INF); the fastboot-only package has no
    META-INF and is distributed as a plain archive (unzip + run install scripts).
    Sorted walk keeps the archive reproducible.
    """
    print(f"=== Packing ZIP (deflate-6): {output_zip.name} ===")
    if output_zip.exists():
        output_zip.unlink()
    with zipfile.ZipFile(output_zip, "w", compression=zipfile.ZIP_DEFLATED,
                           allowZip64=True) as z:
        for root, dirs, files in os.walk(package_dir):
            dirs.sort()
            for name in sorted(files):
                full = Path(root) / name
                arc = full.relative_to(package_dir).as_posix()
                z.write(full, arc,
                        compress_type=zipfile.ZIP_DEFLATED)
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
        help="Apply DSV (disable signature verification) smali patching; "
             "functional smali fixes (secure-flag bypass, notifications, "
             "vibrator) always apply (default: yes)",
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
    parser.add_argument(
        "--density",
        type=int,
        default=480,
        help="Screen density written to product/etc/build.prop "
             "(persist.miui.density_v2 + ro.sf.lcd_density) (default: 480)",
    )
    parser.add_argument(
        "--aod-fullscreen",
        choices=["true", "false"],
        default="true",
        help="Fullscreen AOD flag (support_aod_fullscreen in "
             "product/etc/device_features/duchamp.xml + NoSuchElementException "
             "catch in miui-services.jar) (default: true)",
    )
    parser.add_argument(
        "--dialer",
        choices=["yes", "no"],
        default="yes",
        help="Install the MIUI dialer (global firmwares only: dialer_gl/ set "
              "on EU, mi_ext apps elsewhere; CN already ships it and skips; "
              "also repoints GmsConfigOverlayComms.apk strings) (default: yes)",
    )
    parser.add_argument(
        "--device",
        choices=sorted(DEVICES),
        default="duchamp",
        help="Target device (selects firmware templates; only duchamp "
              "supported for now) (default: duchamp)",
    )
    parser.add_argument(
        "--variant",
        choices=["base", "fenrir"],
        default="base",
        help="Build variant: 'base' uses {device}_template_nonfenrir, "
              "'fenrir' uses {device}_template_fenrir (engineering preloader "
              "+ patched LK) plus the verified-boot props (default: base)",
    )
    args = parser.parse_args()
    # Firmware region + port codename: port mode reads the PORT firmware,
    # mod mode the STOCK one (CN = China, anything else = global; codename
    # e.g. warhol from warhol_global-ota_full-*.zip, chagall otherwise).
    region_url = PORT_URL if args.mode == "port" else STOCK_URL
    region = detect_region_code(region_url)
    codename_cands = port_codename_candidates(region_url)
    print(f"Firmware region: {region} "
          f"({'China' if region == 'CN' else 'global'}), "
          f"codename candidates: {codename_cands}")
    print(f"Starting HyperOS AutoPorter Workflow (mode: {args.mode}, "
          f"device: {args.device}, variant: {args.variant}, "
          f"HyperOS version: {args.hyper_version}, "
          f"package: {args.package_type}, debloat: {args.debloat}, dsv: {args.dsv}, "
           f"decrypt-data: {args.decrypt_data}, ext4-rw: {args.ext4_rw}, "
           f"ext4-free: {args.ext4_free_mb}MB, density: {args.density}, "
           f"aod-fullscreen: {args.aod_fullscreen}, dialer: {args.dialer})...\n")

    # Step 1: Tools Setup
    setup_tools()

    # Step 2: Download & Extract Modded Apps for the selected HyperOS
    # version + firmware region (global hos4 takes the hos4_gl set).
    mod_url, mod_dir, mod_name = select_modded_apps(args.hyper_version, region)
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

        # Step 4b: Flatten product nesting (pangu/system -> product root) so
        # debloat paths, donors and the rebuild see the final flat layout.
        # Stock too: duchamp product carries the same nesting, and donors
        # (displayconfig, overlays) are read from the stock tree — without
        # the flatten they would miss into pangu/. No-op when absent.
        flatten_pangu_system(UNPACKED_PORT_DIR / "product")
        flatten_pangu_system(UNPACKED_STOCK_DIR / "product")

        # Step 4c: Copy stock donor blobs into the port tree (before debloat and
        # rebuild bake the trees into images). Port only — mod has no donors.
        apply_donor_files(UNPACKED_STOCK_DIR, UNPACKED_PORT_DIR)

        # Step 4c2: Overlay the modded-apps set onto the port tree (modded
        # files replace stock/port ones; runs before debloat so oat strips
        # and deletions apply to the final content). Stock-only partitions
        # from the set (e.g. vendor/ with v4a) fall back to the stock tree.
        apply_modded_apps(mod_dir, UNPACKED_PORT_DIR,
                           fallback_root=UNPACKED_STOCK_DIR)

        # Tree carrying the build forward (debloat + DSV + rebuild source).
        patch_root = UNPACKED_PORT_DIR
    else:
        unpack_partitions(MOD_PARTITIONS, EXTRACTED_STOCK_DIR, UNPACKED_STOCK_DIR)
        # Same flatten on the stock product tree (mod has no port tree, so
        # stock pangu/system nesting would otherwise never be flattened).
        flatten_pangu_system(UNPACKED_STOCK_DIR / "product")
        # Same overlay onto the single stock tree (before debloat).
        apply_modded_apps(mod_dir, UNPACKED_STOCK_DIR)
        patch_root = UNPACKED_STOCK_DIR

    # Step 4c3: mi_ext tweaks (build.prop, uninstall-blob moves into
    # product/, nested dir drops) + product GMS permission removal. Both
    # modes (mi_ext is the port's in port mode, the stock's in mod mode).
    # Runs before debloat so deletions apply to the final content.
    apply_mi_ext_tweaks(patch_root, args.hyper_version, region,
                        codename_cands)

    # Step 4c3b: about_phone_description overlay (device_info.json always,
    # HTMLViewer.apk only on hos3) onto the build tree. Both modes, before
    # debloat so deletions apply to the final content.
    apply_about_phone_description(patch_root, args.hyper_version)

    # Step 4c3c: init.rc tweak (animationfix block at the end of
    # system/system/etc/init/hw/init.rc). Both modes, before debloat+rebuild.
    apply_init_rc_tweak(patch_root)

    # Step 4c4: build.prop tweaks (density, custom blocks, locale/host) on
    # the build tree. Both modes. Order vs debloat is irrelevant (nothing
    # there touches build.prop).
    apply_build_prop_tweaks(patch_root, args.density, args.hyper_version,
                            args.variant)

    # Step 4c4b: stamp the device fingerprint over every build.prop
    # (both unpacked trees, both modes, always).
    apply_fingerprint([UNPACKED_PORT_DIR, UNPACKED_STOCK_DIR],
                      DEVICES[args.device]["fingerprint"])

    # Step 4c5: device_features overlay (committed duchamp/duchamp.xml over
    # the donor copy) + patch (AOD/doze/display/fps tweaks, fullscreen flag
    # from --aod-fullscreen). Both modes, after donors (in port mode the
    # file arrives from stock via donors).
    apply_device_features_overlay(patch_root)
    patch_device_features(patch_root, args.aod_fullscreen)

    # Step 4c5b: MIUI dialer (global firmwares only, gated by --dialer;
    # CN already ships it). Both modes, before debloat+rebuild.
    if args.dialer == "yes":
        apply_dialer(patch_root, region)
    else:
        print("MIUI dialer skipped (--dialer no).\n")

    # Step 4c6: hos3->hos4 vibrator fix on the stock tree (vintf XML + hw
    # service binary; odm exists only in stock). Port mode only, not
    # dsv-gated (functional port fix, not signature disabling). The
    # services.jar half rides the smali step below.
    if args.mode == "port":
        apply_vibrator_fix(UNPACKED_STOCK_DIR)

    # Step 4d: Debloat the unpacked trees + patch vendor fstab (AVB off, rw).
    # Port mode: DEBLOAT onto the port tree, STOCK_DEBLOAT onto the stock
    # tree. Mod mode: both lists onto the single stock tree. Fstab patching
    # is not debloat-gated (functional, not deletions); only the
    # fileencryption rename follows --decrypt-data. Runs before the rebuild.
    debloat_version = args.hyper_version if args.debloat == "auto" else args.debloat
    if debloat_version == "hos4_gl":
        debloat_version = "hos4"  # gl set has no own list; region refines below
    if debloat_version == "none":
        print("Debloat skipped (--debloat none).\n")
    elif args.mode == "port":
        apply_debloat(UNPACKED_PORT_DIR, debloat_version, region)
        apply_stock_debloat(UNPACKED_STOCK_DIR)
    else:
        apply_debloat(UNPACKED_STOCK_DIR, debloat_version, region)
        apply_stock_debloat(UNPACKED_STOCK_DIR)
    patch_vendor_fstab(UNPACKED_STOCK_DIR, decrypt_data=(args.decrypt_data == "yes"))
    apply_vendor_build_prop(UNPACKED_STOCK_DIR)

    # Steps 4e-4g: jar smali patching. --dsv gates ONLY the
    # signature-verification lists (DSV = disable signature verification);
    # functional fixes always apply: secure-flag bypass, IS_MIUI
    # notifications, and (port mode) the vibrator rule. Port-only rules are
    # empty in mod mode.
    fw_methods, fw_inserts, miui_methods, svc_methods = \
        signature_patch_lists(args.dsv)
    if args.dsv != "yes":
        print("DSV (disable signature verification) skipped (--dsv no); "
              "functional smali fixes still apply.\n")
    vibrator_replace = SERVICES_VIBRATOR_REPLACE_PATCHES if args.mode == "port" else []
    if args.dsv == "yes":
        # Step 4e: Smali-patch framework.jar (signature checks -> XdConfig).
        # Skipped whole with --dsv no (every framework rule is signature).
        patch_jar_smali(
            patch_root / "system" / "system" / "framework" / "framework.jar",
            "framework", fw_methods, fw_inserts,
            BASE_DIR / "smali_work" / "framework",
        )
    # Step 4f: Smali-patch miui-services.jar (signature checks -> void when
    # DSV, always: secure-flag bypass at method start + IS_MIUI notification
    # fix + Baidu->Gboard keyboard strings + DrmBroadcast removal; gated by
    # --aod-fullscreen: fullscreen-AOD NoSuchElementException catch).
    aod_catch = (MIUI_SERVICES_AOD_CATCH_PATCHES
                 if args.aod_fullscreen == "true" else [])
    if not aod_catch:
        print("Fullscreen-AOD jar catch skipped (--aod-fullscreen false).\n")
    patch_jar_smali(
        patch_root / "system_ext" / "framework" / "miui-services.jar",
        "miui-services", miui_methods, [],
        BASE_DIR / "smali_work" / "miui-services",
        start_patches=MIUI_SERVICES_START_PATCHES,
        replace_patches=MIUI_SERVICES_REPLACE_PATCHES
        + keyboard_replace_rules(["InputMethodManagerServiceImpl.smali"])
        + MIUI_SERVICES_DRM_REPLACE_PATCHES,
        catch_patches=aod_catch,
    )
    # Step 4f2: Smali-patch miui-framework.jar (keyboard strings only).
    # Always, both modes.
    patch_jar_smali(
        patch_root / "system_ext" / "framework" / "miui-framework.jar",
        "miui-framework", [], [],
        BASE_DIR / "smali_work" / "miui-framework",
        replace_patches=keyboard_replace_rules(
            ["InputMethodServiceInjector.smali"]),
    )
    # Step 4g: Smali-patch services.jar (signature checks -> XdConfig/void
    # when DSV, always: secure-flag bypass incl. brand-new
    # isBypassSecureFlag + port vibrator rule).
    # NOTE: services.jar lives in system/system (AOSP location), NOT in
    # system_ext like miui-services.jar (proven by CI: absent under system_ext).
    patch_jar_smali(
        patch_root / "system" / "system" / "framework" / "services.jar",
        "services", svc_methods, [],
        BASE_DIR / "smali_work" / "services",
        start_patches=SERVICES_START_PATCHES,
        new_method_patches=SERVICES_NEW_METHODS,
        replace_patches=vibrator_replace or None,
    )

    # Step 4g2: Smali-patch APKs (extended keyboard). Always, both modes;
    # each call drops the stale oat/ next to the APK by itself.
    # MIUIFrequentPhrase goes through apkeditor; Settings goes through
    # apktool (step 4g2b) since its kashi merge adds new resources.
    patch_apk_smali(
        MIUIFREQUENTPHRASE_APK, "frequentphrase",
        keyboard_replace_rules(["InputMethodBottomManager.smali"]),
        patch_root,
    )
    # Step 4g2b: Smali+res-patch Settings.apk via apktool (full aapt
    # recompile — the kashi merge adds NEW resources, which apkeditor
    # builds reject). Always, both modes.
    patch_apk_apktool(
        SETTINGS_APK, "settings",
        keyboard_replace_rules(["AvailableVirtualKeyboardFragment.smali"])
        + [(["InputMethodFunctionSelectUtils.smali"],
            FUNCTION_SELECT_OLD, FUNCTION_SELECT_NEW)],
        patch_root,
        array_patches=SETTINGS_ARRAY_PATCHES,
        res_array_funcs=[("array*.xml", patch_notification_arrays)],
        method_funcs=[(["*.smali"], patch_notification_count_smali)],
        kashi=True,
        expected_new_entries=KASHI_EXPECTED_NEW_ENTRIES,
    )

    # Step 4g2c: Smali-patch Provision.apk (Poco gate -> false) and
    # PowerKeeper.apk (thermal/display neutering). Always, both modes;
    # each call drops the stale oat/ next to the APK by itself.
    patch_apk_smali(
        PROVISION_APK, "provision",
        [],
        patch_root,
        method_body_patches=PROVISION_METHOD_PATCHES,
    )
    patch_apk_smali(
        POWERKEEPER_APK, "powerkeeper",
        [],
        patch_root,
        method_body_patches=POWERKEEPER_METHOD_PATCHES,
    )

    # Step 4g3: DevicesOverlay.apk resource patch (status_bar_padding_top
    # 14.0px -> 25.0px). Always, both modes; in port mode the file arrives
    # from stock via donors, so this runs after them. Drops the stale oat/
    # next to the APK by itself.
    patch_apk_res(
        DEVICE_OVERLAY_APK, "devicesoverlay",
        DEVICE_OVERLAY_RES_PATCHES,
        patch_root,
    )

    # Step 4h: Move product/data-app/* into product/app/ on the build tree.
    # Runs last, right before the rebuild, so everything (debloat leftovers,
    # DSV, modded apps) lands in app/.
    move_data_app_to_app(patch_root / "product")

    # Rebuild jobs: (partitions, unpacked tree, image dir). Port mode rebuilds
    # the port list from the port tree plus STOCK_PARTITIONS from the stock
    # tree; mod mode rebuilds the full stock set from the single stock tree.
    # SUPER_EXCLUDE partitions (mi_ext) are unpacked as donors only — never
    # rebuilt, never packed.
    if args.mode == "port":
        rebuild_jobs = [([p for p in PORT_PARTITIONS if p not in SUPER_EXCLUDE],
                         UNPACKED_PORT_DIR, EXTRACTED_PORT_DIR),
                        (STOCK_PARTITIONS, UNPACKED_STOCK_DIR, EXTRACTED_STOCK_DIR)]
    else:
        rebuild_jobs = [([p for p in MOD_PARTITIONS if p not in SUPER_EXCLUDE],
                         UNPACKED_STOCK_DIR, EXTRACTED_STOCK_DIR)]
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

    # Step 7: Assemble the final flashable package (device template for
    # the build variant + super chunks, with or without META-INF depending
    # on package type). The template dir is validated (magic + size) before
    # anything is packed, so LFS pointer files can never brick a device.
    template_dir = template_dir_for(args.device, args.variant)
    validate_template_payloads(template_dir)
    package_dir = assemble_package(super_output, PORT_META_DIR,
                                   template_dir=template_dir,
                                   package_type=args.package_type)

    # Step 8: Pack it into a ZIP (max compression). The name marks the mode
    # (port = stock+port mix, mod = stock-only), device, version, variant
    # and fastboot-only builds; the universal ZIP is recovery-flashable.
    mode_prefix = "port" if args.mode == "port" else "mod"
    variant_suffix = "-fenrir" if args.variant == "fenrir" else ""
    zip_suffix = "" if args.package_type == "universal" else f"-{args.package_type}"
    create_recovery_zip(package_dir,
                        BASE_DIR / f"HyperOS-{mode_prefix}-{args.device}-"
                        f"{args.hyper_version}{variant_suffix}{zip_suffix}.zip")

    print("HyperOS AutoPorter completed successfully!")


if __name__ == "__main__":
    main()
