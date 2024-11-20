#!/bin/bash

# Set variables
MAC_USER_PASSWORD=$1
VNC_PASSWORD=$2
NGROK_AUTH_TOKEN=$3
MAC_REALNAME=$4

# Disable spotlight indexing to prevent excessive resource usage
sudo mdutil -i off -a

# Create a new user account (koolisw)
sudo dscl . -create /Users/koolisw
sudo dscl . -create /Users/koolisw UserShell /bin/bash
sudo dscl . -create /Users/koolisw RealName "$MAC_REALNAME"
sudo dscl . -create /Users/koolisw UniqueID 1001
sudo dscl . -create /Users/koolisw PrimaryGroupID 80
sudo dscl . -create /Users/koolisw NFSHomeDirectory /Users/koolisw
sudo dscl . -passwd /Users/koolisw "$MAC_USER_PASSWORD"
sudo createhomedir -c -u koolisw > /dev/null
sudo dscl . -append /Groups/admin GroupMembership koolisw

# Enable Screen Sharing and Remote Management
# Enable Remote Login for SSH access (required for VNC and other remote services)
sudo systemsetup -setremotelogin on

# Enable Remote Management for VNC (ARDAgent)
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -configure -allowAccessFor -allUsers -privs -all
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -configure -clientopts -setvnclegacy -vnclegacy yes

# Enable Screen Sharing (this is equivalent to Remote Management but only for screen sharing)
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -configure -activate

# Set VNC password (using the provided encrypted password)
echo "$VNC_PASSWORD" | perl -we 'BEGIN { @k = unpack "C*", pack "H*", "1734516E8BA8C5E2FF1C39567390ADCA"}; $_ = <>; chomp; s/^(.{8}).*/$1/; @p = unpack "C*", $_; foreach (@k) { printf "%02X", $_ ^ (shift @p || 0) }; print "\n"' | sudo tee /Library/Preferences/com.apple.VNCSettings.txt

# Restart VNC service
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -restart -agent -console
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate

# Install Ngrok via Homebrew
brew install --cask ngrok

# Configure and start Ngrok for remote access
ngrok authtoken "$NGROK_AUTH_TOKEN"
ngrok tcp 5900 --region=ap &

# Optional: To make sure the VNC connection works, confirm that ARD is running
ps aux | grep ARDAgent

# Prompt the user to grant screen recording permission manually if needed
echo "Screen recording might need to be enabled manually in 'System Preferences' > 'Security & Privacy' > 'Privacy' > 'Screen Recording'."
echo "Please grant permission for the VNC server to function properly."

echo "VNC server and Ngrok setup complete. You can now access VNC remotely."
