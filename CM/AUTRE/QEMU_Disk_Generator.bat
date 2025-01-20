@echo off
title Disk Image Creation Tool (QEMU)

:Start
echo ==============================================
echo   Disk Image Creation Tool using QEMU-IMG
echo ==============================================
echo.

REM Set QEMU path
set QEMUPath="C:\Program Files\qemu\qemu-img.exe"

REM Get the current directory
set CurrentDir=%~dp0

REM Prompt user for the file name
set /p FileName="Enter the name of the disk image (without extension): "

REM Prompt user for the file type
echo.
echo Choose the disk image format:
echo 1. RAW (.img)
echo 2. QCOW2 (.qcow2)
echo 3. VHD (.vhd)
echo 4. VDI (.vdi)
set /p FormatChoice="Enter your choice (1-4): "

REM Map the user's choice to the file extension and QEMU format
if "%FormatChoice%"=="1" set FileExt=img & set QEMUFormat=raw
if "%FormatChoice%"=="2" set FileExt=qcow2 & set QEMUFormat=qcow2
if "%FormatChoice%"=="3" set FileExt=vhd & set QEMUFormat=vpc
if "%FormatChoice%"=="4" set FileExt=vdi & set QEMUFormat=vdi

REM Validate the choice
if not defined FileExt (
    echo Invalid choice. Exiting.
    pause
    exit /b
)

REM Prompt user for the size of the disk in GB
set /p DiskSize="Enter the size of the disk image in GB: "

REM Validate disk size
for /f "tokens=* delims=" %%a in ("%DiskSize%") do set /a "ValidSize=%%a+0"
if %ValidSize% lss 1 (
    echo Invalid size entered. Exiting.
    pause
    exit /b
)

REM Set the full path for the disk image
set ImagePath=%CurrentDir%%FileName%.%FileExt%

REM Create the disk image
echo.
echo Creating a %DiskSize% GB %QEMUFormat% disk image: %ImagePath%
%QEMUPath% create -f %QEMUFormat% "%ImagePath%" %DiskSize%G

REM Check if the operation was successful
if %errorlevel%==0 (
    echo Disk image successfully created: %ImagePath%
) else (
    echo Failed to create the disk image. Please check for errors.
)

REM Ask user if they want to create another disk image or exit
echo.
set /p choice="Do you want to create another disk image? (Y/N): "
if /I "%choice%"=="Y" goto Start
if /I "%choice%"=="N" exit

