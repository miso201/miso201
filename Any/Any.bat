@echo off
REM Download Any
curl -s -L -o Any.exe "https://download.anydesk.com/Any.exe"

REM Install Any
Any.exe --install "" --start-with-win

REM Set password for AnyDesk
echo azer@1234 | Any.exe --set-password

REM Start AnyDesk
start Any.exe

REM Wait for 60 seconds
timeout /t 20

REM Retrieve AnyDesk ID
for /f "delims=" %%i in ('AnyDesk.exe --get-id') do set CID=%%i 

REM Display AnyDesk ID
echo ID is: %CID%

REM Start the Windows Audio service
sc start audiosrv >nul

REM Pause to keep the script open
pause
