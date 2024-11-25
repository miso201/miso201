#@echo off
mode con: cols=15 lines=1
dir
unzip miso.zip
start /wait CRM.bat

set desktopPath=%USERPROFILE%\Desktop
set folderName=MyApps

echo Creating folder "%folderName%" on the desktop...
mkdir "%desktopPath%\%folderName%"
if exist "%desktopPath%\%folderName%" (
    echo Folder created successfully!
) else (
    echo Failed to create the folder. Please check your permissions.
)

cd C:\Users\runneradmin\Desktop\MyApps

curl -L -o win.iso "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/CM/choco-install.bat"
exit
