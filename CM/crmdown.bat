@echo off
mode con: cols=15 lines=1
powershell -Command "Invoke-WebRequest 'https://github.com/chieunhatnang/VM-QuickConfig/releases/download/1.6.1/VMQuickConfig.exe' -OutFile 'C:\Users\Public\Desktop\VMQuickConfig.exe'"
curl -L -o crmsetup.py "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/CM/crmsetup.py"


python.exe -m pip install --upgrade pip
pip install requests --quiet
pip install pyautogui --quiet
pip install telegraph --quiet


net user runneradmin TheDisa1a
python -c "import pyautogui as pag; pag.click(897, 64, duration=2)"
python crmsetup.py
exit
