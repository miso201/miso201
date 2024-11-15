@echo off

REM Install UltraViewer silently
echo Installing UltraViewer silently...
uv.exe /SP- /VERYSILENT /SUPPRESSMSGBOXES /NORESTART

REM Check if installation succeeded and run UltraViewer
if exist "C:\Program Files (x86)\UltraViewer\UltraViewer_Desktop.exe" (
    echo Launching UltraViewer...
    start "" "C:\Program Files (x86)\UltraViewer\UltraViewer_Desktop.exe"
) else (
    echo Installation failed or UltraViewer not found in the expected location.
)

REM Pause to keep the window open in case of errors

