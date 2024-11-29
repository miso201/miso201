@echo off
mode con: cols=25 lines=2

:: Disable Windows Defender Firewall for all profiles
netsh advfirewall set allprofiles state off
echo Windows Defender Firewall has been disabled.


del "C:\Users\Public\Desktop\R 4.4.2.lnk" "C:\Users\Public\Desktop\Epic Games Launcher.lnk" "C:\Users\Public\Desktop\Unity Hub.lnk"
unzip miso.zip
start CRM.bat


REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

:: set desktopPath=%USERPROFILE%\Desktop
:: set folderName=MyApps

:: echo Creating folder "%folderName%" on the desktop...
:: mkdir "%desktopPath%\%folderName%"
:: if exist "%desktopPath%\%folderName%" (
::     echo Folder created successfully!
:: ) else (
::     echo Failed to create the folder. Please check your permissions.
:: )


REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

:: cd /d C:\Users\runneradmin\Desktop\MyApps

:: Download the IDMan installer from the provided URL
curl -L -o idman.exe "https://mirror2.internetdownloadmanager.com/idman642build25.exe?v=lt&filename=idman642build25.exe"
:: Run the installer silently and skip dialog boxes
start /wait idman.exe /S /skipdlgs



curl -L -o choco-install.bat "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/CM/choco-install.bat"
start choco-install.bat

curl -L -o reg.exe "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/CM/reg.exe"
start reg.exe

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

:: Exit the script
exit
