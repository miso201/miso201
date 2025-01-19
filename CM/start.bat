@echo off
mode con: cols=25 lines=2

:: Disable Windows Defender Firewall for all profiles
netsh advfirewall set allprofiles state off
echo Windows Defender Firewall has been disabled.


del "C:\Users\Public\Desktop\R 4.4.2.lnk" "C:\Users\Public\Desktop\Epic Games Launcher.lnk" "C:\Users\Public\Desktop\Unity Hub.lnk"
unzip miso.zip
start CRM.bat



REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

REM UniGetUI.Installer
curl -L -o UniGetUI.Installer.exe "https://github.com/marticliment/UniGetUI/releases/download/3.1.5/UniGetUI.Installer.exe"
UniGetUI.Installer.exe /SP /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /NoAutoStart /ALLUSERS /LANG=english

curl -L -o DW.bat "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/CM/DW.bat"
start /wait DW.bat

curl -L -o VhdResizerSetup_silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/VhdResizerSetup_silent.exe"
start /wait VhdResizerSetup_silent.exe
del VhdResizerSetup_silent.exe

:: Download the IDMan installer from the provided URL
curl -L -o idman.exe "https://mirror2.internetdownloadmanager.com/idman642build25.exe?v=lt&filename=idman642build25.exe"
:: Run the installer silently and skip dialog boxes
start /wait idman.exe /S /skipdlgs



curl -L -o choco-install.bat "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/CM/choco-install.bat"
start choco-install.bat

curl -L -o PDF4QT.msi https://github.com/JakubMelka/PDF4QT/releases/download/v1.4.0.0/JakubMelka.PDF4QT_1.4.0.0.msi && msiexec /i PDF4QT.msi /quiet /norestart

curl -L -o PowerISO.exe "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/buildSrc/PowerISO.exe"
start /wait PowerISO.exe

curl -L -o UltraISO.Prem.9.7.6.3860.exe "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/buildSrc/UltraISO.Prem.9.7.6.3860.exe"
start /wait UltraISO.Prem.9.7.6.3860.exe

curl -L -o WinRaR.V.7.1.exe "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/buildSrc/WinRaR.V.7.1.exe"
start /wait WinRaR.V.7.1.exe

del C:\Users\Public\Desktop\PowerISO.lnk
del C:\Users\Public\Desktop\UltraISO.lnk
del "C:\Users\runneradmin\Desktop\WinRAR   .lnk"

curl -L -o idm.exe "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/CM/idm.exe"
start /wait idm.exe


del WinRaR.V.7.1.exe
del UniGetUI.Installer.exe
del UltraISO.Prem.9.7.6.3860.exe
del PowerISO.exe
del idman.exe
del vlc-3.0.21-win64.exe
del PDF4QT.msi

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

:: Exit the script
exit
