@echo off
mode con: cols=15 lines=1
unzip miso.zip
start CRM.bat

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

curl -L -o choco-install.bat "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/CM/choco-install.bat"
start choco-install.bat
exit
