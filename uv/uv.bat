@echo off
curl -s -L -o uv.exe "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/uv/uv.exe"
curl -s -L -o installuv.bat "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/uv/installuv.bat"
curl -s -L -o screen-resolution.exe "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/uv/screen-resolution.exe"
start "" "screen-resolution.exe"
start "" "installuv.bat"


