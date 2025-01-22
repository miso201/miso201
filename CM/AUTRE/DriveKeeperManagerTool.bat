@echo off

title Driver Manager - Backup and Restore

color 0A
set backupDir="%~dp0BackupDriver"

:menu
cls
mode con:cols=65 lines=12
echo =================================================================
echo =                Driver Manager - Backup and Restore            =
echo =================================================================
echo.
echo   Welcome to the Driver Manager tool! Select an option below:
echo.
echo   [1] Backup All Drivers
echo   [2] Restore Drivers from Backup
echo   [3] Exit
echo.
echo =================================================================
choice /c 123 /n /m "Choose an option (1-3): "
if errorlevel 3 goto exit
if errorlevel 2 goto restore
if errorlevel 1 goto backup
goto menu

:backup
cls
echo =================================================================
echo =                           Backup Drivers                      =
echo =================================================================
echo.
echo   Creating a backup of all drivers in:
echo   %backupDir%
echo.
mkdir %backupDir% >nul 2>&1
pnputil /export-driver * %backupDir%
echo.
echo   Backup completed successfully!
echo   Backup location: %backupDir%
echo.
echo =================================================================
timeout /t 2 >nul
goto menu

:restore
cls
echo =================================================================
echo =                          Restore Drivers                      =
echo =================================================================
echo.
if not exist %backupDir% (
    echo   Error: Backup directory not found!
    echo   Please create a backup first before restoring.
    echo.
   echo =================================================================
    timeout /t 2 >nul
    goto menu
)
echo   Restoring all drivers from:
echo   %backupDir%
echo.
pnputil /add-driver %backupDir%\*.inf /subdirs /install
echo.
echo   Drivers restored successfully!
echo.
echo =================================================================
timeout /t 2 >nul
goto menu

:exit
cls
echo =================================================================
echo =                          Exiting Program                      =
echo =================================================================
echo.
echo   Thank you for using Driver Manager. Goodbye!
echo.
timeout /t 2 >nul
exit
