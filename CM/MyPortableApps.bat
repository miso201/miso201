@echo off
cls
Color 3f
mode con:cols=130 lines=40

REM Create a folder named PortableApps if it doesn't exist
if not exist "MyPortableApps" mkdir MyPortableApps
cd MyPortableApps
:MENU
echo =================================================================================================================================
echo        Select a Browser        
echo =================================================================================================================================
echo 1. Microsoft Edge  2. Google Chrome  3. Mozilla Firefox  4. Roxy Browser  5. Social Browser  6. Winhance
echo =================================================================================================================================
set /p choice="Enter your choice (1-6) or 0 to exit: "



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
    aria2c -o "FirefoxPortable.7z" --max-connection-per-server=16 --split=16 --min-split-size=1M "https://archive.org/download/TurboStudioApps/Firefox/Firefox-Portable.7z"

    REM Extract the downloaded file using 7-Zip
    start /wait "" "C:\Program Files\7-Zip\7z.exe" x "FirefoxPortable.7z" -o*

    REM Remove the downloaded archive
    del "FirefoxPortable.7z"

    REM Display completion message for Mozilla Firefox
    echo Mozilla Firefox extraction complete.
    cls
    goto MENU
) else if "%choice%"=="4" (
    REM Download RoxyBrowser Portable with aria2c
    aria2c -o "RoxyBrowserPortable.7z" --max-connection-per-server=16 --split=16 --min-split-size=1M "https://archive.org/download/TurboStudioApps/RoxyBrowser/RoxyBrowser-Portable.7z"

    REM Extract the downloaded file using 7-Zip
    start /wait "" "C:\Program Files\7-Zip\7z.exe" x "RoxyBrowserPortable.7z" -o*

    REM Remove the downloaded archive
    del "RoxyBrowserPortable.7z"

    REM Display completion message for RoxyBrowser
    echo RoxyBrowser extraction complete.
    cls
    goto MENU
) else if "%choice%"=="5" (
    REM Download Social Browser Portable with aria2c
    aria2c -o "SocialBrowserPortable.7z" --max-connection-per-server=16 --split=16 --min-split-size=1M "https://archive.org/download/TurboStudioApps/SocialBrowser/SocialBrowser-Portable.7z"

    REM Extract the downloaded file using 7-Zip
    start /wait "" "C:\Program Files\7-Zip\7z.exe" x "SocialBrowserPortable.7z" -o*

    REM Remove the downloaded archive
    del "SocialBrowserPortable.7z"

    REM Display completion message for Social Browser
    echo Social Browser extraction complete.
    cls
    goto MENU
) else if "%choice%"=="6" (
    REM Download Winhance Portable with aria2c
    aria2c -o "Winhance-Portable.7z" --max-connection-per-server=16 --split=16 --min-split-size=1M "https://ia904606.us.archive.org/35/items/TurboStudioApps/Winhance/Winhance-Portable.7z"

    REM Extract the downloaded file using 7-Zip
    start /wait "" "C:\Program Files\7-Zip\7z.exe" x "Winhance-Portable.7z" -o*

    REM Remove the downloaded archive
    del "Winhance-Portable.7z"

    REM Display completion message for Winhance-Portable
    echo Winhance extraction complete.
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
