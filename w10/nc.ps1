# Define download URL and local paths
$downloadUrl = "https://www.tightvnc.com/download/2.8.85/tightvnc-2.8.85-gpl-setup-64bit.msi"
$installerPath = "$env:Temp\tightvnc-setup.msi"

# Download TightVNC installer
Write-Host "Downloading TightVNC installer..."
Invoke-WebRequest -Uri $downloadUrl -OutFile $installerPath -UseBasicParsing
Write-Host "Download completed. Saved to $installerPath."

# Silent installation of TightVNC
Write-Host "Starting TightVNC installation..."
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i `"$installerPath`" /quiet /norestart" -Wait
Write-Host "TightVNC installed successfully."

# Configure TightVNC settings (Set password and other options)
Write-Host "Configuring TightVNC server..."
$regPath = "HKLM:\SOFTWARE\TightVNC\Server"
Set-ItemProperty -Path $regPath -Name "Password" -Value ([byte[]](ConvertTo-SecureString "0369852147" -AsPlainText -Force) | ForEach-Object {$_})
Set-ItemProperty -Path $regPath -Name "AllowLoopback" -Value 1
Set-ItemProperty -Path $regPath -Name "RfbPort" -Value 5900
Write-Host "Configuration complete."

# Start TightVNC server
Write-Host "Starting TightVNC server..."
Start-Process -FilePath "C:\Program Files\TightVNC\tvnserver.exe" -ArgumentList "-start"
Write-Host "TightVNC server is running on port 5900."
