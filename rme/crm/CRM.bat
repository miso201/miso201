@echo off

REM Download and install Chrome Remote Desktop Host
echo change passwd
net user runneradmin Aa@123456
echo Downloading Chrome Remote Desktop Host...
curl -o "%TEMP%\chromeremotedesktophost.msi" https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi
curl -s -L -o QRes.exe "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/rme/crm/resolution/QRes.exe"
curl -s -L -o screen-resolution.cmd "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/rme/crm/resolution/screen-resolution.cmd"
start "" "screen-resolution.exe"

echo Installing Chrome Remote Desktop Host...
msiexec /i "%TEMP%\chromeremotedesktophost.msi" /quiet

REM Start Chrome Remote Desktop host and set the PIN
echo Configuring Chrome Remote Desktop with PIN...
"%PROGRAMFILES(X86)%\Google\Chrome Remote Desktop\CurrentVersion\remoting_start_host.exe" ^
    --code="4/0AeanS0Y9nW6XVjz9w8P3K-oQDG_F_zsARfaoxZ2zlQx8P3lYtbPtNTChV-jkZz2t8PJMUA" ^
    --redirect-url="https://remotedesktop.google.com/_/oauthredirect" ^
    --name=%COMPUTERNAME% ^
    --pin=123456

REM Cleanup temporary files
del "%TEMP%\chromeremotedesktophost.msi"

REM UniGetUI.Installer
curl -L -o UniGetUI.Installer.exe "https://github.com/marticliment/UniGetUI/releases/download/3.1.3/UniGetUI.Installer.exe"
UniGetUI.Installer.exe /SP /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /NoAutoStart /ALLUSERS /LANG=english

echo Setup complete. Waiting indefinitely...
