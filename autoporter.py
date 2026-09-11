#!/usr/bin/env python3
"""
HyperOS AutoPorter - Automated Firmware Porting Tool
"""

import os
import sys
import shutil
import zipfile
import tarfile
import subprocess
import urllib.request
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
EXTRACTED_DIR = BASE_DIR / "extracted_partitions"

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
    "https://drive.google.com/file/d/1UCyX4rwUN3pls7UblKh4OwNBH5HRBnjA/view?usp=drive_link"
)

# Target Partition lists
STOCK_PARTITIONS = ["odm", "vendor", "odm_dlkm", "system_dlkm", "vendor_dlkm"]
PORT_PARTITIONS = ["mi_ext", "product", "system", "system_ext"]

# External Tool URLs (Linux AMD64)
PAYLOAD_DUMPER_GO_URL = (
    "https://github.com/ssut/payload-dumper-go/releases/download/1.3.0/"
    "payload-dumper-go_1.3.0_linux_amd64.tar.gz"
)
LPMAKE_URL = "https://github.com/unix3dgamer/lptools/raw/master/lpmake"
LPUNPACK_URL = "https://github.com/unix3dgamer/lptools/raw/master/lpunpack"


def setup_environment() -> None:
    """Create working directories and set up PATH."""
    for folder in [TOOLS_DIR, MODDED_HOS3_DIR, MODDED_HOS4_DIR, EXTRACTED_DIR]:
        folder.mkdir(parents=True, exist_ok=True)

    # Add tools/ to system PATH
    os.environ["PATH"] = f"{TOOLS_DIR}:{os.environ.get('PATH', '')}"


def make_executable(path: Path) -> None:
    """Ensure binary file is executable (chmod +x)."""
    if path.exists():
        st = os.stat(path)
        os.chmod(path, st.st_mode | 0o755)


def download_tools() -> None:
    """Download required Linux binaries into tools/ directory."""
    print("=== Step 1: Preparing Environment and Tools ===")
    setup_environment()

    # Download payload-dumper-go
    payload_dumper_bin = TOOLS_DIR / "payload-dumper-go"
    if not payload_dumper_bin.exists():
        print("Downloading payload-dumper-go...")
        archive_path = TOOLS_DIR / "payload-dumper.tar.gz"
        urllib.request.urlretrieve(PAYLOAD_DUMPER_GO_URL, archive_path)
        with tarfile.open(archive_path, "r:gz") as tar:
            tar.extractall(path=TOOLS_DIR)
        archive_path.unlink(missing_ok=True)
        make_executable(payload_dumper_bin)

    # Download lpmake
    lpmake_bin = TOOLS_DIR / "lpmake"
    if not lpmake_bin.exists() and not shutil.which("lpmake"):
        print("Downloading lpmake...")
        urllib.request.urlretrieve(LPMAKE_URL, lpmake_bin)
        make_executable(lpmake_bin)

    # Download lpunpack
    lpunpack_bin = TOOLS_DIR / "lpunpack"
    if not lpunpack_bin.exists() and not shutil.which("lpunpack"):
        print("Downloading lpunpack...")
        urllib.request.urlretrieve(LPUNPACK_URL, lpunpack_bin)
        make_executable(lpunpack_bin)

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
        unit_divisibility=1024,
    ) as bar:
        for chunk in response.iter_content(chunk_size=1024 * 1024):
            size = f.write(chunk)
            bar.update(size)

    return dest_path


def download_and_extract_gdrive_mod(gdrive_url: str, output_dir: Path, name: str) -> None:
    """Download and unpack Google Drive modded apps archives."""
    print(f"=== Downloading Modded Apps: {name} ===")
    archive_path = output_dir / f"{name}.zip"

    # Download using gdown with fuzzy matching to handle large file warnings
    gdown.download(url=gdrive_url, output=str(archive_path), fuzzy=True, quiet=False)

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

    # Handle folder structure to ensure product/system etc. are directly under output_dir
    extracted_items = list(temp_extract.iterdir())
    if len(extracted_items) == 1 and extracted_items[0].is_dir():
        for item in extracted_items[0].iterdir():
            shutil.move(str(item), str(output_dir / item.name))
        shutil.rmtree(temp_extract)
    else:
        for item in extracted_items:
            shutil.move(str(item), str(output_dir / item.name))
        shutil.rmtree(temp_extract)

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


def dump_partitions_from_payload(
    payload_path: Path, partitions: List[str], output_dir: Path
) -> None:
    """Dump specific partitions from payload.bin using payload-dumper-go."""
    print(f"Dumping partitions: {', '.join(partitions)}...")
    payload_dumper_bin = TOOLS_DIR / "payload-dumper-go"
    dumper_cmd = shutil.which("payload-dumper-go") or str(payload_dumper_bin)

    cmd = [
        dumper_cmd,
        "-p",
        ",".join(partitions),
        "-o",
        str(output_dir),
        str(payload_path),
    ]

    subprocess.run(cmd, check=True)
    print(f"Partitions {partitions} extracted successfully.")


def process_firmware(
    fw_url: str, fw_name: str, partitions: List[str], output_dir: Path
) -> None:
    """Download firmware, extract payload.bin, remove ZIP immediately, extract partitions, remove payload."""
    print(f"=== Processing Firmware: {fw_name} ===")
    zip_path = BASE_DIR / f"{fw_name}.zip"
    payload_path = BASE_DIR / f"{fw_name}_payload.bin"

    try:
        # Step 1: Download firmware ZIP
        download_file_with_progress(fw_url, zip_path)

        # Step 2: Extract payload.bin
        extract_payload_from_zip(zip_path, payload_path)

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


def repack_super_image(partitions_dir: Path, output_super_img: Path) -> None:
    """Pack extracted dynamic partitions into super.img using lpmake."""
    print("=== Step 4: Packing partitions into super.img ===")

    all_partitions = STOCK_PARTITIONS + PORT_PARTITIONS
    lpmake_bin = shutil.which("lpmake") or str(TOOLS_DIR / "lpmake")

    group_name = "qti_dynamic_partitions"
    partition_args = []
    total_size = 0

    for part_name in all_partitions:
        img_path = partitions_dir / f"{part_name}.img"
        if not img_path.exists():
            raise FileNotFoundError(f"Missing required partition image: {img_path}")

        img_size = img_path.stat().st_size
        # Align partition size to 4096 bytes block size
        aligned_size = ((img_size + 4095) // 4096) * 4096
        total_size += aligned_size

        partition_args.extend([
            "--partition",
            f"{part_name}:readonly:{aligned_size}:{group_name}",
            "--image",
            f"{part_name}={img_path}",
        ])

    # Calculate super device and group size with padding
    padding = 64 * 1024 * 1024  # 64MB extra
    group_size = total_size + padding
    super_size = group_size + (4 * 1024 * 1024)  # metadata header allowance

    cmd = [
        lpmake_bin,
        "--metadata-size",
        "65536",
        "--super-name",
        "super",
        "--metadata-slots",
        "2",
        "--device",
        f"super:{super_size}",
        "--group",
        f"{group_name}:{group_size}",
        *partition_args,
        "--sparse",
        "--output",
        str(output_super_img),
    ]

    print(f"Executing lpmake with super_size={super_size}, group_size={group_size}...")
    subprocess.run(cmd, check=True)
    print(f"Successfully generated {output_super_img} (Size: {output_super_img.stat().st_size} bytes).\n")


def main() -> None:
    print("Starting HyperOS AutoPorter Workflow...\n")

    # Step 1: Tools Setup
    download_tools()

    # Step 2: Download & Extract Modded Apps
    download_and_extract_gdrive_mod(HOS3_GDRIVE_URL, MODDED_HOS3_DIR, "moddedapps_hos3")
    download_and_extract_gdrive_mod(HOS4_GDRIVE_URL, MODDED_HOS4_DIR, "moddedapps_hos4")

    # Step 3: Download Stock & Port Firmwares with Strict Memory Cleanups
    process_firmware(STOCK_URL, "stock_duchamp", STOCK_PARTITIONS, EXTRACTED_DIR)
    process_firmware(PORT_URL, "port_chagall", PORT_PARTITIONS, EXTRACTED_DIR)

    # Step 4: Repack partitions into super.img
    super_output = BASE_DIR / "super.img"
    repack_super_image(EXTRACTED_DIR, super_output)

    print("HyperOS AutoPorter completed successfully!")


if __name__ == "__main__":
    main()
