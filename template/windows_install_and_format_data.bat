@echo off
cd %~dp0
set fastboot=bin\windows\fastboot.exe
if not exist %fastboot% echo %fastboot% not found. & pause & exit /B 1
echo Waiting for device...
set device=
for /f "tokens=2" %%A in ('%fastboot% getvar product 2^>^&1 ^| findstr "\<product:"') do set device=%%A
if "%device%" equ "" echo Your device could not be detected. & pause & exit /B 1
echo Your device: %device%
if "%device%" neq "duchamp" echo Compatible devices: duchamp & pause & exit /B 1

echo.
echo ##################################################################
echo.
echo.               Choose your root method:
echo.               1. ReSukiSU
echo.               2. No root (default)
echo.
echo ##################################################################
echo.

set /p root_choice=Enter 1 or 2: 
if not defined root_choice set root_choice=2

if "%root_choice%" == "1" (
    set "boot_image=images\resukisu.img"
    echo Selected root method: ReSukiSU
) else (
    set "boot_image=images\boot.img"
    echo No root method selected. Proceeding without root.
)


echo Your device will be flashed and the data partition will be formatted.
echo You will lose your apps, settings and files on internal storage.
set /p choice=Do you want to continue? [y/N] 
if /i "%choice%" neq "y" exit /B 0

echo ##############################################################
echo Please wait. The device will reboot once flashing is complete.
echo ##############################################################
%fastboot% set_active a
%fastboot% flash preloader_a images\preloader_raw.img
%fastboot% flash preloader_b images\preloader_raw.img
%fastboot% flash apusys_ab images\apusys.img
%fastboot% flash audio_dsp_ab images\audio_dsp.img
%fastboot% flash ccu_ab images\ccu.img
%fastboot% flash connsys_bt_ab images\connsys_bt.img
%fastboot% flash connsys_gnss_ab images\connsys_gnss.img
%fastboot% flash connsys_wifi_ab images\connsys_wifi.img
%fastboot% flash dpm_ab images\dpm.img
%fastboot% flash dtbo_ab images\dtbo.img
%fastboot% flash gpueb_ab images\gpueb.img
%fastboot% flash gz_ab images\gz.img
%fastboot% flash lk_ab images\lk.img
%fastboot% flash logo_ab images\logo.img
%fastboot% flash mcf_ota_ab images\mcf_ota.img
%fastboot% flash mcupm_ab images\mcupm.img
%fastboot% flash modem_ab images\modem.img
%fastboot% flash mvpu_algo_ab images\mvpu_algo.img
%fastboot% flash pi_img_ab images\pi_img.img
%fastboot% flash scp_ab images\scp.img
%fastboot% flash spmfw_ab images\spmfw.img
%fastboot% flash sspm_ab images\sspm.img
%fastboot% flash tee_ab images\tee.img
%fastboot% flash vbmeta_ab images\vbmeta.img
%fastboot% flash vbmeta_system_ab images\vbmeta_system.img
%fastboot% flash vbmeta_vendor_ab images\vbmeta_vendor.img
%fastboot% flash vcp_ab images\vcp.img
%fastboot% flash boot_ab %boot_image%
%fastboot% flash init_boot_ab images\init_boot.img
%fastboot% flash vendor_boot_ab images\vendor_boot.img
%fastboot% flash super images\super.img.0
%fastboot% flash super images\super.img.1
%fastboot% flash super images\super.img.2
%fastboot% flash super images\super.img.3
%fastboot% flash super images\super.img.4
%fastboot% flash super images\super.img.5
%fastboot% flash super images\super.img.6
%fastboot% flash super images\super.img.7
%fastboot% flash super images\super.img.8
%fastboot% flash super images\super.img.9
%fastboot% flash super images\super.img.10
%fastboot% flash super images\super.img.11
%fastboot% flash super images\super.img.12
%fastboot% flash super images\super.img.13
%fastboot% flash super images\super.img.14
%fastboot% flash super images\super.img.15
%fastboot% flash super images\super.img.16
%fastboot% flash super images\super.img.17
%fastboot% flash super images\super.img.18
%fastboot% flash super images\super.img.19
%fastboot% flash super images\super.img.20
%fastboot% flash super images\super.img.21
%fastboot% flash super images\super.img.22
%fastboot% flash super images\super.img.23
%fastboot% flash super images\super.img.24
%fastboot% flash super images\super.img.25
%fastboot% flash super images\super.img.26
%fastboot% flash super images\super.img.27
%fastboot% flash super images\super.img.28
%fastboot% flash super images\super.img.29
%fastboot% flash super images\super.img.30
%fastboot% flash super images\super.img.31
%fastboot% flash super images\super.img.32
%fastboot% flash super images\super.img.33
%fastboot% flash super images\super.img.34
%fastboot% flash super images\super.img.35
%fastboot% flash super images\super.img.36
%fastboot% flash super images\super.img.37
%fastboot% flash super images\super.img.38
%fastboot% flash super images\super.img.39
%fastboot% flash super images\super.img.40
%fastboot% flash super images\super.img.41
%fastboot% flash super images\super.img.42
%fastboot% flash super images\super.img.43
%fastboot% flash super images\super.img.44
%fastboot% flash super images\super.img.45
%fastboot% flash super images\super.img.46
%fastboot% flash super images\super.img.47
%fastboot% flash super images\super.img.48
%fastboot% flash super images\super.img.49
%fastboot% flash super images\super.img.50
%fastboot% flash super images\super.img.51
%fastboot% flash super images\super.img.52
%fastboot% flash super images\super.img.53
%fastboot% erase metadata
%fastboot% erase userdata
%fastboot% erase expdb
%fastboot% erase frp
%fastboot% oem cdms
%fastboot% reboot
