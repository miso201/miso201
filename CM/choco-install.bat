@echo off
mode con: cols=15 lines=1



REM  Browsers:-----------------------------------------------------------------------------


REM  choco install googlechrome --yes REM   Google Chrome

REM  choco install firefox --yes REM   Mozilla Firefox

REM  choco install brave --yes REM   Brave Browser

REM  choco install Vivaldi --yes REM   Vivaldi Browser

REM  choco install waterfox --yes REM   Waterfox Browser (Privacy-focused)

REM  choco install microsoft-edge --yes REM   Microsoft Edge

REM  choco install opera-gx --yes REM   Opera GX (Gamer-oriented)

REM  choco install opera --yes REM   Opera Browser

REM  choco install tor-browser --yes REM   Tor Browser

REM  choco install ungoogled-chromium --yes REM   Chromium without Google's tracking

REM  choco install chromium --yes REM   Chromium open-source browser

REM  choco install maxthon --yes REM   Maxthon Browser

REM  choco install centbrowser --yes REM   Cent Browser

REM  choco install yandex-browser --yes REM   Yandex Browser



REM  Multimedia:-----------------------------------------------------------------------------


choco install vlc --yes REM   VLC media player
del "C:\Users\Public\Desktop\VLC media player.lnk"

REM  choco install kodi --yes REM   Kodi (Media center)

REM  choco install spotify --yes REM   Spotify Music

REM  choco install clementine --yes REM   Clementine Music Player

REM  choco install bsplayer --yes REM   BSPlayer (Media Player)

REM  choco install winamp --yes REM   Winamp (Media Player)

REM  choco install potplayer --yes REM   PotPlayer (Media Player)

REM  choco install k-litecodecpackfull --yes REM   K-Lite Codec Pack (Full)

REM  choco install k-litecodecpackmega --yes REM   K-Lite Codec Pack (Mega)

REM  choco install gom-player --yes REM  GOM Player

REM  choco install smplayer --yes REM  SMPlayer

REM  choco install smtube --yes REM   SMTube (YouTube downloader)

REM  choco install aimp --yes REM  AIMP



REM  Development Tools:-----------------------------------------------------------------------------


REM  choco install vscode --yes REM   Visual Studio Code: Lightweight code editor

REM  choco install androidstudio --yes REM   Android Studio

REM  choco install intellijidea-ultimate --yes REM   IntelliJ IDEA Ultimate

REM  choco install intellijidea-community --yes REM   IntelliJ IDEA Community

REM  choco install sublimetext3.app --yes REM  Sublime Text 3

REM  choco install vscodium.install --yes REM   VS Codium



REM  Utilities:-----------------------------------------------------------------------------


REM  choco install foxitreader --yes REM   Foxit Reader (PDF reader)

choco install notepadplusplus.install --yes REM   Notepad++

REM  choco install WinRAR --yes REM   WinRAR (Archive Manager)

REM  choco install 7zip-zstd --yes REM   7-Zip with Zstandard support

REM  choco install peazip.install --yes REM   PeaZip (Archive Manager)

REM  choco install bandizip --yes REM   Bandizip (Archive Manager)

REM  choco install freearc.install --yes REM   FreeArc (Archive Manager)

REM  choco install everything --yes REM   Everything (File search)

REM  choco install iobit-uninstaller --yes REM   IObit Uninstaller

REM  choco install cheatengine --yes REM   Cheat Engine

REM  choco install ultraedit --yes REM   UltraEdit

REM  choco install winmerge --yes REM   WinMerge (File comparator)

choco install io-unlocker --yes REM   IO Unlocker
del "C:\Users\Public\Desktop\IObit Unlocker.lnk"

REM  choco install ultrasearch --yes REM   UltraSearch

REM  choco install teracopy --yes REM   TeraCopy

REM  choco install totalcommander --yes REM   Total Commander

REM  choco install rdm --yes REM   Remote Desktop Manager

REM  choco install glaryutilities-free --yes REM   Glary Utilities Free

REM  choco install defraggler --yes REM   Defraggler

REM  choco install treesize --yes REM   TreeSize

REM  choco install revo-uninstaller --yes REM   Revo Uninstaller



REM  Networking & Remote Access:-----------------------------------------------------------------------------


REM  choco install chrome-remote-desktop-host --yes REM   Chrome Remote Desktop Host

REM  choco install filezilla --yes REM   FileZilla (FTP client)

REM  choco install putty.install --yes REM   PuTTY (SSH client)

REM  choco install winscp.install --yes REM   WinSCP (SCP/SFTP client)
REM  del "C:\Users\Public\Desktop\WinSCP.lnk"

REM  choco install openssh --yes REM   OpenSSH
REM  Start-Service sshd REM   Start the OpenSSH server
REM  Set-Service -Name sshd -StartupType Automatic REM   Ensure it starts automatically on boot

REM  choco install wireshark --yes REM   Wireshark (Network protocol analyzer)

REM  choco install wget --yes REM   wget (Download utility)

REM  choco install protonvpn --yes REM   ProtonVPN

REM  choco install openvpn --yes REM   OpenVPN

REM  choco install nomachine --yes REM   NoMachine (Remote desktop)

REM  choco install vnc-viewer --yes REM   VNC Viewer

REM  choco install openvpn-connect --yes REM   OpenVPN Connect

REM  choco install ultravnc --yes REM   UltraVNC

REM  choco install teamviewer9 --yes REM  TeamViewer 9

REM  choco install anydesk.install --yesREM  AnyDesk

REM  choco install ultraviewer.install --yes REM  UltraViewer

REM  choco install parsec --yes REM  Parsec

REM  choco install teamviewer --yes REM  TeamViewer

REM  choco install remote-desktop-client --yes REM   Remote Desktop Client

REM  choco install mremoteng --yes REM   mRemoteNG

REM  choco install vnc-connect --yes REM  VNC Connect

REM  choco install 1remote --yes REM  1Remote

REM  choco install splashtop-personal --yes REM  Splashtop Personal

REM  choco install rustdesk.install --yes REM  RustDesk



REM  Image & Graphics:-----------------------------------------------------------------------------


REM  choco install gimp --yes REM   GIMP (Image editor)

REM  choco install inkscape --yes REM   Inkscape (Vector graphics editor)

REM  choco install paint.net --yes REM   Paint.NET (Image editor)

REM  choco install imagemagick --yes REM   ImageMagick (Image manipulation)

REM  choco install xnview --yes REM   XnView (Image viewer)

REM  choco install xnviewmp --yes REM   XnView MP (Image viewer)

REM  choco install darktable --yes REM   Darktable (Photo editor)



REM  Video & Audio:-----------------------------------------------------------------------------


REM  choco install ffmpeg-full --yes REM   FFmpeg (Full package)

REM  choco install handbrake.install --yes REM   HandBrake (Video transcoder)

REM  choco install freemake-video-converter --yes REM   Freemake Video Converter

REM  choco install aegisub --yes REM   Aegisub (Subtitle editor)

REM  choco install 4k-youtube-to-mp3 --yes REM   4K YouTube to MP3



REM  Virtualization & System:-----------------------------------------------------------------------------


REM  choco install virtualbox --yes REM   VirtualBox
REM  choco install virtualbox-guest-additions-guest.install
REM  del "C:\Users\Public\Desktop\Oracle VirtualBox.lnk"

REM  choco install vmwareworkstation --yes REM   VMware Workstation

REM  choco install qemu --yes REM   QEMU (Emulator)

REM  choco install wsl2 --yes REM   Windows Subsystem for Linux 2

REM  choco install imdisk-toolkit --yes REM   ImDisk Toolkit

REM  choco install cygwin --yes REM   Cygwin (Unix environment)

REM  choco install cyg-get --yes REM   Cygwin package manager

REM  choco install winpcap --yes REM   WinPcap (Network packet capture)

REM  choco install nmap --yes REM   Nmap (Network scanner)

REM  choco install hwmonitor --yes REM   HWMonitor (Hardware monitoring)

REM  choco install processhacker.install --yes REM   Process Hacker



REM  Other Software:-----------------------------------------------------------------------------


REM  choco install sqlitebrowser --yes REM   SQLite Browser

REM  choco install wechat --yes REM   WeChat

REM  choco install discord.install --yes REM   Discord

REM  choco install line --yes REM   LINE

REM  choco install screamer --yes REM   Screamer (Screen recorder)

REM  choco install burp-suite-free-edition --yes REM   Burp Suite Free Edition

REM  choco install sumatrapdf.install --yes REM   SumatraPDF

REM  choco install openssl --yes REM   OpenSSL

REM  choco install winget-cli --yes REM   winget (Windows Package Manager)

REM  choco install audacity --yes REM   Audacity (Audio editor)

REM  choco install googleearthpro --yes REM   Google Earth Pro

REM  choco install googleearth --yes REM   Google Earth

REM  choco install javaruntime --yes REM   Java Runtime Environment

REM  choco install webtorrent-desktop --yes REM   WebTorrent Desktop

REM  choco install vuzeclient --yes REM   Vuze Client

REM  choco install rufus.install --yes REM   Rufus (USB bootable creator)

REM  choco install universal-usb-installer --yes REM   Universal USB Installer

REM  choco install aida64-extreme --yes REM   AIDA64 Extreme

REM  choco install linux-reader --yes REM   Linux Reader

REM  choco install freedownloadmanager --yes REM   Free Download Manager

REM  choco install bluestacks --yes REM   BlueStacks

REM  choco install amiduos --yes REM   AMIDuOS

REM  choco install ppsspp --yes REM   PPSSPP

REM  choco install adobeair --yes REM   Adobe AIR

REM  choco install tapwindows --yes REM   Tap-Windows

REM  choco install visualstudio2019buildtools --yes REM   Visual Studio 2019 Build Tools

REM  choco install python3 --yes REM   Python 3

REM  choco install ruby --yes REM   Ruby

REM  choco install directx-sdk --yes REM   DirectX SDK

REM  choco install twitch --yes REM   Twitch

REM  choco install uniextract --yes REM   UniExtract

REM  choco install opentoonz --yes REM   OpenToonz

REM  choco install synfig --yes REM   Synfig Studio (2D animation)

REM  choco install steamcmd --yes REM   SteamCMD

REM  choco install wingetui --yes REM   Winget UI

REM  choco install explorerplusplus --yes REM   Explorer++

REM  choco install afedteated --yes REM   (Unknown - needs clarification)

REM  choco install tempfilecleaner.app --yes REM  Temp File Cleaner

REM  choco install transgui --yes REM  TransGUI

REM  choco install captura --yes REM  Captura

REM  choco install ultraiso --yes REM  UltraISO

REM  choco install cloneapp --yes REM  CloneApp

REM  choco install avginternetsecurity --yes REM  AVG Internet Security

REM  choco install rockstar-launcher --yes REM   Rockstar Games Launcher

REM  choco install xnconvert.install --yes REM   XnConvert

REM  choco install dismplusplus --yes REM   DISM++

REM  choco install youtube-dl-gui --yes REM   youtube-dl-gui

REM  choco install x2go --yes REM   x2go

REM  choco install virtualclonedrive --yes REM   Virtual CloneDrive

REM  choco install megasync --yes REM   MegaSync

REM  choco install telegram.install --yes REM   Telegram

REM  choco install github-desktop --yes REM   GitHub Desktop

REM  choco install gh --yes REM   GitHub CLI

REM  choco install docker-cli --yes REM   Docker CLI

REM  choco install cpu-z.install --yes REM   CPU-Z

REM  choco install discord --yes REM   Discord - Duplicate, consider removing one.

REM  choco install steam --yes REM   Steam

REM  choco install obs-studio --yes REM   OBS Studio

REM  choco install mkvtoolnix --yes REM   MKVToolNix

REM  choco install shotcut.install --yes REM   Shotcut

REM  choco install kitty --yes REM   Kitty (Terminal emulator)

REM  choco install epicgameslauncher --yes REM   Epic Games Launcher

REM  choco install viber --yes REM   Viber

REM  choco install nirlauncher --yes REM   NirLauncher

REM  choco install nanazip --yes REM   NanaZip

REM  choco install smartftp --yes REM   SmartFTP

REM  choco install wincdemu --yes REM   WinCDEmu

REM  choco install advanced-installer --yes REM   Advanced Installer

REM  choco install flutter --yes REM   Flutter SDK

REM  choco install openjdk13 --yes REM   OpenJDK 13

REM  choco install poweriso --yes REM   PowerISO

REM  choco install driverbooster --yes REM   Driver Booster

REM  choco install cmake.portable --yes REM   CMake Portable

REM  choco install nitroreader.install --yes REM   Nitro Reader

REM  choco install filezilla.server --yes REM   FileZilla Server

REM  choco install apktool --yes REM   Apktool

REM  choco install avgantivirusfree --yes REM   AVG Antivirus Free

REM  choco install angryip --yes REM   Angry IP Scanner

REM  choco install qdir --yes REM   QDir

REM  choco install ventoy --yes REM   Ventoy

REM  choco install 4k-video-downloader --yes REM   4K Video Downloader

REM  choco install windowsrepair --yes REM   Windows Repair

REM  choco install bitdefenderavfree --yes REM   Bitdefender Antivirus Free Edition

REM  choco install avidemux --yes REM   Avidemux

REM  choco install notepadreplacer --yes REM  Notepad Replacer

REM  choco install jdownloader --yes REM  JDownloader2

REM  choco install tigervnc --yes REM  TigerVNC

REM  choco install transmission --yes REM   Transmission (BitTorrent client) - Duplicate, consider removing one.

REM  choco install musicbee --yes REM   MusicBee



REM  Office Suites:-----------------------------------------------------------------------------


REM  choco install LibreOffice --yes REM   LibreOffice

REM  choco install officeproplus2013 --yes REM  Microsoft Office 2013 ProPlus (requires license key)

REM  choco install office2019proplus --yes REM  Microsoft Office 2019 ProPlus (requires license key)

REM  choco install office365proplus --yes REM  Microsoft Office 365 ProPlus (requires license key)

REM  choco install wps-office-free --yes REM   WPS Office Free

REM  choco install kingsoft-office-free --yes REM   Kingsoft Office Free - Duplicate, consider removing one.

REM  choco install libreoffice-fresh --yes REM   LibreOffice Fresh

REM  choco install freeoffice --yes REM   FreeOffice

REM  choco install onlyoffice --yes REM   OnlyOffice



REM  IM & Communication:-----------------------------------------------------------------------------

REM  choco install telegram --yes REM   Telegram - Duplicate, consider removing one.

del C:\Users\Public\Desktop\ChocoSoft.bat

del "C:\Users\runneradmin\Desktop\WinRAR   .lnk" "C:\Users\runneradmin\Desktop\Internet Download Manager.lnk" "C:\Users\Public\Desktop\VLC media player.lnk" C:\Users\Public\Desktop\UltraISO.lnk C:\Users\Public\Desktop\PowerISO.lnk

curl -L -o End.bat "https://raw.githubusercontent.com/zeen20/SoftMee/refs/heads/main/End.bat"
REM start End.bat


exit
