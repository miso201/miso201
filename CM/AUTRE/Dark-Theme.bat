@echo off
:: Enable Dark Mode for Windows Explorer
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "AppsUseLightTheme" /t REG_DWORD /d 0 /f
:: Enable Dark Mode for System UI (Start menu, taskbar, etc.)
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "SystemUsesLightTheme" /t REG_DWORD /d 0 /f
:: Download the image from the URL
curl -L -o "C:\Users\%username%\Pictures\windows-10-pirat-windows-temnye.jpg" "https://img.goodfon.com/original/1920x1080/c/50/windows-10-pirat-windows-temnye.jpg"

:: Set the downloaded image as wallpaper
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "C:\Users\%username%\Pictures\windows-10-pirat-windows-temnye.jpg" /f

:: Apply the wallpaper
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
:: Restart Explorer to apply the changes
taskkill /f /im explorer.exe
start explorer.exe
