@echo off
mode con:cols=65 lines=10 
echo =================================================================
echo =               [  VHD Mount / Dismount Tool  ]                 =
echo =================================================================
set /p VHD_PATH="Enter the full path to the VHD file: "

REM Ensure the path is enclosed in quotes to handle spaces
set VHD_PATH="%VHD_PATH%"

if not exist %VHD_PATH% (
    echo Error: VHD file not found at %VHD_PATH%.
    timeout /t 3 /nobreak >nul
    exit /b
)

:menu
cls
echo =================================================================
echo =               [  VHD Mount / Dismount Tool  ]                 =
echo =================================================================
echo Choose an option:
echo [1] Mount VHD
echo [2] Dismount VHD
echo [3] Go back to the beginning
echo [4] Exit
set /p choice="Enter your choice (1, 2, 3, or 4): "

if "%choice%"=="1" goto mount
if "%choice%"=="2" goto dismount
if "%choice%"=="3" goto start_over
if "%choice%"=="4" exit
echo Invalid choice. Please enter 1, 2, 3, or 4.
timeout /t 2 /nobreak >nul
goto menu

:start_over
cls
echo ============================================
echo          VHD Mount / Dismount Tool
echo ============================================
set /p VHD_PATH="Enter the full path to the VHD file: "

REM Ensure the path is enclosed in quotes to handle spaces
set VHD_PATH="%VHD_PATH%"

if not exist %VHD_PATH% (
    echo Error: VHD file not found at %VHD_PATH%.
    timeout /t 3 /nobreak >nul
    exit /b
)

goto menu

:mount
echo Mounting %VHD_PATH%...
(
    echo select vdisk file=%VHD_PATH%
    echo attach vdisk
) > "%temp%\vhd_script.txt"

diskpart /s "%temp%\vhd_script.txt"
del "%temp%\vhd_script.txt"
echo VHD mounted successfully.
timeout /t 3 /nobreak >nul
goto menu

:dismount
echo Dismounting %VHD_PATH%...
(
    echo select vdisk file=%VHD_PATH%
    echo detach vdisk
) > "%temp%\vhd_script.txt"

diskpart /s "%temp%\vhd_script.txt"
del "%temp%\vhd_script.txt"
echo VHD dismounted successfully.
timeout /t 3 /nobreak >nul
goto menu
