@echo off
:: Enable Windows Audio Service
echo Enabling Windows Audio Service...
sc config AudioSrv start= auto
net start AudioSrv

:: Check if VB-Audio Virtual Cable is already installed
if not exist "C:\Program Files\VB\VB Cable" (
    echo Downloading and Installing VB-Audio Virtual Cable...
    curl -o VBCABLE.zip "https://download.vb-audio.com/Download_CABLE/VBCABLE_Driver_Pack45.zip"
    mkdir VBCABLE_TEMP
    tar -xf VBCABLE.zip -C VBCABLE_TEMP
    VBCABLE_TEMP\VBCABLE_Setup_x64.exe -i -y
    echo Cleaning up...
    rmdir /s /q VBCABLE_TEMP
    del VBCABLE.zip
) else (
    echo VB-Audio Virtual Cable is already installed.
)

:: Restart Audio Service
echo Restarting Audio Service...
net stop AudioSrv
net start AudioSrv

:: Test Audio Output
echo Testing audio output...
powershell -Command "Add-Type -TypeDefinition 'using System.Media; public class AudioTest { public static void Play() { SystemSounds.Beep.Play(); }}'; [AudioTest]::Play();"
taskkill /F /IM msedge.exe /T > nul
taskkill /F /IM VBCABLE_Setup_x64.exe /T > nul

:: Script complete
echo Audio setup completed.
exit
