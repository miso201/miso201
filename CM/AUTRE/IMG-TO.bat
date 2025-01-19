@echo off
:: Main Menu - Choose between QEMU or VirtualBox conversion or Install the required tool
echo Choose the conversion tool:
echo 1. QEMU (qemu-img)
echo 2. VirtualBox (VBoxManage)
echo 3. Install VirtualBox or QEMU
set /p TOOL_CHOICE=Enter 1, 2 or 3 to choose your tool: 

if "%TOOL_CHOICE%"=="1" goto QEMU_CONVERSION
if "%TOOL_CHOICE%"=="2" goto VIRTUALBOX_CONVERSION
if "%TOOL_CHOICE%"=="3" goto INSTALL_TOOL

:: QEMU Conversion Section
:QEMU_CONVERSION
echo You chose QEMU conversion.

:: Check if qemu-img.exe exists
if not exist "C:\Program Files\qemu\qemu-img.exe" (
    echo qemu-img not found. You will be prompted to install it if necessary.
    goto INSTALL_TOOL
)

:: Prompt the user to enter the path of the IMG file
set /p IMG_PATH=Enter the path of the IMG file (e.g., C:\path\to\file.img): 

:: Available formats for qemu-img conversion
echo Available formats for qemu-img conversion:
echo 1. RAW
echo 2. QCOW2
echo 3. VMDK
echo 4. VHD
echo 5. VHDX
echo 6. QCOW (older format)
echo 7. IDISK (Apple disk image)
echo 8. DMG (Apple Disk Image)
echo 9. IMG (QEMU image format)
echo 10. ISO (ISO 9660 format)
echo 11. SPARSE (Sparse format)
set /p FORMAT_CHOICE=Choose the format you want to convert to (1-11): 

:: Set the format based on user input
if "%FORMAT_CHOICE%"=="1" set FORMAT=raw
if "%FORMAT_CHOICE%"=="2" set FORMAT=qcow2
if "%FORMAT_CHOICE%"=="3" set FORMAT=vmdk
if "%FORMAT_CHOICE%"=="4" set FORMAT=vhd
if "%FORMAT_CHOICE%"=="5" set FORMAT=vhdx
if "%FORMAT_CHOICE%"=="6" set FORMAT=qcow
if "%FORMAT_CHOICE%"=="7" set FORMAT=idisk
if "%FORMAT_CHOICE%"=="8" set FORMAT=dmg
if "%FORMAT_CHOICE%"=="9" set FORMAT=img
if "%FORMAT_CHOICE%"=="10" set FORMAT=iso
if "%FORMAT_CHOICE%"=="11" set FORMAT=sparse

:: Set the conversion path
set CONVERT_PATH=%IMG_PATH:~0,-4%.%FORMAT%

:: Run the QEMU conversion
"C:\Program Files\qemu\qemu-img.exe" convert -f raw "%IMG_PATH%" -O %FORMAT% "%CONVERT_PATH%"

echo Conversion to %FORMAT% complete.

:: Wait for 5 seconds before exiting
timeout /t 5 >nul
exit /b

:: VirtualBox Conversion Section
:VIRTUALBOX_CONVERSION
echo You chose VirtualBox conversion.

:: Check if VBoxManage.exe exists
if not exist "C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" (
    echo VBoxManage not found. You will be prompted to install it if necessary.
    goto INSTALL_TOOL
)

:: Prompt the user to enter the path of the IMG file
set /p IMG_PATH=Enter the path of the IMG file (e.g., C:\path\to\file.img): 

:: Available formats for VBoxManage conversion
echo Available formats for VBoxManage conversion:
echo 1. VHD
echo 2. VDI
echo 3. VMDK
echo 4. VHDX
echo 5. RAW
echo 6. VMDK (compressed)
echo 7. VHDX (compressed)
set /p FORMAT_CHOICE=Choose the format you want to convert to (1-7): 

:: Set the format based on user input
if "%FORMAT_CHOICE%"=="1" set FORMAT=VHD
if "%FORMAT_CHOICE%"=="2" set FORMAT=VDI
if "%FORMAT_CHOICE%"=="3" set FORMAT=VMDK
if "%FORMAT_CHOICE%"=="4" set FORMAT=VHDX
if "%FORMAT_CHOICE%"=="5" set FORMAT=RAW
if "%FORMAT_CHOICE%"=="6" set FORMAT=vmdk
if "%FORMAT_CHOICE%"=="7" set FORMAT=vhdx

:: Set the conversion path
set CONVERT_PATH=%IMG_PATH:~0,-4%.%FORMAT%

:: Run the VirtualBox conversion
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" convertfromraw "%IMG_PATH%" "%CONVERT_PATH%" --format %FORMAT%

echo Conversion to %FORMAT% complete.

:: Wait for 5 seconds before exiting
timeout /t 5 >nul
exit /b

:: Install Tool Section (QEMU or VirtualBox)
:INSTALL_TOOL
echo You chose to install a tool.

:: Prompt to choose which tool to install
echo Choose the tool to install:
echo 1. Install QEMU (qemu-img)
echo 2. Install VirtualBox (VBoxManage)
set /p INSTALL_CHOICE=Enter 1 or 2 to choose your tool: 

if "%INSTALL_CHOICE%"=="1" (
    echo Installing QEMU...
    curl -L -o qemu-installer.bat "https://github.com/miso201/miso201/raw/refs/heads/main/CM/AUTRE/qemu-installer.bat"
    start /wait qemu-installer.bat
    del qemu-installer.bat
    echo QEMU installed successfully.
)

if "%INSTALL_CHOICE%"=="2" (
    echo Installing VirtualBox...
    curl -L -o VirtualBox.7.0.10.Build.158379.x64.Extension.PackSilent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/VirtualBox.7.0.10.Build.158379.x64.Extension.PackSilent.exe" --progress-bar
    start /wait VirtualBox.7.0.10.Build.158379.x64.Extension.PackSilent.exe
    del VirtualBox.7.0.10.Build.158379.x64.Extension.PackSilent.exe
    echo VirtualBox installed successfully.
)

:: Wait for 5 seconds before exiting
timeout /t 5 >nul
exit /b
