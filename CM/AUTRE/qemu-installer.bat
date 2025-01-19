@echo off
cls
color 3f
mode con:cols=37 lines=1

setlocal enabledelayedexpansion

REM Set the download URLs for both 64-bit and 32-bit installers
set "url64=https://qemu.weilnetz.de/w64/2024/qemu-w64-setup-20241220.exe"
set "url32=https://qemu.weilnetz.de/w32/2022/qemu-w32-setup-20221230.exe"

REM Check the system architecture (32-bit or 64-bit)
if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    set "arch=64"
    set "url=%url64%"
) else (
    set "arch=32"
    set "url=%url32%"
)

REM Display the detected architecture
echo Detected system architecture: %arch%-bit

REM Download the corresponding QEMU installer
echo Downloading QEMU installer...
curl -L -o qemu-installer.exe %url% >nul 2>&1

REM Function to display progress bar
set "bar="
set "progress=0"
set "total=10"

REM Install QEMU silently
echo Installing QEMU silently...
start /wait qemu-installer.exe /S >nul 2>&1

REM Progress bar loop
for /L %%P in (1,1,%total%) do (
    set /a progress=%%P*10
    set "bar="
    for /L %%B in (1,1,%%P) do set "bar=!bar!###"
    set "space="
    for /L %%C in (1,1,%total%-%%P) do set "space=!space!"
    <nul set /p "= [!bar!!space!] !progress!%%"
    timeout /t 1 >nul
    cls
)

REM Delete the installer after installation is complete
del qemu-installer.exe >nul 2>&1

echo Installation completed. Installer deleted.
exit
