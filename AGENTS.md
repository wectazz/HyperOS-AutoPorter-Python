# AGENTS.md

Single-file Python tool: `autoporter.py` builds `super.img` from 2 Xiaomi OTAs + 2 GDrive mod archives. No packages, tests, lint, or typecheck.

## Run
- `pip install -r requirements.txt` (needs `requests`, `tqdm`, `gdown`)
- CI reference (`.github/workflows/port.yml`, manual `workflow_dispatch` only): Python 3.10 on `ubuntu-latest` + `sudo apt-get install -y android-sdk-libsparse-utils erofs-utils p7zip-full wget curl`
- Full run: `python -u autoporter.py` — downloads ~tens of GB, do NOT run casually to "verify"; there is no quick/single-test mode. `-u` (unbuffered) is load-bearing: without it, Python block-buffers stdout to the CI pipe and child-tool stderr (lpmake, unbuffered) appears *earlier* in logs than the step that ran before it.

## What the script does (order matters)
1. `setup_tools()`: mkdirs `tools/ moddedapps_hos3/ moddedapps_hos4/ extracted_stock/ extracted_port/ unpacked_stock/ unpacked_port/`, `chmod +x` on `tools/*`, prepends `tools/` to `PATH`.
2. Downloads GDrive zips via `gdown.download()`, unpacks with `shutil.unpack_archive` falling back to `7z x` (requires `p7zip-full`), flattens single top-level dir, wipes stale dest names before move (re-runs safe), prints top-level layout, deletes zip.
3. `process_firmware()`: downloads OTA zip → extracts only `payload.bin` → **deletes zip immediately** → dumps partitions via `payload-dumper-go -q` (output captured, only tail shown on failure) → **deletes payload.bin immediately**. Disk-saving deletions are load-bearing; keep them. Stock → `extracted_stock/`, port → `extracted_port/` (separate dirs: stock extras share names with port partitions and would overwrite each other).
4. `unpack_partitions()`: unpacks stock `.img` (incl. extras) → `unpacked_stock/<name>/`, port `.img` → `unpacked_port/<name>/` (fresh extract, stale content wiped). Format by magic: ext4 via `debugfs rdump` (e2fsprogs, preinstalled), erofs via `fsck.erofs --extract` (erofs-utils, in CI), sparse via `simg2img` if present. uid/gid/xattrs are NOT preserved — rebuild step must apply fs_config.
5. `rebuild_partition_images()`: rebuilds `.img` in place from (patched) trees — port list → `extracted_port/`, `STOCK_PARTITIONS` only → `extracted_stock/` (donor extras `product`/`system_ext` in `unpacked_stock/` are never rebuilt). Format matches original by magic: erofs via `mkfs.erofs -z<EROFS_COMPRESSOR>`, ext4 via `mkfs.ext4 -d` (size = max(original, tree*1.1+32MB)). Build goes to `<name>.img.new` + atomic rename, so failures keep the old image.
6. `repack_super_image(stock_dir, port_dir, ...)`: `lpmake --metadata-slots 3 --virtual-ab` (no `--sparse` — raw `super.img`), groups `qti_dynamic_partitions_a` (same size for `_b`), 4096-byte alignment, +64MB group padding, +4MB super padding, then super size rounded up to whole GiB (lpmake takes `--device` size literally and never rounds; GUI tools like DNA round before calling it). lpmake output is captured (it probes every raw image as sparse → "Invalid sparse file format" noise is expected and harmless; only tail shown on failure). Every partition is added twice: `<name>_a` with the real image, `<name>_b` as empty size-0 placeholder (no `--image` — unpacks as 0-byte file). Group sum may exceed super size; allowed under `--virtual-ab` (COW).

## Hardcoded inputs
- Stock (duchamp, HyperOS 3): `odm vendor odm_dlkm system_dlkm vendor_dlkm` (+ extras `product system_ext`, dumped/unpacked for reference only, never packed into super)
- Port (chagall, HyperOS 4): `mi_ext product system system_ext`
- Firmware URLs (`STOCK_URL`/`PORT_URL`) and GDrive IDs (`HOS3_GDRIVE_URL`/`HOS4_GDRIVE_URL`) are constants at top of `autoporter.py`.
- HyperOS `system.img` root contains a nested `system/` dir (`unpacked_port/system/system/app/...`, SAR-style). `moddedapps_hos*/system/system/...` mirrors it — the extra level is correct, do not "flatten" it. Other partitions (`product`, `system_ext`, ...) are flat at root.
- EROFS rebuild uses `EROFS_COMPRESSOR = "lzma,9"` (max safe on duchamp's 6.1 kernel: MicroLZMA needs 5.16+). Do NOT switch to deflate: it needs 6.6+ — unreadable images = bootloop. Fallback if builds get too slow: `"lz4hc,12"` (decodes via plain LZ4 path).

## Gotchas
- `tools/` binaries (`lpmake`, `lpunpack`, `payload-dumper-go`) are Linux x86-64 static ELFs committed to repo — won't run on Windows/macOS; use WSL2 or CI. `lpunpack` is currently unused.
- `7z` must exist for non-standard GDrive archives; `shutil.unpack_archive` alone is insufficient. Do NOT use `7z x` for ext4 images — it rewrites absolute symlink targets; `debugfs rdump` preserves them.
- No `extract.erofs` exists upstream (erofs-utils ships only `dump/fsck/mkfs.erofs`) — extraction is `fsck.erofs --extract`, which exists in both 1.7.1 (CI noble) and 1.9. Do NOT switch to `dump.erofs --cat`: it is missing in 1.7.1 and would break CI.
- `tools/` holds only what apt cannot provide (`lpmake`, `lpunpack`, `payload-dumper-go` as static ELFs). Everything else (`dump/fsck/mkfs.erofs`, `simg2img`, `debugfs`, `7z`) comes from the apt list in `port.yml` — do not vendor them.
- CI frees disk first (removes dotnet/android-sdk/ghc/boost, `docker image prune`) — full local runs need similar headroom.
- Outputs (`*.zip *.img *.bin`, `moddedapps_hos*/`, `extracted_stock/`, `extracted_port/`, `unpacked_stock/`, `unpacked_port/`) are gitignored; only `super.img` is uploaded as artifact.
