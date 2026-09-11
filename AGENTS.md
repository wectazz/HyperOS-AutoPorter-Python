# AGENTS.md

Single-file Python tool: `autoporter.py` builds `super.img` from 2 Xiaomi OTAs + 2 GDrive mod archives. No packages, tests, lint, or typecheck.

## Run
- `pip install -r requirements.txt` (needs `requests`, `tqdm`, `gdown`)
- CI reference (`.github/workflows/port.yml`, manual `workflow_dispatch` only): Python 3.10 on `ubuntu-latest` + `sudo apt-get install -y android-sdk-libsparse-utils erofs-utils p7zip-full wget curl`
- Full run: `python autoporter.py` — downloads ~tens of GB, do NOT run casually to "verify"; there is no quick/single-test mode.

## What the script does (order matters)
1. `setup_tools()`: mkdirs `tools/ moddedapps_hos3/ moddedapps_hos4/ extracted_partitions/`, `chmod +x` on `tools/*`, prepends `tools/` to `PATH`.
2. Downloads GDrive zips via `gdown.download()`, unpacks with `shutil.unpack_archive` falling back to `7z x` (requires `p7zip-full`), flattens single top-level dir, deletes zip.
3. `process_firmware()`: downloads OTA zip → extracts only `payload.bin` → **deletes zip immediately** → dumps partitions via `payload-dumper-go` → **deletes payload.bin immediately**. Disk-saving deletions are load-bearing; keep them.
4. `repack_super_image()`: `lpmake --metadata-slots 3 --virtual-ab`, group `qti_dynamic_partitions_a`, 4096-byte alignment, +64MB group padding, +4MB super padding. All partitions get `_a` suffix.

## Hardcoded inputs
- Stock (duchamp, HyperOS 3): `odm vendor odm_dlkm system_dlkm vendor_dlkm`
- Port (chagall, HyperOS 4): `mi_ext product system system_ext`
- Firmware URLs (`STOCK_URL`/`PORT_URL`) and GDrive IDs (`HOS3_GDRIVE_URL`/`HOS4_GDRIVE_URL`) are constants at top of `autoporter.py`.

## Gotchas
- `tools/` binaries (`lpmake`, `lpunpack`, `payload-dumper-go`) are Linux x86-64 static ELFs committed to repo — won't run on Windows/macOS; use WSL2 or CI. `lpunpack` is currently unused.
- `7z` must exist for non-standard GDrive archives; `shutil.unpack_archive` alone is insufficient.
- CI frees disk first (removes dotnet/android-sdk/ghc/boost, `docker image prune`) — full local runs need similar headroom.
- Outputs (`*.zip *.img *.bin`, `moddedapps_hos*/`, `extracted_partitions/`) are gitignored; only `super.img` is uploaded as artifact.
