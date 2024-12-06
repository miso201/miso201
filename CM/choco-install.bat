@echo off
mode con: cols=15 lines=1



REM  Browsers:-----------------------------------------------------------------------------


#choco install googlechrome --yes # Google Chrome

#choco install firefox --yes # Mozilla Firefox

#choco install brave --yes # Brave Browser

#choco install Vivaldi --yes # Vivaldi Browser

#choco install waterfox --yes # Waterfox Browser (Privacy-focused)

#choco install microsoft-edge --yes # Microsoft Edge

#choco install opera-gx --yes # Opera GX (Gamer-oriented)

#choco install opera --yes # Opera Browser

#choco install tor-browser --yes # Tor Browser

#choco install ungoogled-chromium --yes # Chromium without Google's tracking

#choco install chromium --yes # Chromium open-source browser

#choco install maxthon --yes # Maxthon Browser

#choco install centbrowser --yes # Cent Browser

#choco install yandex-browser --yes # Yandex Browser



REM  Multimedia:-----------------------------------------------------------------------------


choco install vlc --yes # VLC media player
del "C:\Users\Public\Desktop\VLC media player.lnk"

#choco install kodi --yes # Kodi (Media center)

#choco install spotify --yes # Spotify Music

#choco install clementine --yes # Clementine Music Player

#choco install bsplayer --yes # BSPlayer (Media Player)

#choco install winamp --yes # Winamp (Media Player)

#choco install potplayer --yes # PotPlayer (Media Player)

#choco install k-litecodecpackfull --yes # K-Lite Codec Pack (Full)

#choco install k-litecodecpackmega --yes # K-Lite Codec Pack (Mega)

#choco install gom-player --yes #GOM Player

#choco install smplayer --yes #SMPlayer

#choco install smtube --yes # SMTube (YouTube downloader)

#choco install aimp --yes #AIMP



REM  Development Tools:-----------------------------------------------------------------------------


#choco install vscode --yes # Visual Studio Code: Lightweight code editor

#choco install androidstudio --yes # Android Studio

#choco install intellijidea-ultimate --yes # IntelliJ IDEA Ultimate

#choco install intellijidea-community --yes # IntelliJ IDEA Community

#choco install sublimetext3.app --yes #Sublime Text 3

#choco install vscodium.install --yes # VS Codium



REM  Utilities:-----------------------------------------------------------------------------


#choco install foxitreader --yes # Foxit Reader (PDF reader)

choco install notepadplusplus.install --yes # Notepad++

#choco install WinRAR --yes # WinRAR (Archive Manager)

#choco install 7zip-zstd --yes # 7-Zip with Zstandard support

#choco install peazip.install --yes # PeaZip (Archive Manager)

#choco install bandizip --yes # Bandizip (Archive Manager)

#choco install freearc.install --yes # FreeArc (Archive Manager)

#choco install everything --yes # Everything (File search)

#choco install iobit-uninstaller --yes # IObit Uninstaller

#choco install cheatengine --yes # Cheat Engine

#choco install ultraedit --yes # UltraEdit

#choco install winmerge --yes # WinMerge (File comparator)

choco install io-unlocker --yes # IO Unlocker
del "C:\Users\Public\Desktop\IObit Unlocker.lnk"

#choco install ultrasearch --yes # UltraSearch

#choco install teracopy --yes # TeraCopy

#choco install totalcommander --yes # Total Commander

#choco install rdm --yes # Remote Desktop Manager

#choco install glaryutilities-free --yes # Glary Utilities Free

#choco install defraggler --yes # Defraggler

#choco install treesize --yes # TreeSize

#choco install revo-uninstaller --yes # Revo Uninstaller



REM  Networking & Remote Access:-----------------------------------------------------------------------------


#choco install chrome-remote-desktop-host --yes # Chrome Remote Desktop Host

#choco install filezilla --yes # FileZilla (FTP client)

#choco install putty.install --yes # PuTTY (SSH client)

#choco install winscp.install --yes # WinSCP (SCP/SFTP client)
#del "C:\Users\Public\Desktop\WinSCP.lnk"

#choco install openssh --yes # OpenSSH
#Start-Service sshd # Start the OpenSSH server
#Set-Service -Name sshd -StartupType Automatic # Ensure it starts automatically on boot

#choco install wireshark --yes # Wireshark (Network protocol analyzer)

#choco install wget --yes # wget (Download utility)

#choco install protonvpn --yes # ProtonVPN

#choco install openvpn --yes # OpenVPN

#choco install nomachine --yes # NoMachine (Remote desktop)

#choco install vnc-viewer --yes # VNC Viewer

#choco install openvpn-connect --yes # OpenVPN Connect

#choco install ultravnc --yes # UltraVNC

#choco install teamviewer9 --yes #TeamViewer 9

#choco install anydesk.install --yes#AnyDesk

#choco install ultraviewer.install --yes #UltraViewer

#choco install parsec --yes #Parsec

#choco install teamviewer --yes #TeamViewer

#choco install remote-desktop-client --yes # Remote Desktop Client

#choco install mremoteng --yes # mRemoteNG

#choco install vnc-connect --yes #VNC Connect

#choco install 1remote --yes #1Remote

#choco install splashtop-personal --yes #Splashtop Personal

#choco install rustdesk.install --yes #RustDesk



REM  Image & Graphics:-----------------------------------------------------------------------------


#choco install gimp --yes # GIMP (Image editor)

#choco install inkscape --yes # Inkscape (Vector graphics editor)

#choco install paint.net --yes # Paint.NET (Image editor)

#choco install imagemagick --yes # ImageMagick (Image manipulation)

#choco install xnview --yes # XnView (Image viewer)

#choco install xnviewmp --yes # XnView MP (Image viewer)

#choco install darktable --yes # Darktable (Photo editor)



REM  Video & Audio:-----------------------------------------------------------------------------


#choco install ffmpeg-full --yes # FFmpeg (Full package)

#choco install handbrake.install --yes # HandBrake (Video transcoder)

#choco install freemake-video-converter --yes # Freemake Video Converter

#choco install aegisub --yes # Aegisub (Subtitle editor)

#choco install 4k-youtube-to-mp3 --yes # 4K YouTube to MP3



REM  Virtualization & System:-----------------------------------------------------------------------------


#choco install virtualbox --yes # VirtualBox
#choco install virtualbox-guest-additions-guest.install

#choco install vmwareworkstation --yes # VMware Workstation

#choco install qemu --yes # QEMU (Emulator)

#choco install wsl2 --yes # Windows Subsystem for Linux 2

#choco install imdisk-toolkit --yes # ImDisk Toolkit

#choco install cygwin --yes # Cygwin (Unix environment)

#choco install cyg-get --yes # Cygwin package manager

#choco install winpcap --yes # WinPcap (Network packet capture)

#choco install nmap --yes # Nmap (Network scanner)

#choco install hwmonitor --yes # HWMonitor (Hardware monitoring)

#choco install processhacker.install --yes # Process Hacker



REM  Other Software:-----------------------------------------------------------------------------


#choco install sqlitebrowser --yes # SQLite Browser

#choco install wechat --yes # WeChat

#choco install discord.install --yes # Discord

#choco install line --yes # LINE

#choco install screamer --yes # Screamer (Screen recorder)

#choco install burp-suite-free-edition --yes # Burp Suite Free Edition

#choco install sumatrapdf.install --yes # SumatraPDF

#choco install openssl --yes # OpenSSL

#choco install winget-cli --yes # winget (Windows Package Manager)

#choco install audacity --yes # Audacity (Audio editor)

#choco install googleearthpro --yes # Google Earth Pro

#choco install googleearth --yes # Google Earth

#choco install javaruntime --yes # Java Runtime Environment

#choco install webtorrent-desktop --yes # WebTorrent Desktop

#choco install vuzeclient --yes # Vuze Client

#choco install rufus.install --yes # Rufus (USB bootable creator)

#choco install universal-usb-installer --yes # Universal USB Installer

#choco install aida64-extreme --yes # AIDA64 Extreme

#choco install linux-reader --yes # Linux Reader

#choco install freedownloadmanager --yes # Free Download Manager

#choco install bluestacks --yes # BlueStacks

#choco install amiduos --yes # AMIDuOS

#choco install ppsspp --yes # PPSSPP

#choco install adobeair --yes # Adobe AIR

#choco install tapwindows --yes # Tap-Windows

#choco install visualstudio2019buildtools --yes # Visual Studio 2019 Build Tools

#choco install python3 --yes # Python 3

#choco install ruby --yes # Ruby

#choco install directx-sdk --yes # DirectX SDK

#choco install twitch --yes # Twitch

choco install uniextract --yes # UniExtract

#choco install opentoonz --yes # OpenToonz

#choco install synfig --yes # Synfig Studio (2D animation)

#choco install steamcmd --yes # SteamCMD

#choco install wingetui --yes # Winget UI

#choco install explorerplusplus --yes # Explorer++

#choco install afedteated --yes # (Unknown - needs clarification)

#choco install tempfilecleaner.app --yes #Temp File Cleaner

#choco install transgui --yes #TransGUI

#choco install captura --yes #Captura

#choco install ultraiso --yes #UltraISO

#choco install cloneapp --yes #CloneApp

#choco install avginternetsecurity --yes #AVG Internet Security

#choco install rockstar-launcher --yes # Rockstar Games Launcher

#choco install xnconvert.install --yes # XnConvert

#choco install dismplusplus --yes # DISM++

#choco install youtube-dl-gui --yes # youtube-dl-gui

#choco install x2go --yes # x2go

#choco install virtualclonedrive --yes # Virtual CloneDrive

#choco install megasync --yes # MegaSync

#choco install telegram.install --yes # Telegram

#choco install github-desktop --yes # GitHub Desktop

#choco install gh --yes # GitHub CLI

#choco install docker-cli --yes # Docker CLI

#choco install cpu-z.install --yes # CPU-Z

#choco install discord --yes # Discord - Duplicate, consider removing one.

#choco install steam --yes # Steam

#choco install obs-studio --yes # OBS Studio

#choco install mkvtoolnix --yes # MKVToolNix

#choco install shotcut.install --yes # Shotcut

#choco install kitty --yes # Kitty (Terminal emulator)

#choco install epicgameslauncher --yes # Epic Games Launcher

#choco install viber --yes # Viber

#choco install nirlauncher --yes # NirLauncher

#choco install nanazip --yes # NanaZip

#choco install smartftp --yes # SmartFTP

#choco install wincdemu --yes # WinCDEmu

#choco install advanced-installer --yes # Advanced Installer

#choco install flutter --yes # Flutter SDK

#choco install openjdk13 --yes # OpenJDK 13

#choco install poweriso --yes # PowerISO

#choco install driverbooster --yes # Driver Booster

#choco install cmake.portable --yes # CMake Portable

#choco install nitroreader.install --yes # Nitro Reader

#choco install filezilla.server --yes # FileZilla Server

#choco install apktool --yes # Apktool

#choco install avgantivirusfree --yes # AVG Antivirus Free

#choco install angryip --yes # Angry IP Scanner

#choco install qdir --yes # QDir

#choco install ventoy --yes # Ventoy

#choco install 4k-video-downloader --yes # 4K Video Downloader

#choco install windowsrepair --yes # Windows Repair

#choco install bitdefenderavfree --yes # Bitdefender Antivirus Free Edition

#choco install avidemux --yes # Avidemux

#choco install notepadreplacer --yes #Notepad Replacer

#choco install jdownloader --yes #JDownloader2

#choco install tigervnc --yes #TigerVNC

#choco install transmission --yes # Transmission (BitTorrent client) - Duplicate, consider removing one.

#choco install musicbee --yes # MusicBee



REM  Office Suites:-----------------------------------------------------------------------------


#choco install LibreOffice --yes # LibreOffice

#choco install officeproplus2013 --yes #Microsoft Office 2013 ProPlus (requires license key)

#choco install office2019proplus --yes #Microsoft Office 2019 ProPlus (requires license key)

#choco install office365proplus --yes #Microsoft Office 365 ProPlus (requires license key)

#choco install wps-office-free --yes # WPS Office Free

#choco install kingsoft-office-free --yes # Kingsoft Office Free - Duplicate, consider removing one.

#choco install libreoffice-fresh --yes # LibreOffice Fresh

#choco install freeoffice --yes # FreeOffice

#choco install onlyoffice --yes # OnlyOffice



REM  IM & Communication:-----------------------------------------------------------------------------

#choco install telegram --yes # Telegram - Duplicate, consider removing one.

del C:\Users\Public\Desktop\ChocoSoft.bat

exit
