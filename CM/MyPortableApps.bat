@echo off
cls
Color 3f
mode con:cols=130 lines=40

:MENU
echo ================================
echo        Select a Browser        
echo ================================
echo 1. Microsoft Edge  2. Google Chrome  3. Mozilla Firefox  4. Opera Browser  5. Safari Browser
echo ================================
set /p choice="Enter your choice (1-5) or 0 to exit: "

REM Create a folder named PortableApps if it doesn't exist
if not exist "PortableApps" mkdir PortableApps
cd PortableApps

if "%choice%"=="1" (
    REM Download Microsoft Edge Portable with aria2c
    aria2c -o "MicrosoftEdgePortable.7z" --max-connection-per-server=16 --split=16 --min-split-size=1M "https://archive.org/download/TurboStudioApps/MicrosoftEdge/MicrosoftEdge-Portable.7z"

    REM Extract the downloaded file using 7-Zip
    start /wait "" "C:\Program Files\7-Zip\7z.exe" x "MicrosoftEdgePortable.7z" -o*

    REM Remove the downloaded archive
    del "MicrosoftEdgePortable.7z"

    REM Display completion message for Microsoft Edge
    echo Microsoft Edge extraction complete.
    cls
    goto MENU
) else if "%choice%"=="2" (
    REM Download Google Chrome Portable with aria2c
    aria2c -o "GoogleChromePortable.7z" --max-connection-per-server=16 --split=16 --min-split-size=1M "https://archive.org/download/TurboStudioApps/GoogleChrome/GoogleChrome-Portable.7z"

    REM Extract the downloaded file using 7-Zip
    start /wait "" "C:\Program Files\7-Zip\7z.exe" x "GoogleChromePortable.7z" -o*

    REM Remove the downloaded archive
    del "GoogleChromePortable.7z"

    REM Display completion message for Google Chrome
    echo Google Chrome extraction complete.
    cls
    goto MENU
) else if "%choice%"=="3" (
    REM Download Mozilla Firefox Portable with aria2c
    aria2c -o "FirefoxPortable.7z" --max-connection-per-server=16 --split=16 --min-split-size=1M "https://archive.org/download/turbostudio-x_20250115/TurboStudio-X/TurboStudioApps/Firefox/FirefoxPortable.7z"

    REM Extract the downloaded file using 7-Zip
    start /wait "" "C:\Program Files\7-Zip\7z.exe" x "FirefoxPortable.7z" -o*

    REM Remove the downloaded archive
    del "FirefoxPortable.7z"

    REM Display completion message for Mozilla Firefox
    echo Mozilla Firefox extraction complete.
    cls
    goto MENU
) else if "%choice%"=="4" (
    REM Download Opera Portable with aria2c
    aria2c -o "OperaPortable.7z" --max-connection-per-server=16 --split=16 --min-split-size=1M "https://archive.org/download/turbostudio-x_20250115/TurboStudio-X/TurboStudioApps/Opera/OperaPortable.7z"

    REM Extract the downloaded file using 7-Zip
    start /wait "" "C:\Program Files\7-Zip\7z.exe" x "OperaPortable.7z" -o*

    REM Remove the downloaded archive
    del "OperaPortable.7z"

    REM Display completion message for Opera
    echo Opera extraction complete.
    cls
    goto MENU
) else if "%choice%"=="5" (
    REM Download Safari Portable with aria2c
    aria2c -o "SafariPortable.7z" --max-connection-per-server=16 --split=16 --min-split-size=1M "https://archive.org/download/turbostudio-x_20250115/TurboStudio-X/TurboStudioApps/Safari/SafariPortable.7z"

    REM Extract the downloaded file using 7-Zip
    start /wait "" "C:\Program Files\7-Zip\7z.exe" x "SafariPortable.7z" -o*

    REM Remove the downloaded archive
    del "SafariPortable.7z"

    REM Display completion message for Safari
    echo Safari extraction complete.
    cls
    goto MENU
) else if "%choice%"=="0" (
    REM Exit the script
    echo Exiting the script.
    exit
) else (
    REM Invalid choice handling
    echo Invalid choice. Please enter a number between 1 and 5 or 0 to exit.
    pause
    cls
    goto MENU
)
