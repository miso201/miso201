@echo off

REM Download and install Chrome Remote Desktop Host
echo Downloading Chrome Remote Desktop Host...
curl -o "%TEMP%\chromeremotedesktophost.msi" https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi
curl -s -L -o screen-resolution.exe "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/uv/screen-resolution.exe"
start "" "screen-resolution.exe"

echo Installing Chrome Remote Desktop Host...
msiexec /i "%TEMP%\chromeremotedesktophost.msi" /quiet

REM Start Chrome Remote Desktop host and set the PIN
echo Configuring Chrome Remote Desktop with PIN...
"%PROGRAMFILES(X86)%\Google\Chrome Remote Desktop\CurrentVersion\remoting_start_host.exe" ^
    --code="4/0AeanS0b4TwvIbBMXybBWHN_vDWJ7WlNKdBp-sNDahhqoGxSDJC1a5OgT2EWQHTz53uRu2g" ^
    --redirect-url="https://remotedesktop.google.com/_/oauthredirect" ^
    --name=%COMPUTERNAME% ^
    --pin=123456

REM Cleanup temporary files
del "%TEMP%\chromeremotedesktophost.msi"

echo Setup complete. Waiting indefinitely...
