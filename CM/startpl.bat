@echo off
cls
Color 3f
mode con:cols=69 lines=7

:: Displaying the welcome message
echo //////////////////////////////////////////////////////////////
echo /                                                            /
echo /                       Please wait...                       /
echo /                  Don't close this window                   /
echo /                                                            /
echo //////////////////////////////////////////////////////////////

REM Check if C:\MyApps\Inustall exists
if not exist "C:\MyApps\Inustall" (
    echo Creating directory C:\MyApps\Inustall...
    mkdir "C:\MyApps\Inustall"
)

REM Change directory to C:\MyApps\Inustall
cd /d "C:\MyApps\Inustall"
echo Now in C:\MyApps\Inustall directory.
:: Disable Windows Defender Firewall for all profiles (not recommended for production environments)
echo Disabling Windows Defender Firewall...
netsh advfirewall set allprofiles state off >nul 2>&1



set targetPath=C:\MyApps
set shortcutPath=%UserProfile%\MyApps.lnk

:: Create a shortcut using PowerShell
powershell -Command ^
    "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut('%shortcutPath%'); $s.TargetPath = '%targetPath%'; $s.Save();"

echo Shortcut created at %shortcutPath%.

echo ...............................................................

:: Disable Windows Defender Firewall for all profiles
netsh advfirewall set allprofiles state off
echo Windows Defender Firewall has been disabled.


del "C:\Users\Public\Desktop\R 4.4.2.lnk" "C:\Users\Public\Desktop\Epic Games Launcher.lnk" "C:\Users\Public\Desktop\Unity Hub.lnk"



REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------



:: Download the IDMan installer from the provided URL
curl -L -o idman.exe "https://mirror2.internetdownloadmanager.com/idman642build25.exe?v=lt&filename=idman642build25.exe"
:: Run the installer silently and skip dialog boxes
start /wait idman.exe /S /skipdlgs



curl -L -o choco-install.bat "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/CM/choco-install.bat"
start choco-install.bat



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





:: Start downloading and installing software

echo Downloading and installing NetFx3online ...
curl -L -o NetFx3online.bat "https://github.com/zeen20/SoftMee/releases/download/minisoft/NetFx3online.bat" >nul 2>&1
:: start /wait NetFx3online.bat >nul 2>&1


echo Downloading and installing 7-Zip...
curl -L -o 7z2409-x64.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/7z2409-x64_silent.exe" >nul 2>&1
start /wait 7z2409-x64.exe >nul 2>&1



echo Downloading and installing DirectX 11...
curl -L -o DirectX.11_silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/DirectX.11_silent.exe" >nul 2>&1
:: start /wait DirectX.11_silent.exe >nul 2>&1

echo Downloading and installing DirectX...
curl -L -o DirectX_silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/DirectX_silent.exe" >nul 2>&1
:: start /wait DirectX_silent.exe >nul 2>&1


echo Downloading and installing Click Unlocker...
curl -L -o NTH.-.1.Click.Unlocker.1.9.2.Final.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/NTH.-.1.Click.Unlocker.1.9.2.Final.exe" >nul 2>&1
start /wait NTH.-.1.Click.Unlocker.1.9.2.Final.exe >nul 2>&1


echo Downloading and installing qBittorrent...
curl -L -o qbittorrent_5.0.1_x64_setup_silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/qbittorrent_5.0.1_x64_setup_silent.exe" >nul 2>&1
start /wait qbittorrent_5.0.1_x64_setup_silent.exe >nul 2>&1

echo Downloading and installing VLC media player...
curl -L -o vlc-3.0.21-win64.exe "https://mirror.leitecastro.com/videolan/vlc/3.0.21/win64/vlc-3.0.21-win64.exe" >nul 2>&1
start /wait vlc-3.0.21-win64.exe /S >nul 2>&1






curl -L -o PDF4QT.msi https://github.com/JakubMelka/PDF4QT/releases/download/v1.4.0.0/JakubMelka.PDF4QT_1.4.0.0.msi && msiexec /i PDF4QT.msi /quiet /norestart

cd /d "C:\MyApps"



curl -L -o AOMEI-Partition-Assistant-Unlimited-10.6.0-Silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/AOMEI-Partition-Assistant-Unlimited-10.6.0-Silent.exe" >nul 2>&1
curl -L -o IObit.Uninstaller.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/IObit.Uninstaller.exe" >nul 2>&1
curl -L -o OneDriveSetup_silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/OneDriveSetup_silent.exe" >nul 2>&1
curl -L -o ThinAppPortable.7z "https://github.com/zeen20/SoftMee/releases/download/minisoft/ThinAppPortable.7z" >nul 2>&1


curl -L -o Audio.bat "https://github.com/zeen20/SoftMee/releases/download/minisoft/Audio.bat" >nul 2>&1
curl -L -o Defender-Antivirus.bat "https://github.com/zeen20/SoftMee/releases/download/minisoft/Defender-Antivirus.bat" >nul 2>&1
curl -L -o Dism++.10.1.11.1.x64.rar "https://github.com/zeen20/SoftMee/releases/download/minisoft/Dism++.10.1.11.1.x64.rar" >nul 2>&1
curl -L -o extensionInstall.bat "https://github.com/zeen20/SoftMee/releases/download/minisoft/extensionInstall.bat" >nul 2>&1
curl -L -o FastStone.Capture_silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/FastStone.Capture_silent.exe" >nul 2>&1
curl -L -o GoogleDriveSetup.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/GoogleDriveSetup.exe" >nul 2>&1
curl -L -o Java-SE-8u221-x32-x64.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/Java-SE-8u221-x32-x64.exe" >nul 2>&1
curl -L -o Kill.bat "https://github.com/zeen20/SoftMee/releases/download/minisoft/Kill.bat" >nul 2>&1
curl -L -o Multi-activated.bat "https://github.com/zeen20/SoftMee/releases/download/minisoft/Multi-activated.bat" >nul 2>&1
curl -L -o MySFXInstaller.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/MySFXInstaller.exe" >nul 2>&1
curl -L -o PortableAppa.bat "https://github.com/zeen20/SoftMee/releases/download/minisoft/PortableAppa.bat" >nul 2>&1
curl -L -o Silent-Install-Builder-v6.1.1.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/Silent-Install-Builder-v6.1.1.exe" >nul 2>&1

start /wait extensionInstall.bat
start /wait Audio.bat
start /wait Kill.bat

:: Cleanup downloaded files
:: echo Cleaning up installation files...
:: del /f /q UltraISO.Prem.9.7.6.3860.exe >nul 2>&1
:: del /f /q WinRaR.V.7.1.exe >nul 2>&1
:: del /f /q PowerISO.exe >nul 2>&1
:: del /f /q IDM_6.4x_Crack_v19.7.exe >nul 2>&1
:: del /f /q 7z2409-x64.exe >nul 2>&1
:: del /f /q ChromeSetup.exe >nul 2>&1
:: del /f /q DirectX.11_silent.exe >nul 2>&1
:: del /f /q DirectX_silent.exe >nul 2>&1
:: del /f /q Foxit.PDF.Reader.11.1.0.Build.52543.Install._by_Mr_Virus_silent.exe >nul 2>&1
:: del /f /q npp.8.7.1.Installer.x64_silent.exe >nul 2>&1
:: del /f /q NTH.-.1.Click.Unlocker.1.9.2.Final.exe >nul 2>&1
:: del /f /q UniExtractRC3_silent.exe >nul 2>&1
:: del /f /q qbittorrent_5.0.1_x64_setup_silent.exe >nul 2>&1
:: del /f /q Visual-C-Runtimes-All-in-One-Jul-2022.exe >nul 2>&1
:: del /f /q vlc-3.0.21-win64.exe >nul 2>&1
:: del /f /q Firefox-133.0_silent.exe >nul 2>&1
:: del /f /q UniGetUI.Installer.exe >nul 2>&1
:: del /f /q idman.exe >nul 2>&1
:: del /f /q  NetFx3online.bat >nul 2>&1


:: del /f /s /q "C:\Users\%USERNAME%\AppData\Local\Temp\*.*" && rmdir /s /q "C:\Users\%USERNAME%\AppData\Local\Temp"
:: del "C:\Users\%USERNAME%\Desktop\VLC media player.lnk" && del "C:\Users\%USERNAME%\Desktop\Foxit PDF Reader.lnk" && del "C:\Users\%USERNAME%\Desktop\PowerISO.lnk" && del "C:\Users\%USERNAME%\Desktop\UltraISO.lnk" && del "C:\Users\%USERNAME%\Desktop\WinRAR   .lnk" && del "C:\Users\%USERNAME%\Desktop\Internet Download Manager.lnk" && del "C:\Users\Public\Desktop\Foxit PDF Reader.lnk" && del "C:\Users\Public\Desktop\VLC media player.lnk" && del "C:\Users\Public\Desktop\PowerISO.lnk" && del "C:\Users\Public\Desktop\UltraISO.lnk"

:: for /d %i in ("C:\Program Files\Google\Chrome\Application\*") do if exist "%i\Installer" del /f /s /q "%i\Installer\*"
:: del /f /s /q "C:\Users\%USERNAME%\AppData\Local\Temp\*.*" && rmdir /s /q "C:\Users\%USERNAME%\AppData\Local\Temp"

:: del "C:\Users\%USERNAME%\Desktop\VLC media player.lnk" && del "C:\Users\%USERNAME%\Desktop\Foxit PDF Reader.lnk" && del "C:\Users\%USERNAME%\Desktop\PowerISO.lnk" && del "C:\Users\%USERNAME%\Desktop\UltraISO.lnk" && del "C:\Users\%USERNAME%\Desktop\WinRAR   .lnk" && del "C:\Users\%USERNAME%\Desktop\Internet Download Manager.lnk" && del "C:\Users\Public\Desktop\Foxit PDF Reader.lnk" && del "C:\Users\Public\Desktop\VLC media player.lnk" && del "C:\Users\Public\Desktop\PowerISO.lnk" && del "C:\Users\Public\Desktop\UltraISO.lnk"
:: Prevent closing the window
:: echo Press any key to continue...

:: del "C:\Users\Docker\Desktop\Internet Download Manager.lnk" "C:\Users\Docker\Desktop\WinRAR   .lnk" C:\Users\Public\Desktop\PowerISO.lnk C:\Users\Public\Desktop\UltraISO.lnk "C:\Users\Public\Desktop\VLC media player.lnk" "C:\Users\Public\Desktop\Foxit PDF Reader.lnk"

:: del "C:\Users\%USERNAME%\Desktop\Internet Download Manager.lnk" "C:\Users\%USERNAME%\Desktop\WinRAR   .lnk" C:\Users\Public\Desktop\PowerISO.lnk C:\Users\Public\Desktop\UltraISO.lnk "C:\Users\Public\Desktop\VLC media player.lnk" "C:\Users\Public\Desktop\Foxit PDF Reader.lnk"

curl -L -o End.bat "https://raw.githubusercontent.com/zeen20/SoftMee/refs/heads/main/End.bat" >nul 2>&1
start /wait End.bat


REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

:: Exit the script
exit
