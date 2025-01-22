DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="4/0AanRRrsMAWyUVq6WfCNpf3cBt-0Ee0kWAoG7vOd4RYillMbwQewipL0WLLYjyFW6uqUn_A" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$(hostname) --pin=123456



#!/bin/bash
# ................... Enable passwordless sudo for the current user .......................
USER=$(whoami)
echo "$USER ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/$USER > /dev/null
sudo chmod 0440 /etc/sudoers.d/$USER
if sudo -l | grep -q "(ALL) NOPASSWD:ALL"; then
    echo "Passwordless sudo enabled for $USER."
else
    echo "Failed to enable passwordless sudo. Please check the configuration."
fi






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
sudo dpkg -i peazip_10.0.0.LINUX.GTK2-1_amd64.deb && rm peazip_10.0.0.LINUX.GTK2-1_amd64.deb
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




#.........................................................................................................................................

# Backup current sources.list
sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup
echo -e "deb http://archive.ubuntu.com/ubuntu/ jammy main restricted universe multiverse\n\
deb http://archive.ubuntu.com/ubuntu/ jammy-updates main restricted universe multiverse\n\
deb http://archive.ubuntu.com/ubuntu/ jammy-backports main restricted universe multiverse\n\
deb http://security.ubuntu.com/ubuntu/ jammy-security main restricted universe multiverse" | sudo tee -a /etc/apt/sources.list > /dev/null
sudo apt update || sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 871920D1991BC93C
sudo apt install -y curl
sudo apt autoremove -y && sudo apt clean

echo "deb http://deb.debian.org/debian bullseye-backports main contrib  non-free" | sudo tee -a /etc/apt/sources.list.d/backports.list


sudo apt update
sudo apt install -y gdebi
wget http://archive.ubuntu.com/ubuntu/pool/main/p/policykit-1/policykit-1_124-2ubuntu1_amd64.deb -O policykit-1_124-2ubuntu1_amd64.deb
sudo gdebi -n policykit-1_124-2ubuntu1_amd64.deb
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb -O chrome-remote-desktop_current_amd64.deb
sudo gdebi -n chrome-remote-desktop_current_amd64.deb
sudo systemctl enable chrome-remote-desktop@$(whoami)
sudo systemctl start chrome-remote-desktop@$(whoami)
