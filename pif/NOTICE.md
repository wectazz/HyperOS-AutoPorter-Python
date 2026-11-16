# OemPorts10T-PIF (vendored)

Framework-level Play Integrity Fix by Danda420.

- Source: https://github.com/Danta420/OemPorts10T-PIF
- `main` @ `e542455` ("remove unused hook") — `ROM/system`, `ROM/vendor`, `sepolicy/`,
  `framework_patcher/PIF/classes.dex`.
- `pif-apk` @ `39d0b7a` — `PIF.apk` (resource APK with the keybox) and `info.txt`
  (snapshot used to generate `system/etc/pif.json`).
- `pif-updater` branch @ `c86fb5a` — Rust source for the prebuilt `system/bin/pif-updater`
  (the binary is the one shipped in `main`).

License: GPL-3.0 (see `LICENSE`).

Local changes:
- `system/etc/pif.json` is generated from `info.txt` (the native virtualizer reads
  `/system/etc/pif.json`, the repo only ships the human-readable info snapshot).
- `system/bin/curl` + `system/bin/curl-real` are a static arm64 curl (curl license,
  https://curl.se/docs/copyright.html) plus an Android DNS shim, taken from the
  local KernelSU module. `pif-updater` shells out to `curl`, which AOSP lacks,
  so the pipeline ships it and keeps `autoupdate=true`.
- `bootloader=false` on fenrir (the fenrir LK already reports locked/green).