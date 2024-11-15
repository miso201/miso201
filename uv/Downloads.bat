@echo off
curl -s -L -o setup.py https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/rme/setup.py
curl -s -L -o uv.exe "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/uv/uv.exe"
curl -s -L -o installuv.bat "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/uv/installuv.bat"
curl -s -L -o show.bat https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/rme/show.bat
curl -s -L -o loop.bat https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/rme/loop.bat
powershell -Command "Invoke-WebRequest 'https://github.com/chieunhatnang/VM-QuickConfig/releases/download/1.6.1/VMQuickConfig.exe' -OutFile 'C:\Users\Public\Desktop\VMQuickConfig.exe'"
python.exe -m pip install --upgrade pip
pip install requests --quiet
pip install pyautogui --quiet
pip install telegraph --quiet


del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk"
del /f "C:\Users\Public\Desktop\Unity Hub.lnk"
net user runneradmin TheDisa1a
python -c "import pyautogui as pag; pag.click(897, 64, duration=2)"
start "" "installuv.bat"
python setup.py
