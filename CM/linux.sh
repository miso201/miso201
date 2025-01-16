sudo apt-get update
sudo apt-get update && sudo apt-get install -y curl wget unzip sudo ufw && sudo rm -rf /var/lib/apt/lists/*

sudo apt-get install -y vlc hardinfo gedit git gdebi bleachbit shotwell xpdf gftp

# Install Free Download Manager
echo "Installing Free Download Manager..."
wget https://files2.freedownloadmanager.org/fdm6_qt5/freedownloadmanager.deb
sudo apt-get install -y ./freedownloadmanager.deb && rm freedownloadmanager.deb




# Install qBittorrent
echo "Installing qBittorrent..."
sudo apt-get install -y qbittorrent

# Install PeaZip
echo "Installing PeaZip..."
wget https://github.com/peazip/PeaZip/releases/download/10.0.0/peazip_10.0.0.LINUX.GTK2-1_amd64.deb
sudo dpkg -i peazip_10.0.0.LINUX.GTK2-1_amd64.deb
sudo apt-get install -f -y  # Resolve any missing dependencies








# ...................  plasma-discover  .........................................................

sudo apt install plasma-discover
sudo apt install flatpak plasma-discover-backend-flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


# ...................  install/remove packages without entering a password .......................

CURRENT_USER=$(whoami)
sudo bash -c 'if [ ! -f "/etc/sudoers.bak" ]; then cp /etc/sudoers /etc/sudoers.bak && echo "Backup of sudoers file created at /etc/sudoers.bak."; fi;'
sudo bash -c "if ! grep -q '$CURRENT_USER ALL=(ALL) NOPASSWD: /usr/bin/apt, /usr/bin/dpkg, /usr/bin/snap, /usr/bin/plasma-discover, /usr/bin/flatpak' /etc/sudoers; then echo '$CURRENT_USER ALL=(ALL) NOPASSWD: /usr/bin/apt, /usr/bin/dpkg, /usr/bin/snap, /usr/bin/plasma-discover, /usr/bin/flatpak' >> /etc/sudoers && echo 'Passwordless sudo configured for package management commands.'; else echo 'Passwordless sudo for package management is already configured for $CURRENT_USER.'; fi"
sudo bash -c "cat <<EOF > /etc/polkit-1/localauthority/50-local.d/99-nopassword.pkla
[No Password for Package Management]
Identity=unix-user:$CURRENT_USER
Action=org.freedesktop.packagekit.*;org.kde.discover.*;org.debian.apt.*;org.kde.pkexec.discover.*
ResultAny=yes
ResultInactive=yes
ResultActive=yes
EOF"
sudo bash -c "echo 'polkit.addRule(function(action, subject) { if (subject.user == \"$CURRENT_USER\") { return polkit.Result.YES; } });' > /etc/polkit-1/rules.d/49-nopassword.rules"
sudo systemctl restart polkit
echo "Setup complete. You can now install/remove packages, use Plasma Discover, and perform other package management tasks without entering a password."


# Install Google Chrome
echo "Installing Google Chrome..."
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f -y  # Resolve any missing dependencies





DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="4/0AanRRrv2pBDxTO295FeCWJ1XWQ1AQdhCKvb4jgez1mErqOAFA90KIvXvip1kq7h_WEuFaA" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$(hostname) --pin=123456
