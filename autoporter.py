#!/usr/bin/env python3
"""
HyperOS AutoPorter - Automated Firmware Porting Tool
"""

import argparse
import os
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
    """Split a file into exactly `parts` chunks named <prefix>0 .. <prefix>{parts-1}.

    Chunk size is ceil(total / parts), so the last chunk is smaller (never empty
    for real firmware sizes). Streams with a fixed buffer — safe for multi-GB files.
    """
    total = src_path.stat().st_size
    chunk_size = (total + parts - 1) // parts
    dest_dir.mkdir(parents=True, exist_ok=True)
    with open(src_path, "rb") as f:
        for i in range(parts):
            remaining = total - f.tell()
            to_write = min(chunk_size, remaining) if remaining > 0 else 0
            with open(dest_dir / f"{prefix}{i}", "wb") as out:
                left = to_write
                while left > 0:
                    buf = f.read(min(8 * 1024 * 1024, left))
                    if not buf:
                        break
                    out.write(buf)
                    left -= len(buf)
    print(f"Split {src_path.name} ({total} bytes) into {parts} parts in {dest_dir}.")


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
    args = parser.parse_args()
    print(f"Starting HyperOS AutoPorter Workflow (HyperOS version: {args.hyper_version}, "
          f"package: {args.package_type})...\n")

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
