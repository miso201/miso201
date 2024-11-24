@echo off
mode con: cols=15 lines=1
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

curl -L -o win.iso "https://download1586.mediafire.com/5afznql7q8wgHm1SXhM0BWoBKOiSd2Jdck7mRzbZMlo74vXWQtah-PPRGeVnCUwukCbc41hG4V-n15Vqn-y1ep0-PMyFjzsHcu0-D2MtCAAhwDEh07AvCKHO_TiJmv0dwVYnafzA7oWuFWG2Z8dzE_nm-Xgph-7OqCrFhNtmn2x4-HA/jguif573jn6dfa5/win.iso"

exit
