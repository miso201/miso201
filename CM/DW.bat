





REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------
REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------
REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------
REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------
REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------
REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------
REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------


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
netsh advfirewall set allprofiles state off



set targetPath=C:\MyApps
set shortcutPath=%UserProfile%\MyApps.lnk

:: Create a shortcut using PowerShell
powershell -Command ^
    "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut('%shortcutPath%'); $s.TargetPath = '%targetPath%'; $s.Save();"

echo Shortcut created at %shortcutPath%.




:: Start downloading and installing software

:: echo Downloading and installing NetFx3online ...
curl -L -o NetFx3online.bat "https://github.com/zeen20/SoftMee/releases/download/minisoft/NetFx3online.bat"
:: start /wait NetFx3online.bat

:: echo Downloading and installing DirectX 11...
curl -L -o DirectX.11_silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/DirectX.11_silent.exe"
:: start /wait DirectX.11_silent.exe

:: echo Downloading and installing DirectX...
curl -L -o DirectX_silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/DirectX_silent.exe"
:: start /wait DirectX_silent.exe


:: echo Downloading and installing qBittorrent...
curl -L -o qbittorrent_5.0.1_x64_setup_silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/qbittorrent_5.0.1_x64_setup_silent.exe"
start qbittorrent_5.0.1_x64_setup_silent.exe

:: echo Downloading and installing VLC media player...
:: curl -L -o vlc-3.0.21-win64.exe "https://mirror.leitecastro.com/videolan/vlc/3.0.21/win64/vlc-3.0.21-win64.exe"
:: start  vlc-3.0.21-win64.exe /S


curl -L -o PDF4QT.msi https://github.com/JakubMelka/PDF4QT/releases/download/v1.4.0.0/JakubMelka.PDF4QT_1.4.0.0.msi && msiexec /i PDF4QT.msi /quiet /norestart

cd /d "C:\MyApps"


curl -L -o TOOLS.zip "https://drive.usercontent.google.com/download?id=1MJ-uD2lE_tXdHMd2EHlZBp75nZvhcMX7&export=download&authuser=0"
unzip TOOLS.zip -d TOOLS
del TOOLS.zip


:: curl -L -o AOMEI-Partition-Assistant-Unlimited-10.6.0-Silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/AOMEI-Partition-Assistant-Unlimited-10.6.0-Silent.exe"
:: curl -L -o IObit.Uninstaller.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/IObit.Uninstaller.exe"
:: curl -L -o OneDriveSetup_silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/OneDriveSetup_silent.exe"
curl -L -o ThinAppPortable.7z "https://github.com/zeen20/SoftMee/releases/download/minisoft/ThinAppPortable.7z"


curl -L -o Defender-Antivirus.bat "https://github.com/zeen20/SoftMee/releases/download/minisoft/Defender-Antivirus.bat"
curl -L -o Dism++.10.1.11.1.x64.rar "https://github.com/zeen20/SoftMee/releases/download/minisoft/Dism++.10.1.11.1.x64.rar"
curl -L -o extensionInstall.bat "https://github.com/zeen20/SoftMee/releases/download/minisoft/extensionInstall.bat"
curl -L -o FastStone.Capture_silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/FastStone.Capture_silent.exe"
curl -L -o GoogleDriveSetup.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/GoogleDriveSetup.exe"
curl -L -o Java-SE-8u221-x32-x64.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/Java-SE-8u221-x32-x64.exe"
curl -L -o Kill.bat "https://github.com/zeen20/SoftMee/releases/download/minisoft/Kill.bat"
curl -L -o Multi-activated.bat "https://github.com/zeen20/SoftMee/releases/download/minisoft/Multi-activated.bat"
curl -L -o MySFXInstaller.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/MySFXInstaller.exe"
curl -L -o PortableAppa.bat "https://github.com/zeen20/SoftMee/releases/download/minisoft/PortableAppa.bat"
curl -L -o Silent-Install-Builder-v6.1.1.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/Silent-Install-Builder-v6.1.1.exe"

curl -L -o android-studio-_silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/android-studio-_silent.exe"
:: curl -L -o MEGAsyncSetup64_silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/MEGAsyncSetup64_silent.exe"
:: curl -L -o VirtualBox.7.0.10.Build.158379.x64.Extension.PackSilent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/VirtualBox.7.0.10.Build.158379.x64.Extension.PackSilent.exe"




del "C:\Users\runneradmin\Desktop\WinRAR   .lnk" "C:\Users\runneradmin\Desktop\Internet Download Manager.lnk" "C:\Users\Public\Desktop\VLC media player.lnk" C:\Users\Public\Desktop\UltraISO.lnk C:\Users\Public\Desktop\PowerISO.lnk

curl -L -o End.bat "https://raw.githubusercontent.com/zeen20/SoftMee/refs/heads/main/End.bat"
start End.bat



:: del /f /s /q "C:\Users\%USERNAME%\AppData\Local\Temp\*.*" && rmdir /s /q "C:\Users\%USERNAME%\AppData\Local\Temp"
:: del "C:\Users\%USERNAME%\Desktop\VLC media player.lnk" && del "C:\Users\%USERNAME%\Desktop\Foxit PDF Reader.lnk" && del "C:\Users\%USERNAME%\Desktop\PowerISO.lnk" && del "C:\Users\%USERNAME%\Desktop\UltraISO.lnk" && del "C:\Users\%USERNAME%\Desktop\WinRAR   .lnk" && del "C:\Users\%USERNAME%\Desktop\Internet Download Manager.lnk" && del "C:\Users\Public\Desktop\Foxit PDF Reader.lnk" && del "C:\Users\Public\Desktop\VLC media player.lnk" && del "C:\Users\Public\Desktop\PowerISO.lnk" && del "C:\Users\Public\Desktop\UltraISO.lnk"

:: for /d %i in ("C:\Program Files\Google\Chrome\Application\*") do if exist "%i\Installer" del /f /s /q "%i\Installer\*"
:: del /f /s /q "C:\Users\%USERNAME%\AppData\Local\Temp\*.*" && rmdir /s /q "C:\Users\%USERNAME%\AppData\Local\Temp"

:: del "C:\Users\%USERNAME%\Desktop\VLC media player.lnk" && del "C:\Users\%USERNAME%\Desktop\Foxit PDF Reader.lnk" && del "C:\Users\%USERNAME%\Desktop\PowerISO.lnk" && del "C:\Users\%USERNAME%\Desktop\UltraISO.lnk" && del "C:\Users\%USERNAME%\Desktop\WinRAR   .lnk" && del "C:\Users\%USERNAME%\Desktop\Internet Download Manager.lnk" && del "C:\Users\Public\Desktop\Foxit PDF Reader.lnk" && del "C:\Users\Public\Desktop\VLC media player.lnk" && del "C:\Users\Public\Desktop\PowerISO.lnk" && del "C:\Users\Public\Desktop\UltraISO.lnk"
:: Prevent closing the window
:: echo Press any key to continue...

:: del "C:\Users\Docker\Desktop\Internet Download Manager.lnk" "C:\Users\Docker\Desktop\WinRAR   .lnk" C:\Users\Public\Desktop\PowerISO.lnk C:\Users\Public\Desktop\UltraISO.lnk "C:\Users\Public\Desktop\VLC media player.lnk" "C:\Users\Public\Desktop\Foxit PDF Reader.lnk"

:: del "C:\Users\%USERNAME%\Desktop\Internet Download Manager.lnk" "C:\Users\%USERNAME%\Desktop\WinRAR   .lnk" C:\Users\Public\Desktop\PowerISO.lnk C:\Users\Public\Desktop\UltraISO.lnk "C:\Users\Public\Desktop\VLC media player.lnk" "C:\Users\Public\Desktop\Foxit PDF Reader.lnk"


del "C:\Users\Public\Desktop\VLC media player.lnk"
set targetPath=C:\MyApps
set shortcutPath=%UserProfile%\Desktop\MyApps.lnk

:: Create a shortcut using PowerShell
powershell -Command ^
    "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut('%shortcutPath%'); $s.TargetPath = '%targetPath%'; $s.Save();"

echo Shortcut created at %shortcutPath%.

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------


@echo off
:: Disable the "Welcome to Microsoft Edge" first-run experience
NET SESSION >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo You need to run this script as Administrator.
    
    exit /b
)
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Edge" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v HideFirstRunExperience /t REG_DWORD /d 1 /f
