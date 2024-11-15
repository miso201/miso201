@echo off
REM Download Any
curl -s -L -o Any.exe "https://download.anydesk.com/AnyDesk.exe"

REM Install Any
Any.exe --install "" --start-with-win

REM Set password for Any
echo azer@1234 | Any.exe --set-password

REM Start Any
start Any.exe

REM Wait for 20 seconds
timeout /t 20

REM Retrieve Any ID
for /f "delims=" %%i in ('Any.exe --get-id') do set CID=%%i 

REM Display Any ID
echo ID is: %CID%

REM Start the Windows Audio service
sc start audiosrv >nul
