@echo off
setlocal enabledelayedexpansion

:: Check if Chocolatey is installed
choco -v >nul 2>&1
if %errorlevel% neq 0 (
    echo Chocolatey is not installed. Please install it first.
    pause
    exit /b
)

:menu
cls
echo ========================================================
echo                 SOFTWARE MANAGEMENT TOOL
echo ========================================================
echo.
echo Select an option:
echo [1] Install software
echo [2] Install software by category
echo [3] Uninstall software
echo [4] Search for software
echo [0] Exit
echo.
set /p choice="Enter your choice (0-4): "

if "%choice%"=="1" goto install
if "%choice%"=="2" goto install_category
if "%choice%"=="3" goto uninstall
if "%choice%"=="4" goto search
if "%choice%"=="0" exit /b
echo Invalid choice. Please try again.
pause
goto menu

:install
cls
echo ========================================================
echo                   INSTALL SOFTWARE
echo ========================================================
echo.
set /p packages="Enter the software names to install (comma-separated): "
for %%A in (%packages%) do (
    echo Installing %%A...
    choco install %%A -y
    if !errorlevel! neq 0 (
        echo Failed to install %%A.
    ) else (
        echo %%A installed successfully.
    )
)
pause
goto menu

:install_category
cls
echo ========================================================
echo           INSTALL SOFTWARE BY CATEGORY
echo ========================================================
echo.
echo Select a category:
echo [1] Development Tools
echo [2] Media Tools
echo [3] System Utilities
echo [4] Web Browsers
echo [5] Gaming Tools
echo [6] Productivity Tools
echo [7] Graphic Design and CAD
echo [8] Security Tools
echo [9] Network Tools
echo [10] Education and Learning
echo [11] Audio Tools
echo [12] Virtualization and Cloud
echo [13] Database Tools
echo [14] Backup and Recovery
echo [15] File Management
echo [16] Cloud Storage
echo [17] Miscellaneous
echo [0] Back to Main Menu
echo.
set /p category="Enter your category choice (0-17): "

if "%category%"=="1" goto dev_tools
if "%category%"=="2" goto media_tools
if "%category%"=="3" goto system_utilities
if "%category%"=="4" goto web_browsers
if "%category%"=="5" goto gaming_tools
if "%category%"=="6" goto productivity_tools
if "%category%"=="7" goto graphic_design_and_cad
if "%category%"=="8" goto security_tools
if "%category%"=="9" goto network_tools
if "%category%"=="10" goto education_tools
if "%category%"=="11" goto audio_tools
if "%category%"=="12" goto virtualization_and_cloud_tools
if "%category%"=="13" goto database_tools
if "%category%"=="14" goto backup_tools
if "%category%"=="15" goto file_management_tools
if "%category%"=="16" goto cloud_storage_tools
if "%category%"=="17" goto miscellaneous_tools
if "%category%"=="0" goto menu
echo Invalid choice. Please try again.
pause
goto install_category

:: DEVELOPMENT TOOLS
:dev_tools
cls
echo ========================================================
echo                  DEVELOPMENT TOOLS - INSTALL
echo ========================================================
echo [1] Visual Studio Code      [2] Sublime Text          [3] IntelliJ IDEA
echo [4] Eclipse                 [5] PyCharm               [6] Visual Studio
echo [7] Atom                    [8] Notepad++             [9] NetBeans
echo [10] Xcode                  [11] Brackets             [12] PhpStorm
echo [13] Vagrant                [14] Docker               [15] Kubernetes CLI
echo [16] Git                    [17] Node.js              [18] Ruby
echo [19] Go                      [20] Rust                 [21] Java
echo [22] C++                    [23] C#                    [24] PHP
echo [25] Python                 [26] Android Studio       [27] Flutter
echo [28] Composer               [29] Postman              [30] MongoDB Compass
echo [31] JDK                    [32] SQLite3              [33] MySQL Workbench
echo [34] MariaDB Workbench      [35] Redis                 [36] Apache Maven
echo [37] Gradle                 [38] Yarn                  [39] npm
echo [40] NuGet                  [41] Docker Compose       [42] VSCodium
echo [43] Code::Blocks           [44] WebStorm             [45] Brackets
echo [46] RStudio                [47] IntelliJ IDEA Ultimate [48] CLion
echo [49] Webpack                [50] React                 [51] Angular CLI
echo [0] Back to Categories
echo.
set /p dev_choice="Enter your choice: "
if "%dev_choice%"=="1" choco install vscode -y
if "%dev_choice%"=="2" choco install sublime-text -y
if "%dev_choice%"=="3" choco install intellijidea -y
if "%dev_choice%"=="4" choco install eclipse -y
if "%dev_choice%"=="5" choco install pycharm -y
if "%dev_choice%"=="6" choco install visualstudio -y
if "%dev_choice%"=="7" choco install atom -y
if "%dev_choice%"=="8" choco install notepadplusplus -y
if "%dev_choice%"=="9" choco install netbeans -y
if "%dev_choice%"=="10" choco install xcode -y
if "%dev_choice%"=="11" choco install brackets -y
if "%dev_choice%"=="12" choco install phpstorm -y
if "%dev_choice%"=="13" choco install vagrant -y
if "%dev_choice%"=="14" choco install docker-desktop -y
if "%dev_choice%"=="15" choco install kubernetes-cli -y
if "%dev_choice%"=="16" choco install git -y
if "%dev_choice%"=="17" choco install nodejs -y
if "%dev_choice%"=="18" choco install ruby -y
if "%dev_choice%"=="19" choco install golang -y
if "%dev_choice%"=="20" choco install rust -y
if "%dev_choice%"=="21" choco install jdk8 -y
if "%dev_choice%"=="22" choco install mingw -y
if "%dev_choice%"=="23" choco install dotnetcore-sdk -y
if "%dev_choice%"=="24" choco install php -y
if "%dev_choice%"=="25" choco install python -y
if "%dev_choice%"=="26" choco install androidstudio -y
if "%dev_choice%"=="27" choco install flutter -y
if "%dev_choice%"=="28" choco install composer -y
if "%dev_choice%"=="29" choco install postman -y
if "%dev_choice%"=="30" choco install mongodb-compass -y
if "%dev_choice%"=="31" choco install jdk8 -y
if "%dev_choice%"=="32" choco install sqlite -y
if "%dev_choice%"=="33" choco install mysql-workbench -y
if "%dev_choice%"=="34" choco install mariadb-workbench -y
if "%dev_choice%"=="35" choco install redis -y
if "%dev_choice%"=="36" choco install maven -y
if "%dev_choice%"=="37" choco install gradle -y
if "%dev_choice%"=="38" choco install yarn -y
if "%dev_choice%"=="39" choco install npm -y
if "%dev_choice%"=="40" choco install nuget -y
if "%dev_choice%"=="41" choco install docker-compose -y
if "%dev_choice%"=="42" choco install vscodium -y
if "%dev_choice%"=="43" choco install codeblocks -y
if "%dev_choice%"=="44" choco install webstorm -y
if "%dev_choice%"=="45" choco install brackets -y
if "%dev_choice%"=="46" choco install rstudio -y
if "%dev_choice%"=="47" choco install intellij-idea-ultimate -y
if "%dev_choice%"=="48" choco install clion -y
if "%dev_choice%"=="49" choco install webpack -y
if "%dev_choice%"=="50" choco install react -y
if "%dev_choice%"=="51" choco install angular-cli -y
if "%dev_choice%"=="0" goto install_category
goto dev_tools


:: MEDIA TOOLS
:media_tools
cls
echo ========================================================
echo                 MEDIA TOOLS - INSTALL
echo ========================================================
echo [1] VLC Media Player        [2] Winamp                [3] MediaMonkey
echo [4] KMPlayer                [5] PotPlayer             [6] Plex Media Server
echo [7] OBS Studio              [8] Audacity              [9] HandBrake
echo [10] GIMP                   [11] Shotcut              [12] DaVinci Resolve
echo [13] Lightworks             [14] Filmora               [15] FFMpeg
echo [16] Inkscape               [17] Avidemux             [18] Adobe Premiere Pro
echo [19] Adobe After Effects    [20] Final Cut Pro        [21] Camtasia
echo [22] ScreenFlow             [23] Bandicam              [24] Movie Maker
echo [25] iTunes                 [26] Windows Media Player  [27] QuickTime Player
echo [28] RealPlayer             [0] Back to Categories
echo.
set /p media_choice="Enter your choice: "
if "%media_choice%"=="1" choco install vlc -y
if "%media_choice%"=="2" choco install winamp -y
if "%media_choice%"=="3" choco install mediamonkey -y
if "%media_choice%"=="4" choco install kmplayer -y
if "%media_choice%"=="5" choco install potplayer -y
if "%media_choice%"=="6" choco install plex-media-server -y
if "%media_choice%"=="7" choco install obs-studio -y
if "%media_choice%"=="8" choco install audacity -y
if "%media_choice%"=="9" choco install handbrake -y
if "%media_choice%"=="10" choco install gimp -y
if "%media_choice%"=="11" choco install shotcut -y
if "%media_choice%"=="12" choco install davinci-resolve -y
if "%media_choice%"=="13" choco install lightworks -y
if "%media_choice%"=="14" choco install filmora -y
if "%media_choice%"=="15" choco install ffmpeg -y
if "%media_choice%"=="16" choco install inkscape -y
if "%media_choice%"=="17" choco install avidemux -y
if "%media_choice%"=="18" choco install adobe-premiere-pro -y
if "%media_choice%"=="19" choco install adobe-after-effects -y
if "%media_choice%"=="20" choco install final-cut-pro -y
if "%media_choice%"=="21" choco install camtasia -y
if "%media_choice%"=="22" choco install screenflow -y
if "%media_choice%"=="23" choco install bandicam -y
if "%media_choice%"=="24" choco install movie-maker -y
if "%media_choice%"=="25" choco install itunes -y
if "%media_choice%"=="26" choco install windows-media-player -y
if "%media_choice%"=="27" choco install quicktime -y
if "%media_choice%"=="28" choco install realplayer -y
if "%media_choice%"=="0" goto install_category
goto media_tools


:: SYSTEM UTILITIES
:system_utilities
cls
echo ========================================================
echo           SYSTEM UTILITIES - INSTALL
echo ========================================================
echo [1] 7-Zip                  [2] CCleaner             [3] WinRAR
echo [4] Revo Uninstaller        [5] AnyDesk             [6] VirtualBox
echo [7] TeamViewer             [8] Malwarebytes         [9] Norton Antivirus
echo [10] System Mechanic        [0] Back to Categories
echo.
set /p util_choice="Enter your choice: "
if "%util_choice%"=="1" choco install 7zip -y
if "%util_choice%"=="2" choco install ccleaner -y
if "%util_choice%"=="3" choco install winrar -y
if "%util_choice%"=="4" choco install revo-uninstaller -y
if "%util_choice%"=="5" choco install anydesk -y
if "%util_choice%"=="6" choco install virtualbox -y
if "%util_choice%"=="7" choco install teamviewer -y
if "%util_choice%"=="8" choco install malwarebytes -y
if "%util_choice%"=="9" choco install norton -y
if "%util_choice%"=="10" choco install system-mechanic -y
if "%util_choice%"=="0" goto install_category
goto system_utilities


:: SYSTEM UTILITIES
:system_utilities
cls
echo ========================================================
echo               SYSTEM UTILITIES - INSTALL
echo ========================================================
echo [1] CCleaner               [2] Revo Uninstaller           [3] Glary Utilities
echo [4] Wise Disk Cleaner      [5] Advanced SystemCare        [6] IObit Uninstaller
echo [7] Malwarebytes           [8] System Mechanic            [9] Disk Drill
echo [10] Driver Booster        [11] Auslogics Disk Defrag     [12] Defraggler
echo [13] Speccy                [14] TreeSize                  [15] CleanMyPC
echo [16] PowerShell            [17] HWiNFO                    [18] CPU-Z
echo [19] Process Explorer      [20] Task Manager              [21] Process Hacker
echo [22] Autoruns              [23] Windows Performance Toolkit [24] RAMMap
echo [25] Startup Delayer       [26] Bulk Crap Uninstaller     [27] MiniTool Partition Wizard
echo [28] WinDirStat             [29] WinCDEmu                 [30] Macrium Reflect
echo [31] Clonezilla             [32] Partition Magic          [33] Acronis True Image
echo [34] DiskGenius             [35] Bandizip                 [36] 7-Zip
echo [37] WinRAR                 [38] PeaZip                   [39] PowerISO
echo [40] ISO Workshop           [41] VirtualBox               [42] VMware Workstation
echo [43] Hyper-V                [44] Docker                   [45] Kubernetes
echo [46] Rufus                  [47] System Resurrector       [48] Boot Repair Disk
echo [49] Redgate SQL Toolbelt   [50] Paragon Backup           [51] FastCopy
echo [52] CloneApp               [53] Disk Cleanup             [54] System Restore
echo [55] SSD Optimization       [56] CPU Tweaker              [57] GPU-Z
echo [58] FileHippo App Manager  [59] Patch My PC              [60] Windows Repair Toolbox
echo [61] Driver Easy            [62] DriverPack Solution      [63] DDU (Display Driver Uninstaller)
echo [64] Windows 10 Update Assistant [65] ReImage Repair      [66] WinUpdateFix
echo [67] O&O ShutUp10           [68] IObit Advanced SystemCare [69] Windows Repair
echo [70] 7-Zip                  [71] CCleaner                 [72] WinRAR
echo [73] Revo Uninstaller       [74] AnyDesk                  [75] VirtualBox
echo [76] TeamViewer             [//] Malwarebytes             [78] Norton Antivirus
echo [0] Back to Categories
echo.
set /p system_utilities_choice="Enter your choice: "
if "%system_utilities_choice%"=="1" choco install ccleaner -y
if "%system_utilities_choice%"=="2" choco install revo-uninstaller -y
if "%system_utilities_choice%"=="3" choco install glary-utilities -y
if "%system_utilities_choice%"=="4" choco install wise-disk-cleaner -y
if "%system_utilities_choice%"=="5" choco install advanced-systemcare -y
if "%system_utilities_choice%"=="6" choco install iobit-uninstaller -y
if "%system_utilities_choice%"=="7" choco install malwarebytes -y
if "%system_utilities_choice%"=="8" choco install system-mechanic -y
if "%system_utilities_choice%"=="9" choco install diskdrill -y
if "%system_utilities_choice%"=="10" choco install driver-booster -y
if "%system_utilities_choice%"=="11" choco install auslogics-disk-defrag -y
if "%system_utilities_choice%"=="12" choco install defraggler -y
if "%system_utilities_choice%"=="13" choco install speccy -y
if "%system_utilities_choice%"=="14" choco install treesize -y
if "%system_utilities_choice%"=="15" choco install cleanmypc -y
if "%system_utilities_choice%"=="16" choco install powershell -y
if "%system_utilities_choice%"=="17" choco install hwinfo -y
if "%system_utilities_choice%"=="18" choco install cpuz -y
if "%system_utilities_choice%"=="19" choco install process-explorer -y
if "%system_utilities_choice%"=="20" choco install taskmanager -y
if "%system_utilities_choice%"=="21" choco install processhacker -y
if "%system_utilities_choice%"=="22" choco install autoruns -y
if "%system_utilities_choice%"=="23" choco install windows-performance-toolkit -y
if "%system_utilities_choice%"=="24" choco install rammap -y
if "%system_utilities_choice%"=="25" choco install startup-delayer -y
if "%system_utilities_choice%"=="26" choco install bulk-crap-uninstaller -y
if "%system_utilities_choice%"=="27" choco install minitool-partition-wizard -y
if "%system_utilities_choice%"=="28" choco install windirstat -y
if "%system_utilities_choice%"=="29" choco install wincdemu -y
if "%system_utilities_choice%"=="30" choco install macrium-reflect -y
if "%system_utilities_choice%"=="31" choco install clonezilla -y
if "%system_utilities_choice%"=="32" choco install partition-magic -y
if "%system_utilities_choice%"=="33" choco install acronis-true-image -y
if "%system_utilities_choice%"=="34" choco install diskgenius -y
if "%system_utilities_choice%"=="35" choco install bandizip -y
if "%system_utilities_choice%"=="36" choco install 7zip -y
if "%system_utilities_choice%"=="37" choco install winrar -y
if "%system_utilities_choice%"=="38" choco install peazip -y
if "%system_utilities_choice%"=="39" choco install poweriso -y
if "%system_utilities_choice%"=="40" choco install isoworkshop -y
if "%system_utilities_choice%"=="41" choco install virtualbox -y
if "%system_utilities_choice%"=="42" choco install vmware-workstation -y
if "%system_utilities_choice%"=="43" choco install hyper-v -y
if "%system_utilities_choice%"=="44" choco install docker -y
if "%system_utilities_choice%"=="45" choco install kubernetes -y
if "%system_utilities_choice%"=="46" choco install rufus -y
if "%system_utilities_choice%"=="47" choco install system-resurrector -y
if "%system_utilities_choice%"=="48" choco install boot-repair-disk -y
if "%system_utilities_choice%"=="49" choco install redgate-sql-toolbelt -y
if "%system_utilities_choice%"=="50" choco install paragon-backup -y
if "%system_utilities_choice%"=="51" choco install fastcopy -y
if "%system_utilities_choice%"=="52" choco install cloneapp -y
if "%system_utilities_choice%"=="53" choco install disk-cleanup -y
if "%system_utilities_choice%"=="54" choco install system-restore -y
if "%system_utilities_choice%"=="55" choco install ssd-optimization -y
if "%system_utilities_choice%"=="56" choco install cpu-tweaker -y
if "%system_utilities_choice%"=="57" choco install gpu-z -y
if "%system_utilities_choice%"=="58" choco install filehippo-app-manager -y
if "%system_utilities_choice%"=="59" choco install patch-my-pc -y
if "%system_utilities_choice%"=="60" choco install windows-repair-toolbox -y
if "%system_utilities_choice%"=="61" choco install driver-easy -y
if "%system_utilities_choice%"=="62" choco install driverpack-solution -y
if "%system_utilities_choice%"=="63" choco install ddu -y
if "%system_utilities_choice%"=="64" choco install windows10-update-assistant -y
if "%system_utilities_choice%"=="65" choco install reimage-repair -y
if "%system_utilities_choice%"=="66" choco install winupdatefix -y
if "%system_utilities_choice%"=="67" choco install ooshutup10 -y
if "%system_utilities_choice%"=="68" choco install iobit-advanced-systemcare -y
if "%system_utilities_choice%"=="69" choco install windows-repair -y
if "%system_utilities_choice%"=="70" choco install 7zip -y
if "%system_utilities_choice%"=="71" choco install ccleaner -y
if "%system_utilities_choice%"=="72" choco install winrar -y
if "%system_utilities_choice%"=="73" choco install revo-uninstaller -y
if "%system_utilities_choice%"=="74" choco install anydesk -y
if "%system_utilities_choice%"=="75" choco install virtualbox -y
if "%system_utilities_choice%"=="76" choco install teamviewer -y
if "%system_utilities_choice%"=="77" choco install malwarebytes -y
if "%system_utilities_choice%"=="78" choco install norton -y
if "%system_utilities_choice%"=="79" choco install system-mechanic -y

if "%system_utilities_choice%"=="0" goto install_category

goto system_utilities




:: WEB BROWSERS
:web_browsers
cls
echo ========================================================
echo                  WEB BROWSERS - INSTALL
echo ========================================================
echo [1] Google Chrome         [2] Mozilla Firefox       [3] Microsoft Edge
echo [4] Opera                  [5] Brave                 [6] Vivaldi
echo [7] Safari                 [8] Internet Explorer     [9] Tor Browser
echo [10] Chromium              [11] SRWare Iron          [12] Maxthon
echo [13] Comodo Dragon         [14] Waterfox             [15] Pale Moon
echo [16] Midori                [17] Epic Privacy Browser [18] QuteBrowser
echo [19] Falkon                [20] Lunascape            [21] K-Meleon
echo [22] Otter Browser         [23] UC Browser           [24] Arora
echo [25] Slimjet               [26] Yandex Browser       [27] Coc Coc Browser
echo [28] Cent Browser          [29] GNOME Web            [30] Dooble Browser
echo [31] IceDragon             [32] Librewolf            [33] Pale Moon
echo [34] Falkon                [35] Midori               [36] Konqueror
echo [0] Back to Categories
echo.
set /p browser_choice="Enter your choice: "
if "%browser_choice%"=="1" choco install googlechrome -y
if "%browser_choice%"=="2" choco install firefox -y
if "%browser_choice%"=="3" choco install microsoft-edge -y
if "%browser_choice%"=="4" choco install opera -y
if "%browser_choice%"=="5" choco install brave -y
if "%browser_choice%"=="6" choco install vivaldi -y
if "%browser_choice%"=="7" choco install safari -y
if "%browser_choice%"=="8" choco install ie -y
if "%browser_choice%"=="9" choco install tor-browser -y
if "%browser_choice%"=="10" choco install chromium -y
if "%browser_choice%"=="11" choco install iron -y
if "%browser_choice%"=="12" choco install maxthon -y
if "%browser_choice%"=="13" choco install comodo-dragon -y
if "%browser_choice%"=="14" choco install waterfox -y
if "%browser_choice%"=="15" choco install palemoon -y
if "%browser_choice%"=="16" choco install midori -y
if "%browser_choice%"=="17" choco install epic-privacy-browser -y
if "%browser_choice%"=="18" choco install qutebrowser -y
if "%browser_choice%"=="19" choco install falkon -y
if "%browser_choice%"=="20" choco install lunascape -y
if "%browser_choice%"=="21" choco install kmeleon -y
if "%browser_choice%"=="22" choco install otter-browser -y
if "%browser_choice%"=="23" choco install ucbrowser -y
if "%browser_choice%"=="24" choco install arora -y
if "%browser_choice%"=="25" choco install slimjet -y
if "%browser_choice%"=="26" choco install yandex-browser -y
if "%browser_choice%"=="27" choco install coc-coc -y
if "%browser_choice%"=="28" choco install cent-browser -y
if "%browser_choice%"=="29" choco install gnome-web -y
if "%browser_choice%"=="30" choco install dooble -y
if "%browser_choice%"=="31" choco install icedragon -y
if "%browser_choice%"=="32" choco install librewolf -y
if "%browser_choice%"=="33" choco install palemoon -y
if "%browser_choice%"=="34" choco install falkon -y
if "%browser_choice%"=="35" choco install midori -y
if "%browser_choice%"=="36" choco install konqueror -y
if "%browser_choice%"=="0" goto install_category
goto web_browsers


:: GAMING TOOLS
:gaming_tools
cls
echo ========================================================
echo                     GAMING TOOLS - INSTALL
echo ========================================================
echo [1] Steam                   [2] Epic Games Launcher   [3] Origin
echo [4] GOG Galaxy               [5] Uplay                  [6] Discord
echo [7] Twitch                   [8] Battle.net             [9] Razer Synapse
echo [10] MSI Afterburner         [11] GeForce Experience    [12] Xbox App
echo [13] OBS Studio              [14] Fraps                 [15] Game Bar
echo [16] LaunchBox               [17] Rainmeter             [18] Game Maker Studio
echo [19] XSplit                 [20] Virtual Gamepad       [21] Playnite
echo [22] RetroArch               [23] ZDoom                 [24] PPSSPP
echo [25] DOSBox                  [26] SCUMMVM               [27] CEMU
echo [28] RPCS3                   [29] Yuzu                  [30] Citra
echo [31] SteamCMD                [32] Luna Emulator         [33] BlueStacks
echo [34] LDPlayer                [35] NoxPlayer             [36] Memu
echo [37] PlayStation Now         [38] Xbox Game Pass        [39] Twitch Studio
echo [40] VirtualBox              [41] VMWare Workstation    [42] Parsec
echo [43] SteamVR                 [44] OpenVR                [45] VRChat
echo [46] VRidge                  [47] Trinus VR             [48] Bigscreen
echo [49] OBS.Live                [50] GeForce Now           [0] Back to Categories
echo.
set /p gaming_choice="Enter your choice: "
if "%gaming_choice%"=="1" choco install steam -y
if "%gaming_choice%"=="2" choco install epicgames -y
if "%gaming_choice%"=="3" choco install origin -y
if "%gaming_choice%"=="4" choco install gog-galaxy -y
if "%gaming_choice%"=="5" choco install uplay -y
if "%gaming_choice%"=="6" choco install discord -y
if "%gaming_choice%"=="7" choco install twitch -y
if "%gaming_choice%"=="8" choco install battle-net -y
if "%gaming_choice%"=="9" choco install razer-synapse -y
if "%gaming_choice%"=="10" choco install msi-afterburner -y
if "%gaming_choice%"=="11" choco install geforce-experience -y
if "%gaming_choice%"=="12" choco install xbox -y
if "%gaming_choice%"=="13" choco install obs-studio -y
if "%gaming_choice%"=="14" choco install fraps -y
if "%gaming_choice%"=="15" choco install xbox-game-bar -y
if "%gaming_choice%"=="16" choco install launchbox -y
if "%gaming_choice%"=="17" choco install rainmeter -y
if "%gaming_choice%"=="18" choco install gamemaker-studio -y
if "%gaming_choice%"=="19" choco install xsplit -y
if "%gaming_choice%"=="20" choco install virtual-gamepad -y
if "%gaming_choice%"=="21" choco install playnite -y
if "%gaming_choice%"=="22" choco install retroarch -y
if "%gaming_choice%"=="23" choco install zdoom -y
if "%gaming_choice%"=="24" choco install ppsspp -y
if "%gaming_choice%"=="25" choco install dosbox -y
if "%gaming_choice%"=="26" choco install scummvm -y
if "%gaming_choice%"=="27" choco install cemu -y
if "%gaming_choice%"=="28" choco install rpcs3 -y
if "%gaming_choice%"=="29" choco install yuzu -y
if "%gaming_choice%"=="30" choco install citra -y
if "%gaming_choice%"=="31" choco install steamcmd -y
if "%gaming_choice%"=="32" choco install luna-emulator -y
if "%gaming_choice%"=="33" choco install bluestacks -y
if "%gaming_choice%"=="34" choco install ldplayer -y
if "%gaming_choice%"=="35" choco install noxplayer -y
if "%gaming_choice%"=="36" choco install memu -y
if "%gaming_choice%"=="37" choco install playstation-now -y
if "%gaming_choice%"=="38" choco install xbox-game-pass -y
if "%gaming_choice%"=="39" choco install twitch-studio -y
if "%gaming_choice%"=="40" choco install virtualbox -y
if "%gaming_choice%"=="41" choco install vmware -y
if "%gaming_choice%"=="42" choco install parsec -y
if "%gaming_choice%"=="43" choco install steamvr -y
if "%gaming_choice%"=="44" choco install openvr -y
if "%gaming_choice%"=="45" choco install vrchat -y
if "%gaming_choice%"=="46" choco install vridge -y
if "%gaming_choice%"=="47" choco install trinusvr -y
if "%gaming_choice%"=="48" choco install bigscreen -y
if "%gaming_choice%"=="49" choco install obslive -y
if "%gaming_choice%"=="50" choco install geforce-now -y
if "%gaming_choice%"=="0" goto install_category
goto gaming_tools


:: PRODUCTIVITY TOOLS
:productivity_tools
cls
echo ========================================================
echo                 PRODUCTIVITY TOOLS - INSTALL
echo ========================================================
echo [1] Microsoft Office       [2] LibreOffice           [3] Google Docs
echo [4] Evernote               [5] OneNote               [6] Notion
echo [7] Todoist                [8] Trello                [9] Slack
echo [10] Zoom                  [11] Microsoft Teams      [12] Skype
echo [13] Google Keep           [14] Asana                [15] Quip
echo [16] Dropbox Paper         [17] Notion               [18] Miro
echo [19] Monday.com            [20] Basecamp             [21] Airtable
echo [22] Bitwarden              [23] LastPass             [24] NordPass
echo [25] Google Calendar       [26] Apple Calendar       [27] Any.do
echo [28] RescueTime            [29] Focus Booster        [30] Pomodone
echo [31] Toggl                 [32] Clockify             [33] Harvest
echo [34] Freedcamp             [35] Podio                [36] TeamViewer
echo [37] Slack                 [38] ClickUp              [39] Wrike
echo [40] Google Drive          [41] Dropbox              [42] pCloud
echo [43] iCloud                [44] Synology Drive       [45] Box
echo [46] Evernote              [47] Miro                 [48] Microsoft Planner
echo [49] Wunderlist            [50] Todoist              [51] Quire
echo [52] RescueTime            [53] Toggl                [54] Time Doctor
echo [55] Microsoft OneNote     [56] Google Keep          [57] Toodledo
echo [58] Airtable              [59] Zapier               [60] TeamGantt
echo [61] Flock                 [62] Yammer               [63] Google Meet
echo [64] WorkFlowy             [65] Fiddle               [66] Smartsheet
echo [67] SharePoint            [68] Confluence           [69] Box
echo [70] Google Sheets         [71] Microsoft Excel      [72] Microsoft Word
echo [73] Google Slides         [74] PowerPoint           [75] Keynote
echo [0] Back to Categories
echo.
set /p productivity_choice="Enter your choice: "
if "%productivity_choice%"=="1" choco install microsoft-office -y
if "%productivity_choice%"=="2" choco install libreoffice -y
if "%productivity_choice%"=="3" choco install googledocs -y
if "%productivity_choice%"=="4" choco install evernote -y
if "%productivity_choice%"=="5" choco install onenote -y
if "%productivity_choice%"=="6" choco install notion -y
if "%productivity_choice%"=="7" choco install todoist -y
if "%productivity_choice%"=="8" choco install trello -y
if "%productivity_choice%"=="9" choco install slack -y
if "%productivity_choice%"=="10" choco install zoom -y
if "%productivity_choice%"=="11" choco install microsoft-teams -y
if "%productivity_choice%"=="12" choco install skype -y
if "%productivity_choice%"=="13" choco install google-keep -y
if "%productivity_choice%"=="14" choco install asana -y
if "%productivity_choice%"=="15" choco install quip -y
if "%productivity_choice%"=="16" choco install dropbox-paper -y
if "%productivity_choice%"=="17" choco install notion -y
if "%productivity_choice%"=="18" choco install miro -y
if "%productivity_choice%"=="19" choco install monday -y
if "%productivity_choice%"=="20" choco install basecamp -y
if "%productivity_choice%"=="21" choco install airtable -y
if "%productivity_choice%"=="22" choco install bitwarden -y
if "%productivity_choice%"=="23" choco install lastpass -y
if "%productivity_choice%"=="24" choco install nordpass -y
if "%productivity_choice%"=="25" choco install google-calendar -y
if "%productivity_choice%"=="26" choco install apple-calendar -y
if "%productivity_choice%"=="27" choco install anydo -y
if "%productivity_choice%"=="28" choco install rescuetime -y
if "%productivity_choice%"=="29" choco install focus-booster -y
if "%productivity_choice%"=="30" choco install pomodone -y
if "%productivity_choice%"=="31" choco install toggl -y
if "%productivity_choice%"=="32" choco install clockify -y
if "%productivity_choice%"=="33" choco install harvest -y
if "%productivity_choice%"=="34" choco install freedcamp -y
if "%productivity_choice%"=="35" choco install podio -y
if "%productivity_choice%"=="36" choco install teamviewer -y
if "%productivity_choice%"=="37" choco install slack -y
if "%productivity_choice%"=="38" choco install clickup -y
if "%productivity_choice%"=="39" choco install wrike -y
if "%productivity_choice%"=="40" choco install googledrive -y
if "%productivity_choice%"=="41" choco install dropbox -y
if "%productivity_choice%"=="42" choco install pcloud -y
if "%productivity_choice%"=="43" choco install icloud -y
if "%productivity_choice%"=="44" choco install synology-drive -y
if "%productivity_choice%"=="45" choco install box -y
if "%productivity_choice%"=="46" choco install evernote -y
if "%productivity_choice%"=="47" choco install miro -y
if "%productivity_choice%"=="48" choco install microsoft-planner -y
if "%productivity_choice%"=="49" choco install wunderlist -y
if "%productivity_choice%"=="50" choco install todoist -y
if "%productivity_choice%"=="51" choco install quire -y
if "%productivity_choice%"=="52" choco install rescuetime -y
if "%productivity_choice%"=="53" choco install toggl -y
if "%productivity_choice%"=="54" choco install time-doctor -y
if "%productivity_choice%"=="55" choco install onenote -y
if "%productivity_choice%"=="56" choco install google-keep -y
if "%productivity_choice%"=="57" choco install toodledo -y
if "%productivity_choice%"=="58" choco install airtable -y
if "%productivity_choice%"=="59" choco install zapier -y
if "%productivity_choice%"=="60" choco install teamgantt -y
if "%productivity_choice%"=="61" choco install flock -y
if "%productivity_choice%"=="62" choco install yammer -y
if "%productivity_choice%"=="63" choco install googlemeet -y
if "%productivity_choice%"=="64" choco install workflowy -y
if "%productivity_choice%"=="65" choco install fiddle -y
if "%productivity_choice%"=="66" choco install smartsheet -y
if "%productivity_choice%"=="67" choco install sharepoint -y
if "%productivity_choice%"=="68" choco install confluence -y
if "%productivity_choice%"=="69" choco install box -y
if "%productivity_choice%"=="70" choco install googlesheets -y
if "%productivity_choice%"=="71" choco install microsoft-excel -y
if "%productivity_choice%"=="72" choco install microsoft-word -y
if "%productivity_choice%"=="73" choco install googleslides -y
if "%productivity_choice%"=="74" choco install powerpoint -y
if "%productivity_choice%"=="75" choco install keynote -y
if "%productivity_choice%"=="0" goto install_category
goto productivity_tools


:: GRAPHIC DESIGN + CAD
:graphic_design_and_cad
cls
echo ========================================================
echo            GRAPHIC DESIGN + CAD - INSTALL
echo ========================================================
echo [1] Adobe Photoshop          [2] Adobe Illustrator      [3] GIMP
echo [4] CorelDRAW                [5] Inkscape               [6] Sketch
echo [7] Affinity Designer        [8] Blender                [9] Autodesk AutoCAD
echo [10] Rhino3D                 [11] SolidWorks            [12] Fusion 360
echo [13] ZBrush                  [14] Autodesk Maya         [15] Cinema 4D
echo [16] Autodesk 3ds Max        [17] TinkerCAD             [18] Krita
echo [19] Vectr                   [20] Paint.NET             [21] Procreate
echo [22] Serif DrawPlus          [23] OpenSCAD              [24] LightWave 3D
echo [25] SketchUp                 [26] Clip Studio Paint     [27] Marvelous Designer
echo [28] ACDSee                   [29] Lumion                 [30] RhinoCAM
echo [31] ArtCAM                   [32] SketchBook            [33] Alibre Design
echo [34] Modo                     [35] ArtRage               [36] Photopea
echo [37] PCon Planner             [38] FreeCAD               [39] Vectorworks
echo [40] V-Ray                    [41] Revit                 [42] ArchiCAD
echo [43] Solid Edge               [44] CATIA                 [45] Adobe XD
echo [46] Corel Painter            [47] PaintShop Pro         [48] Serif PagePlus
echo [49] ProDesktop               [50] AutoSketch            [51] FormZ
echo [52] AutoCAD LT               [53] Camtasia Studio       [54] FastCAD
echo [55] Clip Studio Paint        [56] Daz Studio            [57] Canva
echo [58] Pixlr                    [59] Autodesk Alias        [60] FreeHand
echo [0] Back to Categories
echo.
set /p graphic_design_choice="Enter your choice: "
if "%graphic_design_choice%"=="1" choco install photoshop -y
if "%graphic_design_choice%"=="2" choco install illustrator -y
if "%graphic_design_choice%"=="3" choco install gimp -y
if "%graphic_design_choice%"=="4" choco install coreldraw -y
if "%graphic_design_choice%"=="5" choco install inkscape -y
if "%graphic_design_choice%"=="6" choco install sketch -y
if "%graphic_design_choice%"=="7" choco install affinity-designer -y
if "%graphic_design_choice%"=="8" choco install blender -y
if "%graphic_design_choice%"=="9" choco install autocad -y
if "%graphic_design_choice%"=="10" choco install rhino3d -y
if "%graphic_design_choice%"=="11" choco install solidworks -y
if "%graphic_design_choice%"=="12" choco install fusion360 -y
if "%graphic_design_choice%"=="13" choco install zbrush -y
if "%graphic_design_choice%"=="14" choco install maya -y
if "%graphic_design_choice%"=="15" choco install cinema4d -y
if "%graphic_design_choice%"=="16" choco install 3dsmax -y
if "%graphic_design_choice%"=="17" choco install tinkercad -y
if "%graphic_design_choice%"=="18" choco install krita -y
if "%graphic_design_choice%"=="19" choco install vectr -y
if "%graphic_design_choice%"=="20" choco install paintnet -y
if "%graphic_design_choice%"=="21" choco install procreate -y
if "%graphic_design_choice%"=="22" choco install serif-drawplus -y
if "%graphic_design_choice%"=="23" choco install openscad -y
if "%graphic_design_choice%"=="24" choco install lightwave -y
if "%graphic_design_choice%"=="25" choco install sketchup -y
if "%graphic_design_choice%"=="26" choco install clipstudiopaint -y
if "%graphic_design_choice%"=="27" choco install marvelous-designer -y
if "%graphic_design_choice%"=="28" choco install acdsee -y
if "%graphic_design_choice%"=="29" choco install lumion -y
if "%graphic_design_choice%"=="30" choco install rhinocam -y
if "%graphic_design_choice%"=="31" choco install artcam -y
if "%graphic_design_choice%"=="32" choco install sketchbook -y
if "%graphic_design_choice%"=="33" choco install alibredesign -y
if "%graphic_design_choice%"=="34" choco install modo -y
if "%graphic_design_choice%"=="35" choco install artrage -y
if "%graphic_design_choice%"=="36" choco install photopea -y
if "%graphic_design_choice%"=="37" choco install pcon-planner -y
if "%graphic_design_choice%"=="38" choco install freecad -y
if "%graphic_design_choice%"=="39" choco install vectorworks -y
if "%graphic_design_choice%"=="40" choco install vray -y
if "%graphic_design_choice%"=="41" choco install revit -y
if "%graphic_design_choice%"=="42" choco install archicad -y
if "%graphic_design_choice%"=="43" choco install solid-edge -y
if "%graphic_design_choice%"=="44" choco install catia -y
if "%graphic_design_choice%"=="45" choco install adobexd -y
if "%graphic_design_choice%"=="46" choco install corelpainter -y
if "%graphic_design_choice%"=="47" choco install paintshop-pro -y
if "%graphic_design_choice%"=="48" choco install serif-pageplus -y
if "%graphic_design_choice%"=="49" choco install prodesktop -y
if "%graphic_design_choice%"=="50" choco install autosketch -y
if "%graphic_design_choice%"=="51" choco install formz -y
if "%graphic_design_choice%"=="52" choco install autocadlt -y
if "%graphic_design_choice%"=="53" choco install camtasia -y
if "%graphic_design_choice%"=="54" choco install fastcad -y
if "%graphic_design_choice%"=="55" choco install clipstudiopaint -y
if "%graphic_design_choice%"=="56" choco install dazstudio -y
if "%graphic_design_choice%"=="57" choco install canva -y
if "%graphic_design_choice%"=="58" choco install pixlr -y
if "%graphic_design_choice%"=="59" choco install alias -y
if "%graphic_design_choice%"=="60" choco install freehand -y
if "%graphic_design_choice%"=="0" goto install_category
goto graphic_design_and_cad


:: SECURITY TOOLS
:security_tools
cls
echo ========================================================
echo                  SECURITY TOOLS - INSTALL
echo ========================================================
echo [1] Avast Antivirus            [2] AVG Antivirus            [3] Bitdefender
echo [4] Malwarebytes               [5] Windows Defender         [6] Kaspersky
echo [7] McAfee Antivirus            [8] ESET NOD32               [9] Sophos
echo [10] Avira Antivirus            [11] Norton Antivirus        [12] ZoneAlarm
echo [13] Comodo Firewall            [14] GlassWire               [15] Spybot Search & Destroy
echo [16] CCleaner                   [17] RKill                    [18] HitmanPro
echo [19] AdwCleaner                 [20] Wise Care 365            [21] SuperAntiSpyware
echo [22] Webroot SecureAnywhere     [23] F-Secure                [24] Panda Dome
echo [25] Trend Micro                [26] Bitdefender Anti-Rootkit [27] Heimdal Security
echo [28] ZoneAlarm Free Firewall    [29] FortiClient              [30] CyberGhost VPN
echo [31] Proton VPN                 [32] NordVPN                 [33] ExpressVPN
echo [34] Surfshark VPN              [35] TunnelBear              [36] Windscribe VPN
echo [37] Tor Browser                [38] Wireshark               [39] OpenVPN
echo [40] TrueCrypt                  [41] VeraCrypt               [42] KeePass
echo [43] LastPass                   [44] Dashlane                 [45] 1Password
echo [46] Bitwarden                  [47] RoboForm                [48] KeepassXC
echo [49] Ublock Origin              [50] MalwareFox              [51] WipeDrive
echo [52] Sandboxie                  [53] OpenVAS                 [54] Kali Linux
echo [55] Parrot Security OS         [56] Nessus                   [57] Metasploit Framework
echo [58] Burp Suite                 [59] Nmap                     [60] Nikto
echo [61] John the Ripper            [62] Aircrack-ng              [63] Hydra
echo [64] Hashcat                    [65] Netcat                   [66] Ettercap
echo [67] Snort                      [68] OSSEC                    [69] Suricata
echo [70] Fail2ban                   [71] ClamWin Antivirus        [72] Anubis
echo [73] Shodan                     [74] Security Onion           [75] ZAP Proxy
echo [76] Crowdstrike               [77] Cylance                   [78] Carbon Black
echo [79] Ransomware Removal Tool    [80] Windows Sysinternals     [81] Remote Desktop Firewall
echo [82] SpywareBlaster             [83] Privacy Badger           [84] Bitdefender Antivirus Free
echo [85] McAfee Stinger             [86] Cuckoo Sandbox           [87] Wireshark Portable
echo [88] Emsisoft Emergency Kit     [89] Avast Free Antivirus     [90] F-Secure Online Scanner
echo [91] Kaspersky Virus Removal    [92] Norton Power Eraser      [93] Dr.Web CureIt!
echo [94] Microsoft Safety Scanner   [95] Zemana AntiMalware      [96] AVG AntiVirus Free
echo [97] Malwarebytes Anti-Rootkit  [98] Panda Free Antivirus     [99] SuperAntiSpyware Portable
echo [100] Sophos Virus Removal Tool [101] ComboFix               [102] McAfee WebAdvisor
echo [0] Back to Categories
echo.
set /p security_choice="Enter your choice: "
if "%security_choice%"=="1" choco install avast -y
if "%security_choice%"=="2" choco install avg -y
if "%security_choice%"=="3" choco install bitdefender -y
if "%security_choice%"=="4" choco install malwarebytes -y
if "%security_choice%"=="5" choco install windowsdefender -y
if "%security_choice%"=="6" choco install kaspersky -y
if "%security_choice%"=="7" choco install mcafee -y
if "%security_choice%"=="8" choco install esetnod32 -y
if "%security_choice%"=="9" choco install sophos -y
if "%security_choice%"=="10" choco install avira -y
if "%security_choice%"=="11" choco install norton -y
if "%security_choice%"=="12" choco install zonealarm -y
if "%security_choice%"=="13" choco install comodo -y
if "%security_choice%"=="14" choco install glasswire -y
if "%security_choice%"=="15" choco install spybot -y
if "%security_choice%"=="16" choco install ccleaner -y
if "%security_choice%"=="17" choco install rkill -y
if "%security_choice%"=="18" choco install hitmanpro -y
if "%security_choice%"=="19" choco install adwcleaner -y
if "%security_choice%"=="20" choco install wisecare -y
if "%security_choice%"=="21" choco install superantispyware -y
if "%security_choice%"=="22" choco install webroot -y
if "%security_choice%"=="23" choco install fsecure -y
if "%security_choice%"=="24" choco install pandadome -y
if "%security_choice%"=="25" choco install trendmicro -y
if "%security_choice%"=="26" choco install bitdefender-rootkit -y
if "%security_choice%"=="27" choco install heimdalsecurity -y
if "%security_choice%"=="28" choco install zonealarm-firewall -y
if "%security_choice%"=="29" choco install forticlient -y
if "%security_choice%"=="30" choco install cyberghost -y
if "%security_choice%"=="31" choco install protonvpn -y
if "%security_choice%"=="32" choco install nordvpn -y
if "%security_choice%"=="33" choco install expressvpn -y
if "%security_choice%"=="34" choco install surfshark -y
if "%security_choice%"=="35" choco install tunnelbear -y
if "%security_choice%"=="36" choco install windscribe -y
if "%security_choice%"=="37" choco install tor-browser -y
if "%security_choice%"=="38" choco install wireshark -y
if "%security_choice%"=="39" choco install openvpn -y
if "%security_choice%"=="40" choco install truecrypt -y
if "%security_choice%"=="41" choco install veracrypt -y
if "%security_choice%"=="42" choco install keepass -y
if "%security_choice%"=="43" choco install lastpass -y
if "%security_choice%"=="44" choco install dashlane -y
if "%security_choice%"=="45" choco install 1password -y
if "%security_choice%"=="46" choco install bitwarden -y
if "%security_choice%"=="47" choco install roboform -y
if "%security_choice%"=="48" choco install keepassxc -y
if "%security_choice%"=="49" choco install ublock-origin -y
if "%security_choice%"=="50" choco install malwarefox -y
if "%security_choice%"=="51" choco install wivedrive -y
if "%security_choice%"=="52" choco install sandboxie -y
if "%security_choice%"=="53" choco install openvas -y
if "%security_choice%"=="54" choco install kali-linux -y
if "%security_choice%"=="55" choco install parrot-security -y
if "%security_choice%"=="56" choco install nessus -y
if "%security_choice%"=="57" choco install metasploit-framework -y
if "%security_choice%"=="58" choco install burpsuite -y
if "%security_choice%"=="59" choco install nmap -y
if "%security_choice%"=="60" choco install nikto -y
if "%security_choice%"=="61" choco install johntheripper -y
if "%security_choice%"=="62" choco install aircrack-ng -y
if "%security_choice%"=="63" choco install hydra -y
if "%security_choice%"=="64" choco install hashcat -y
if "%security_choice%"=="65" choco install netcat -y
if "%security_choice%"=="66" choco install ettercap -y
if "%security_choice%"=="67" choco install snort -y
if "%security_choice%"=="68" choco install ossec -y
if "%security_choice%"=="69" choco install suricata -y
if "%security_choice%"=="70" choco install fail2ban -y
if "%security_choice%"=="71" choco install clamwin -y
if "%security_choice%"=="72" choco install anubis -y
if "%security_choice%"=="73" choco install shodan -y
if "%security_choice%"=="74" choco install securityonion -y
if "%security_choice%"=="75" choco install zap-proxy -y
if "%security_choice%"=="76" choco install crowdstrike -y
if "%security_choice%"=="77" choco install cylance -y
if "%security_choice%"=="78" choco install carbon-black -y
if "%security_choice%"=="79" choco install ransomware-removal -y
if "%security_choice%"=="80" choco install sysinternals -y
if "%security_choice%"=="81" choco install remote-desktop-firewall -y
if "%security_choice%"=="82" choco install spywareblaster -y
if "%security_choice%"=="83" choco install privacy-badger -y
if "%security_choice%"=="84" choco install bitdefender-free -y
if "%security_choice%"=="85" choco install mcafee-stinger -y
if "%security_choice%"=="86" choco install cuckoo-sandbox -y
if "%security_choice%"=="87" choco install wireshark-portable -y
if "%security_choice%"=="88" choco install emsisoft-emergency-kit -y
if "%security_choice%"=="89" choco install avast-free -y
if "%security_choice%"=="90" choco install fsecure-online-scanner -y
if "%security_choice%"=="91" choco install kaspersky-virus-removal -y
if "%security_choice%"=="92" choco install norton-power-eraser -y
if "%security_choice%"=="93" choco install drweb-cureit -y
if "%security_choice%"=="94" choco install microsoft-safety-scanner -y
if "%security_choice%"=="95" choco install zemana-antimalware -y
if "%security_choice%"=="96" choco install avg-free -y
if "%security_choice%"=="97" choco install malwarebytes-antirootkit -y
if "%security_choice%"=="98" choco install panda-free -y
if "%security_choice%"=="99" choco install superantispyware-portable -y
if "%security_choice%"=="100" choco install sophos-virus-removal-tool -y
if "%security_choice%"=="101" choco install combofix -y
if "%security_choice%"=="102" choco install mcafee-webadvisor -y
if "%security_choice%"=="0" goto install_category
goto security_tools


:: NETWORK TOOLS
:network_tools
cls
echo ========================================================
echo                   NETWORK TOOLS - INSTALL
echo ========================================================
echo [1] Wireshark               [2] PuTTY                 [3] Nmap
echo [4] Cisco Packet Tracer     [5] OpenVPN               [6] Netcat
echo [7] Angry IP Scanner        [8] LAN Speed Test        [9] Fiddler
echo [10] TCPView                [11] Traceroute           [12] iperf
echo [13] Networx                [14] Speedtest CLI        [15] PRTG Network Monitor
echo [16] Fing                   [17] WiFi Analyzer        [18] SolarWinds Network Tools
echo [19] NetSpot                [20] NetBeans             [21] SecureCRT
echo [22] Bitvise SSH Client     [23] Packet Sender        [24] Tftpd32
echo [25] OpenSSH                [26] FileZilla            [27] WinSCP
echo [28] TeamViewer             [29] AnyDesk              [30] Remmina
echo [31] Zabbix                 [32] Cacti                 [33] NetFlow Analyzer
echo [34] MultiPing              [35] Plex Server          [36] NetworkMiner
echo [37] LanFlow                [38] Connectify Hotspot    [39] TrueCrypt
echo [40] SoftPerfect Network Scanner [41] GlassWire        [42] WiFi Reconnect
echo [43] Zenmap                 [44] VMware Workstation   [45] OpenWRT
echo [46] Hping3                 [47] TeraTerm              [48] RouterSim
echo [49] NetScan                [50] Network Tools        [51] NTTTCP
echo [52] SurfShark              [53] Hotspot Shield       [54] NordVPN
echo [55] ExpressVPN             [56] Tunnelblick           [57] PsPing
echo [58] TCP Optimizer          [59] NetLimiter            [60] OpenWRT
echo [61] Tailscale              [62] CloudFlare WARP      [63] WireGuard
echo [64] Fortinet FortiClient   [65] ZScaler               [66] TinyVPN
echo [67] OpenDNS                [68] DNS Jumper            [69] DNS Benchmark
echo [70] Censys                 [71] Speedify              [72] HTTP Toolkit
echo [73] CyberGhost             [74] ExpressVPN CLI       [75] ProxyCap
echo [76] Kerio Control          [77] SoftEther VPN         [78] Mullvad VPN
echo [79] MTR                    [80] Nethogs               [81] Dnsmasq
echo [82] Scapy                  [83] PcapPlusPlus          [84] Cloudberry Backup
echo [85] LogMeIn                [86] AnyDesk Remote Desktop [87] VNC Connect
echo [88] Citrix Receiver        [89] Radmin                [90] UltraVNC
echo [91] ARPWatch               [92] Zabbix Agent          [93] PRTG Network Monitor
echo [94] Checkmk                [95] Nagios                [96] Pandora FMS
echo [97] Prometheus             [98] Grafana               [99] Veeam Backup
echo [100] Nagios XI             [0] Back to Categories
echo.
set /p network_choice="Enter your choice: "
if "%network_choice%"=="1" choco install wireshark -y
if "%network_choice%"=="2" choco install putty -y
if "%network_choice%"=="3" choco install nmap -y
if "%network_choice%"=="4" choco install packettracer -y
if "%network_choice%"=="5" choco install openvpn -y
if "%network_choice%"=="6" choco install netcat -y
if "%network_choice%"=="7" choco install angryip -y
if "%network_choice%"=="8" choco install lanspeedtest -y
if "%network_choice%"=="9" choco install fiddler -y
if "%network_choice%"=="10" choco install tcpview -y
if "%network_choice%"=="11" choco install traceroute -y
if "%network_choice%"=="12" choco install iperf -y
if "%network_choice%"=="13" choco install networx -y
if "%network_choice%"=="14" choco install speedtest-cli -y
if "%network_choice%"=="15" choco install prtg -y
if "%network_choice%"=="16" choco install fing -y
if "%network_choice%"=="17" choco install wifi-analyzer -y
if "%network_choice%"=="18" choco install solarwinds-network-tools -y
if "%network_choice%"=="19" choco install netspot -y
if "%network_choice%"=="20" choco install netbeans -y
if "%network_choice%"=="21" choco install securecrt -y
if "%network_choice%"=="22" choco install bitvise-ssh-client -y
if "%network_choice%"=="23" choco install packetsender -y
if "%network_choice%"=="24" choco install tftpd32 -y
if "%network_choice%"=="25" choco install openssh -y
if "%network_choice%"=="26" choco install filezilla -y
if "%network_choice%"=="27" choco install winscp -y
if "%network_choice%"=="28" choco install teamviewer -y
if "%network_choice%"=="29" choco install anydesk -y
if "%network_choice%"=="30" choco install remmina -y
if "%network_choice%"=="31" choco install zabbix -y
if "%network_choice%"=="32" choco install cacti -y
if "%network_choice%"=="33" choco install netflow-analyzer -y
if "%network_choice%"=="34" choco install multiping -y
if "%network_choice%"=="35" choco install plex-server -y
if "%network_choice%"=="36" choco install networkminer -y
if "%network_choice%"=="37" choco install lanflow -y
if "%network_choice%"=="38" choco install connectify-hotspot -y
if "%network_choice%"=="39" choco install truecrypt -y
if "%network_choice%"=="40" choco install softperfect-network-scanner -y
if "%network_choice%"=="41" choco install glasswire -y
if "%network_choice%"=="42" choco install wifi-reconnect -y
if "%network_choice%"=="43" choco install zenmap -y
if "%network_choice%"=="44" choco install vmware-workstation -y
if "%network_choice%"=="45" choco install openwrt -y
if "%network_choice%"=="46" choco install hping3 -y
if "%network_choice%"=="47" choco install teraterm -y
if "%network_choice%"=="48" choco install routersim -y
if "%network_choice%"=="49" choco install netscan -y
if "%network_choice%"=="50" choco install network-tools -y
if "%network_choice%"=="51" choco install ntttcp -y
if "%network_choice%"=="52" choco install surfshark -y
if "%network_choice%"=="53" choco install hotspot-shield -y
if "%network_choice%"=="54" choco install nordvpn -y
if "%network_choice%"=="55" choco install expressvpn -y
if "%network_choice%"=="56" choco install tunnelblick -y
if "%network_choice%"=="57" choco install psping -y
if "%network_choice%"=="58" choco install tcpoptimizer -y
if "%network_choice%"=="59" choco install netlimiter -y
if "%network_choice%"=="60" choco install openwrt -y
if "%network_choice%"=="61" choco install tailscale -y
if "%network_choice%"=="62" choco install cloudflare-warp -y
if "%network_choice%"=="63" choco install wireguard -y
if "%network_choice%"=="64" choco install fortinet-forticlient -y
if "%network_choice%"=="65" choco install zscaler -y
if "%network_choice%"=="66" choco install tinyvpn -y
if "%network_choice%"=="67" choco install opendns -y
if "%network_choice%"=="68" choco install dns-jumper -y
if "%network_choice%"=="69" choco install dns-benchmark -y
if "%network_choice%"=="70" choco install censys -y
if "%network_choice%"=="71" choco install speedify -y
if "%network_choice%"=="72" choco install httptoolkit -y
if "%network_choice%"=="73" choco install cyberghost -y
if "%network_choice%"=="74" choco install expressvpn-cli -y
if "%network_choice%"=="75" choco install proxycap -y
if "%network_choice%"=="76" choco install kerio-control -y
if "%network_choice%"=="77" choco install softether-vpn -y
if "%network_choice%"=="78" choco install mullvad-vpn -y
if "%network_choice%"=="79" choco install mtr -y
if "%network_choice%"=="80" choco install nethogs -y
if "%network_choice%"=="81" choco install dnsmasq -y
if "%network_choice%"=="82" choco install scapy -y
if "%network_choice%"=="83" choco install pcapplusplus -y
if "%network_choice%"=="84" choco install cloudberry-backup -y
if "%network_choice%"=="85" choco install logmein -y
if "%network_choice%"=="86" choco install anydesk-remote-desktop -y
if "%network_choice%"=="87" choco install vnc-connect -y
if "%network_choice%"=="88" choco install citrix-receiver -y
if "%network_choice%"=="89" choco install radmin -y
if "%network_choice%"=="90" choco install ultravnc -y
if "%network_choice%"=="91" choco install arpwatch -y
if "%network_choice%"=="92" choco install zabbix-agent -y
if "%network_choice%"=="93" choco install prtg-network-monitor -y
if "%network_choice%"=="94" choco install checkmk -y
if "%network_choice%"=="95" choco install nagios -y
if "%network_choice%"=="96" choco install pandora-fms -y
if "%network_choice%"=="97" choco install prometheus -y
if "%network_choice%"=="98" choco install grafana -y
if "%network_choice%"=="99" choco install veeam-backup -y
if "%network_choice%"=="100" goto main_menu
goto network_tools


:: EDUCATION and LEARNING
:education_tools
cls
echo ========================================================
echo             EDUCATION and LEARNING TOOLS - INSTALL
echo ========================================================
echo [1] Duolingo               [2] Khan Academy           [3] Coursera
echo [4] Udemy                   [5] Skillshare             [6] Quizlet
echo [7] Anki                    [8] Moodle                 [9] Blackboard
echo [10] Evernote               [0] Back to Categories
echo.
set /p education_choice="Enter your choice: "
if "%education_choice%"=="1" choco install duolingo -y
if "%education_choice%"=="2" choco install khanacademy -y
if "%education_choice%"=="3" choco install coursera -y
if "%education_choice%"=="4" choco install udemy -y
if "%education_choice%"=="5" choco install skillshare -y
if "%education_choice%"=="6" choco install quizlet -y
if "%education_choice%"=="7" choco install anki -y
if "%education_choice%"=="8" choco install moodle -y
if "%education_choice%"=="9" choco install blackboard -y
if "%education_choice%"=="10" choco install evernote -y
if "%education_choice%"=="0" goto install_category
goto education_tools

:: AUDIO TOOLS
:audio_tools
cls
echo ========================================================
echo                    AUDIO TOOLS - INSTALL
echo ========================================================
echo [1] Audacity               [2] FL Studio             [3] Ableton Live
echo [4] Logic Pro X            [5] Adobe Audition        [6] GarageBand
echo [7] WaveLab                [8] Pro Tools             [9] Cubase
echo [10] Reaper                [11] Sound Forge          [12] Serato DJ
echo [13] Virtual DJ             [14] Traktor Pro          [15] Mixxx
echo [16] Audition Pro           [17] Ozone                [18] iZotope RX
echo [19] Voxengo SPAN           [20] Cakewalk by BandLab  [21] AIMP
echo [22] Winamp                 [23] MediaMonkey          [24] Foobar2000
echo [25] XMPlay                 [26] Bandcamp             [27] Jukedeck
echo [28] Sonic Visualizer        [29] MP3Gain              [30] BPM Counter
echo [31] Podcast Addict          [32] QuickTime Player     [33] Spotify
echo [34] Deezer                 [35] Tidal                [36] YouTube Music
echo [37] TuneIn Radio            [38] Shazam               [39] SoundCloud
echo [40] Listen 2 Music          [41] Musixmatch           [42] Audition
echo [43] Audio Hijack           [44] EasyWav               [45] Audacity (Portable)
echo [46] WavPad                 [47] Acoustica             [48] AudioGizmo
echo [49] Golden Ear             [50] Soundtrap            [51] Mixcraft
echo [52] Studio One             [53] MPC Beats             [54] Logic Pro X (Portable)
echo [55] TwistedWave             [56] Cubase Elements      [57] Nuendo
echo [58] StudioRack              [59] AudioDiva            [60] Pure Data
echo [61] Audacity (Beta)         [62] Amadeus Pro           [63] OpenAL
echo [64] AudioTool               [65] Ardour                [66] Jack Audio Connection Kit
echo [67] Acoustica Audio Editor  [68] Steinberg VST        [69] FL Studio Mobile
echo [70] Kontakt                [71] Samplitude Pro X      [72] Soundation Studio
echo [73] GarageBand (Windows)    [74] LoopCloud             [75] REAPER Portable
echo [0] Back to Categories
echo.
set /p audio_choice="Enter your choice: "
if "%audio_choice%"=="1" choco install audacity -y
if "%audio_choice%"=="2" choco install flstudio -y
if "%audio_choice%"=="3" choco install abletonlive -y
if "%audio_choice%"=="4" choco install logicpro -y
if "%audio_choice%"=="5" choco install adobe-audition -y
if "%audio_choice%"=="6" choco install garageband -y
if "%audio_choice%"=="7" choco install wavelab -y
if "%audio_choice%"=="8" choco install protools -y
if "%audio_choice%"=="9" choco install cubase -y
if "%audio_choice%"=="10" choco install reaper -y
if "%audio_choice%"=="11" choco install soundforge -y
if "%audio_choice%"=="12" choco install serato-dj -y
if "%audio_choice%"=="13" choco install virtualdj -y
if "%audio_choice%"=="14" choco install traktorpro -y
if "%audio_choice%"=="15" choco install mixxx -y
if "%audio_choice%"=="16" choco install auditionpro -y
if "%audio_choice%"=="17" choco install ozone -y
if "%audio_choice%"=="18" choco install izotope-rx -y
if "%audio_choice%"=="19" choco install voxengo-span -y
if "%audio_choice%"=="20" choco install cakewalk -y
if "%audio_choice%"=="21" choco install aimp -y
if "%audio_choice%"=="22" choco install winamp -y
if "%audio_choice%"=="23" choco install mediamonkey -y
if "%audio_choice%"=="24" choco install foobar2000 -y
if "%audio_choice%"=="25" choco install xmplay -y
if "%audio_choice%"=="26" choco install bandcamp -y
if "%audio_choice%"=="27" choco install jukedeck -y
if "%audio_choice%"=="28" choco install sonic-visualizer -y
if "%audio_choice%"=="29" choco install mp3gain -y
if "%audio_choice%"=="30" choco install bpm-counter -y
if "%audio_choice%"=="31" choco install podcast-addict -y
if "%audio_choice%"=="32" choco install quicktimeplayer -y
if "%audio_choice%"=="33" choco install spotify -y
if "%audio_choice%"=="34" choco install deezer -y
if "%audio_choice%"=="35" choco install tidal -y
if "%audio_choice%"=="36" choco install youtubemusic -y
if "%audio_choice%"=="37" choco install tuneinradio -y
if "%audio_choice%"=="38" choco install shazam -y
if "%audio_choice%"=="39" choco install soundcloud -y
if "%audio_choice%"=="40" choco install listen2music -y
if "%audio_choice%"=="41" choco install musixmatch -y
if "%audio_choice%"=="42" choco install audition -y
if "%audio_choice%"=="43" choco install audiohijack -y
if "%audio_choice%"=="44" choco install easywav -y
if "%audio_choice%"=="45" choco install audacity-portable -y
if "%audio_choice%"=="46" choco install wavpad -y
if "%audio_choice%"=="47" choco install acoustica -y
if "%audio_choice%"=="48" choco install audiogizmo -y
if "%audio_choice%"=="49" choco install golden-ear -y
if "%audio_choice%"=="50" choco install soundtrap -y
if "%audio_choice%"=="51" choco install mixcraft -y
if "%audio_choice%"=="52" choco install studioone -y
if "%audio_choice%"=="53" choco install mpcbeats -y
if "%audio_choice%"=="54" choco install logicpro-portable -y
if "%audio_choice%"=="55" choco install twistedwave -y
if "%audio_choice%"=="56" choco install cubase-elements -y
if "%audio_choice%"=="57" choco install nuendo -y
if "%audio_choice%"=="58" choco install studiorack -y
if "%audio_choice%"=="59" choco install audiodiva -y
if "%audio_choice%"=="60" choco install puredata -y
if "%audio_choice%"=="61" choco install audacity-beta -y
if "%audio_choice%"=="62" choco install amadeuspro -y
if "%audio_choice%"=="63" choco install openal -y
if "%audio_choice%"=="64" choco install audiotool -y
if "%audio_choice%"=="65" choco install ardour -y
if "%audio_choice%"=="66" choco install jack-audio -y
if "%audio_choice%"=="67" choco install acoustica-audio-editor -y
if "%audio_choice%"=="68" choco install steinberg-vst -y
if "%audio_choice%"=="69" choco install flstudio-mobile -y
if "%audio_choice%"=="70" choco install kontakt -y
if "%audio_choice%"=="71" choco install samplitude-pro -y
if "%audio_choice%"=="72" choco install soundation-studio -y
if "%audio_choice%"=="73" choco install garageband-windows -y
if "%audio_choice%"=="74" choco install loopcloud -y
if "%audio_choice%"=="75" choco install reaper-portable -y
if "%audio_choice%"=="0" goto install_category
goto audio_tools


:: VIRTUALIZATION - CLOUD
:virtualization_and_cloud_tools
cls
echo ========================================================
echo        VIRTUALIZATION & CLOUD TOOLS - INSTALL
echo ========================================================
echo [1] VirtualBox               [2] VMware Workstation    [3] VMware Player
echo [4] Hyper-V                  [5] Docker                [6] Podman
echo [7] Vagrant                  [8] Parallels Desktop     [9] Citrix Hypervisor
echo [10] XenServer               [11] Proxmox VE           [12] KVM/QEMU
echo [13] Docker Desktop           [14] Amazon EC2 CLI       [15] Google Cloud SDK
echo [16] Azure CLI                [17] Kubernetes           [18] Minikube
echo [19] OpenStack                [20] DigitalOcean CLI     [21] Docker Compose
echo [22] Hyper-V Manager          [23] Azure DevOps CLI     [24] Terraform
echo [25] Ansible                  [26] SaltStack            [27] Jenkins
echo [28] Kubernetes Dashboard     [29] VMware ESXi          [30] OpenShift
echo [31] Cloudflare Tunnel        [32] Rancher              [33] Portainer
echo [34] CloudBerry Backup        [35] CloudStack           [36] Synology NAS
echo [37] Citrix Workspace         [38] IBM Cloud CLI        [39] Veeam Backup & Replication
echo [40] AWS CLI                  [41] Docker Swarm         [42] Consul
echo [43] OpenNebula               [44] Nutanix Acropolis    [45] Red Hat OpenShift
echo [46] IBM Cloud Pak            [47] Mesos                 [48] Hyper-V Server
echo [49] Oracle VM VirtualBox     [50] Raspberry Pi Imager   [51] GoCD
echo [0] Back to Categories
echo.
set /p virtualization_choice="Enter your choice: "
if "%virtualization_choice%"=="1" choco install virtualbox -y
if "%virtualization_choice%"=="2" choco install vmware-workstation -y
if "%virtualization_choice%"=="3" choco install vmware-player -y
if "%virtualization_choice%"=="4" choco install hyperv -y
if "%virtualization_choice%"=="5" choco install docker-desktop -y
if "%virtualization_choice%"=="6" choco install podman -y
if "%virtualization_choice%"=="7" choco install vagrant -y
if "%virtualization_choice%"=="8" choco install parallels -y
if "%virtualization_choice%"=="9" choco install citrix-hypervisor -y
if "%virtualization_choice%"=="10" choco install xenserver -y
if "%virtualization_choice%"=="11" choco install proxmox-ve -y
if "%virtualization_choice%"=="12" choco install kvm -y
if "%virtualization_choice%"=="13" choco install docker-desktop -y
if "%virtualization_choice%"=="14" choco install amazon-ec2-cli -y
if "%virtualization_choice%"=="15" choco install google-cloud-sdk -y
if "%virtualization_choice%"=="16" choco install azure-cli -y
if "%virtualization_choice%"=="17" choco install kubernetes -y
if "%virtualization_choice%"=="18" choco install minikube -y
if "%virtualization_choice%"=="19" choco install openstack-cli -y
if "%virtualization_choice%"=="20" choco install digitalocean-cli -y
if "%virtualization_choice%"=="21" choco install docker-compose -y
if "%virtualization_choice%"=="22" choco install hyperv-manager -y
if "%virtualization_choice%"=="23" choco install azure-devops-cli -y
if "%virtualization_choice%"=="24" choco install terraform -y
if "%virtualization_choice%"=="25" choco install ansible -y
if "%virtualization_choice%"=="26" choco install saltstack -y
if "%virtualization_choice%"=="27" choco install jenkins -y
if "%virtualization_choice%"=="28" choco install kubernetes-dashboard -y
if "%virtualization_choice%"=="29" choco install vmware-esxi -y
if "%virtualization_choice%"=="30" choco install openshift -y
if "%virtualization_choice%"=="31" choco install cloudflare-tunnel -y
if "%virtualization_choice%"=="32" choco install rancher -y
if "%virtualization_choice%"=="33" choco install portainer -y
if "%virtualization_choice%"=="34" choco install cloudberry-backup -y
if "%virtualization_choice%"=="35" choco install cloudstack -y
if "%virtualization_choice%"=="36" choco install synology-nas -y
if "%virtualization_choice%"=="37" choco install citrix-workspace -y
if "%virtualization_choice%"=="38" choco install ibm-cloud-cli -y
if "%virtualization_choice%"=="39" choco install veeam-backup -y
if "%virtualization_choice%"=="40" choco install aws-cli -y
if "%virtualization_choice%"=="41" choco install docker-swarm -y
if "%virtualization_choice%"=="42" choco install consul -y
if "%virtualization_choice%"=="43" choco install opennebula -y
if "%virtualization_choice%"=="44" choco install nutanix-acropolis -y
if "%virtualization_choice%"=="45" choco install redhat-openshift -y
if "%virtualization_choice%"=="46" choco install ibm-cloud-pak -y
if "%virtualization_choice%"=="47" choco install mesos -y
if "%virtualization_choice%"=="48" choco install hyperv-server -y
if "%virtualization_choice%"=="49" choco install oracle-vm-virtualbox -y
if "%virtualization_choice%"=="50" choco install raspberry-pi-imager -y
if "%virtualization_choice%"=="51" choco install gocd -y
if "%virtualization_choice%"=="0" goto install_category
goto virtualization_and_cloud_tools


:: DATABASE TOOLS
:database_tools
cls
echo ========================================================
echo                  DATABASE TOOLS - INSTALL
echo ========================================================
echo [1] MySQL Server               [2] PostgreSQL                 [3] MongoDB
echo [4] SQLite                     [5] Microsoft SQL Server       [6] Redis
echo [7] Oracle Database Express    [8] MariaDB                    [9] CouchDB
echo [10] DBeaver                   [11] pgAdmin                   [12] HeidiSQL
echo [13] Sequel Pro                [14] DataGrip                  [15] Navicat
echo [16] TablePlus                [17] Toad for SQL Server        [18] DBVisualizer
echo [19] ArangoDB                 [20] Neo4j                      [21] Cassandra
echo [22] Apache Derby             [23] ClickHouse                 [24] Firebird
echo [25] Percona Server           [26] Vitess                     [27] CockroachDB
echo [28] Snowflake                [29] H2 Database                [30] Google BigQuery
echo [31] Elasticsearch            [32] Apache Drill               [33] Presto
echo [34] Amazon DynamoDB          [35] TimescaleDB                [36] Memcached
echo [37] Tarantool                [38] Couchbase                  [39] OrientDB
echo [40] Realm                    [41] GraphQL Playground         [42] RavenDB
echo [43] SQLAlchemy               [44] Knex.js                    [45] Flyway
echo [46] Liquibase                [47] dbForge Studio             [48] ER/Studio
echo [49] Aqua Data Studio         [50] Vertica                    [51] Qlik Sense
echo [52] Kylin                    [53] Superset                   [54] DataGrip for Python
echo [0] Back to Categories
echo.
set /p database_choice="Enter your choice: "
if "%database_choice%"=="1" choco install mysql -y
if "%database_choice%"=="2" choco install postgresql -y
if "%database_choice%"=="3" choco install mongodb -y
if "%database_choice%"=="4" choco install sqlite -y
if "%database_choice%"=="5" choco install sql-server -y
if "%database_choice%"=="6" choco install redis -y
if "%database_choice%"=="7" choco install oracle-database-express -y
if "%database_choice%"=="8" choco install mariadb -y
if "%database_choice%"=="9" choco install couchdb -y
if "%database_choice%"=="10" choco install dbeaver -y
if "%database_choice%"=="11" choco install pgadmin -y
if "%database_choice%"=="12" choco install heidisql -y
if "%database_choice%"=="13" choco install sequel-pro -y
if "%database_choice%"=="14" choco install datagrip -y
if "%database_choice%"=="15" choco install navicat -y
if "%database_choice%"=="16" choco install tableplus -y
if "%database_choice%"=="17" choco install toad-for-sql-server -y
if "%database_choice%"=="18" choco install dbvisualizer -y
if "%database_choice%"=="19" choco install arangodb -y
if "%database_choice%"=="20" choco install neo4j -y
if "%database_choice%"=="21" choco install cassandra -y
if "%database_choice%"=="22" choco install apache-derby -y
if "%database_choice%"=="23" choco install clickhouse -y
if "%database_choice%"=="24" choco install firebird -y
if "%database_choice%"=="25" choco install percona-server -y
if "%database_choice%"=="26" choco install vitess -y
if "%database_choice%"=="27" choco install cockroachdb -y
if "%database_choice%"=="28" choco install snowflake -y
if "%database_choice%"=="29" choco install h2 -y
if "%database_choice%"=="30" choco install google-bigquery -y
if "%database_choice%"=="31" choco install elasticsearch -y
if "%database_choice%"=="32" choco install apache-drill -y
if "%database_choice%"=="33" choco install presto -y
if "%database_choice%"=="34" choco install amazon-dynamodb -y
if "%database_choice%"=="35" choco install timescaledb -y
if "%database_choice%"=="36" choco install memcached -y
if "%database_choice%"=="37" choco install tarantool -y
if "%database_choice%"=="38" choco install couchbase -y
if "%database_choice%"=="39" choco install orientdb -y
if "%database_choice%"=="40" choco install realm -y
if "%database_choice%"=="41" choco install graphql-playground -y
if "%database_choice%"=="42" choco install ravendb -y
if "%database_choice%"=="43" choco install sqlalchemy -y
if "%database_choice%"=="44" choco install knexjs -y
if "%database_choice%"=="45" choco install flyway -y
if "%database_choice%"=="46" choco install liquibase -y
if "%database_choice%"=="47" choco install dbforge-studio -y
if "%database_choice%"=="48" choco install er-studio -y
if "%database_choice%"=="49" choco install aqua-data-studio -y
if "%database_choice%"=="50" choco install vertica -y
if "%database_choice%"=="51" choco install qlik-sense -y
if "%database_choice%"=="52" choco install kylin -y
if "%database_choice%"=="53" choco install superset -y
if "%database_choice%"=="54" choco install datagrip-for-python -y
if "%database_choice%"=="0" goto install_category
goto database_tools


:: BACKUP AND RECOVERY
:backup_tools
cls
echo ========================================================
echo            BACKUP AND RECOVERY TOOLS - INSTALL
echo ========================================================
echo [1] Acronis True Image       [2] EaseUS Todo Backup       [3] Macrium Reflect
echo [4] Backup and Sync (Google) [5] Clonezilla               [6] Paragon Backup & Recovery
echo [7] Duplicati                [8] Backblaze                [9] Veeam Agent
echo [10] AOMEI Backupper         [11] Rclone                  [12] SyncBackFree
echo [13] CrashPlan               [14] Comodo Backup           [15] Genie Timeline
echo [16] NovaBACKUP              [17] IDrive                  [18] Cobian Backup
echo [19] SyncToy                 [20] GoodSync                [21] Areca Backup
echo [22] Uranium Backup          [23] Iperius Backup          [24] KLS Backup
echo [25] O&O DiskImage           [26] Carbon Copy Cloner      [27] Time Machine
echo [28] Retrospect              [29] MiniTool ShadowMaker    [30] Active@ Disk Image
echo [31] DriveImage XML          [32] FreeFileSync            [33] SyncBackPro
echo [34] Ashampoo Backup         [35] Redo Backup             [36] Handy Backup
echo [37] ElephantDrive           [38] CloudBerry Backup       [39] Backup4all
echo [40] SpiderOak One Backup    [41] Arq Backup              [42] Boxcryptor
echo [43] Resilio Sync            [44] BitReplica              [45] Toucan
echo [46] DeltaCopy               [47] LuckyBackup             [48] Disk Drill
echo [49] ShadowProtect           [50] SuperDuper!             [51] NTI Backup Now
echo [52] Windows Backup          [53] Duplicacy               [54] MSP360 Backup
echo [55] Syncthing               [56] FileFort Backup         [57] Reflector
echo [58] Restic                  [59] BorgBackup              [60] CrashPlan for Small Business
echo [61] Amazon Glacier Backup   [62] ChronoSync              [63] FastGlacier
echo [64] CloudSync               [65] Xopero Backup           [66] CloudAlly
echo [0] Back to Categories
echo.
set /p backup_choice="Enter your choice: "
if "%backup_choice%"=="1" choco install acronis -y
if "%backup_choice%"=="2" choco install easeus-todo-backup -y
if "%backup_choice%"=="3" choco install macrium-reflect -y
if "%backup_choice%"=="4" choco install backupandsync -y
if "%backup_choice%"=="5" choco install clonezilla -y
if "%backup_choice%"=="6" choco install paragon-backup-recovery -y
if "%backup_choice%"=="7" choco install duplicati -y
if "%backup_choice%"=="8" choco install backblaze -y
if "%backup_choice%"=="9" choco install veeam-agent -y
if "%backup_choice%"=="10" choco install aomei-backupper -y
if "%backup_choice%"=="11" choco install rclone -y
if "%backup_choice%"=="12" choco install syncbackfree -y
if "%backup_choice%"=="13" choco install crashplan -y
if "%backup_choice%"=="14" choco install comodo-backup -y
if "%backup_choice%"=="15" choco install genie-timeline -y
if "%backup_choice%"=="16" choco install novabackup -y
if "%backup_choice%"=="17" choco install idrive -y
if "%backup_choice%"=="18" choco install cobian-backup -y
if "%backup_choice%"=="19" choco install synctoy -y
if "%backup_choice%"=="20" choco install goodsync -y
if "%backup_choice%"=="21" choco install areca-backup -y
if "%backup_choice%"=="22" choco install uranium-backup -y
if "%backup_choice%"=="23" choco install iperius-backup -y
if "%backup_choice%"=="24" choco install kls-backup -y
if "%backup_choice%"=="25" choco install oodiskimage -y
if "%backup_choice%"=="26" choco install carbon-copy-cloner -y
if "%backup_choice%"=="27" choco install time-machine -y
if "%backup_choice%"=="28" choco install retrospect -y
if "%backup_choice%"=="29" choco install minitool-shadowmaker -y
if "%backup_choice%"=="30" choco install active-disk-image -y
if "%backup_choice%"=="31" choco install driveimage-xml -y
if "%backup_choice%"=="32" choco install freefilesync -y
if "%backup_choice%"=="33" choco install syncbackpro -y
if "%backup_choice%"=="34" choco install ashampoo-backup -y
if "%backup_choice%"=="35" choco install redo-backup -y
if "%backup_choice%"=="36" choco install handy-backup -y
if "%backup_choice%"=="37" choco install elephantdrive -y
if "%backup_choice%"=="38" choco install cloudberry-backup -y
if "%backup_choice%"=="39" choco install backup4all -y
if "%backup_choice%"=="40" choco install spideroak -y
if "%backup_choice%"=="41" choco install arq-backup -y
if "%backup_choice%"=="42" choco install boxcryptor -y
if "%backup_choice%"=="43" choco install resilio-sync -y
if "%backup_choice%"=="44" choco install bitreplica -y
if "%backup_choice%"=="45" choco install toucan -y
if "%backup_choice%"=="46" choco install deltacopy -y
if "%backup_choice%"=="47" choco install luckybackup -y
if "%backup_choice%"=="48" choco install disk-drill -y
if "%backup_choice%"=="49" choco install shadowprotect -y
if "%backup_choice%"=="50" choco install superduper -y
if "%backup_choice%"=="51" choco install nti-backup-now -y
if "%backup_choice%"=="52" choco install windows-backup -y
if "%backup_choice%"=="53" choco install duplicacy -y
if "%backup_choice%"=="54" choco install msp360-backup -y
if "%backup_choice%"=="55" choco install syncthing -y
if "%backup_choice%"=="56" choco install filefort-backup -y
if "%backup_choice%"=="57" choco install reflector -y
if "%backup_choice%"=="58" choco install restic -y
if "%backup_choice%"=="59" choco install borgbackup -y
if "%backup_choice%"=="60" choco install crashplan-business -y
if "%backup_choice%"=="61" choco install amazon-glacier -y
if "%backup_choice%"=="62" choco install chronosync -y
if "%backup_choice%"=="63" choco install fastglacier -y
if "%backup_choice%"=="64" choco install cloudsync -y
if "%backup_choice%"=="65" choco install xopero-backup -y
if "%backup_choice%"=="66" choco install cloudally -y
if "%backup_choice%"=="0" goto install_category
goto backup_tools


:: FILE MANAGEMENT TOOLS
:file_management_tools
cls
echo ========================================================
echo              FILE MANAGEMENT TOOLS - INSTALL
echo ========================================================
echo [1]  7-Zip                     [2]  WinRAR                     [3]  FreeFileSync
echo [4]  TeraCopy                  [5]  Everything                 [6]  Total Commander
echo [7]  FastCopy                  [8]  Beyond Compare             [9]  XYplorer
echo [10] Directory Opus            [11] WinMerge                   [12] PeaZip
echo [13] PowerISO                  [14] UltraISO                  [15] Disk Drill
echo [16] FileZilla                 [17] SyncToy                   [18] TreeSize Free
echo [19] Double Commander          [20] Multi Commander           [21] WinZip
echo [22] Rclone                    [23] GoodSync                  [24] Kryptel
echo [25] DiskBoss                  [26] CloudBerry Explorer       [27] Syncthing
echo [28] GS RichCopy 360           [29] Clover                    [30] HFSExplorer
echo [31] Unstoppable Copier        [32] TotalMounter              [33] SpaceSniffer
echo [34] Duplicate Cleaner         [35] Easy Duplicate Finder     [36] TagSpaces
echo [37] SpeedCommander            [38] FileBot                   [39] Archivarius 3000
echo [40] FileLocator Pro           [41] Directory Lister Pro      [42] FreeCommander
echo [43] FileTypesMan              [44] ReNamer                   [45] Altap Salamander
echo [46] EF Commander              [47] Quick Access Popup        [48] WinNc
echo [0] Back to Categories
echo.
set /p file_management_choice="Enter your choice: "
if "%file_management_choice%"=="1" choco install 7zip -y
if "%file_management_choice%"=="2" choco install winrar -y
if "%file_management_choice%"=="3" choco install freefilesync -y
if "%file_management_choice%"=="4" choco install teracopy -y
if "%file_management_choice%"=="5" choco install everything -y
if "%file_management_choice%"=="6" choco install totalcommander -y
if "%file_management_choice%"=="7" choco install fastcopy -y
if "%file_management_choice%"=="8" choco install beyond-compare -y
if "%file_management_choice%"=="9" choco install xyplorer -y
if "%file_management_choice%"=="10" choco install directoryopus -y
if "%file_management_choice%"=="11" choco install winmerge -y
if "%file_management_choice%"=="12" choco install peazip -y
if "%file_management_choice%"=="13" choco install poweriso -y
if "%file_management_choice%"=="14" choco install ultraiso -y
if "%file_management_choice%"=="15" choco install disk-drill -y
if "%file_management_choice%"=="16" choco install filezilla -y
if "%file_management_choice%"=="17" choco install synctoy -y
if "%file_management_choice%"=="18" choco install treesizefree -y
if "%file_management_choice%"=="19" choco install doublecommander -y
if "%file_management_choice%"=="20" choco install multicmd -y
if "%file_management_choice%"=="21" choco install winzip -y
if "%file_management_choice%"=="22" choco install rclone -y
if "%file_management_choice%"=="23" choco install goodsync -y
if "%file_management_choice%"=="24" choco install kryptel -y
if "%file_management_choice%"=="25" choco install diskboss -y
if "%file_management_choice%"=="26" choco install cloudberryexplorer -y
if "%file_management_choice%"=="27" choco install syncthing -y
if "%file_management_choice%"=="28" choco install gsrichcopy360 -y
if "%file_management_choice%"=="29" choco install clover -y
if "%file_management_choice%"=="30" choco install hfsexplorer -y
if "%file_management_choice%"=="31" choco install unstoppable-copier -y
if "%file_management_choice%"=="32" choco install totalmounter -y
if "%file_management_choice%"=="33" choco install spacesniffer -y
if "%file_management_choice%"=="34" choco install duplicate-cleaner -y
if "%file_management_choice%"=="35" choco install easyduplicatefinder -y
if "%file_management_choice%"=="36" choco install tagspaces -y
if "%file_management_choice%"=="37" choco install speedcommander -y
if "%file_management_choice%"=="38" choco install filebot -y
if "%file_management_choice%"=="39" choco install archivarius -y
if "%file_management_choice%"=="40" choco install filelocatorpro -y
if "%file_management_choice%"=="41" choco install directorylisterpro -y
if "%file_management_choice%"=="42" choco install freecommander -y
if "%file_management_choice%"=="43" choco install filetypesman -y
if "%file_management_choice%"=="44" choco install renamer -y
if "%file_management_choice%"=="45" choco install altap-salamander -y
if "%file_management_choice%"=="46" choco install efcommander -y
if "%file_management_choice%"=="47" choco install quickaccesspopup -y
if "%file_management_choice%"=="48" choco install winnc -y
if "%file_management_choice%"=="0" goto install_category
goto file_management_tools


:: CLOUD STORAGE TOOLS
:cloud_storage_tools
cls
echo ========================================================
echo             CLOUD STORAGE TOOLS - INSTALL
echo ========================================================
echo [1] Google Drive            [2] Dropbox               [3] OneDrive
echo [4] Box                     [5] iCloud                [6] pCloud
echo [7] Sync.com                [8] MEGA                  [9] Tresorit
echo [10] Zoho WorkDrive         [11] Nextcloud            [12] SpiderOak One
echo [13] Amazon Drive           [14] SugarSync            [15] Yandex.Disk
echo [16] Degoo                  [17] MediaFire            [18] OpenDrive
echo [19] IDrive                 [20] Wasabi               [21] Egnyte
echo [22] Backblaze B2           [23] Hubic                [24] Koofr
echo [25] Syncplicity            [26] ElephantDrive        [27] Zoolz
echo [28] Resilio Sync           [29] FileCloud            [30] Livedrive
echo [31] OwnCloud               [32] Seafile              [33] Bitcasa
echo [34] Citrix ShareFile       [35] TeraBox              [36] StrongSync
echo [0] Back to Categories
echo.
set /p cloud_storage_choice="Enter your choice: "
if "%cloud_storage_choice%"=="1" choco install googledrive -y
if "%cloud_storage_choice%"=="2" choco install dropbox -y
if "%cloud_storage_choice%"=="3" choco install onedrive -y
if "%cloud_storage_choice%"=="4" choco install box -y
if "%cloud_storage_choice%"=="5" choco install icloud -y
if "%cloud_storage_choice%"=="6" choco install pcloud -y
if "%cloud_storage_choice%"=="7" choco install sync -y
if "%cloud_storage_choice%"=="8" choco install mega -y
if "%cloud_storage_choice%"=="9" choco install tresorit -y
if "%cloud_storage_choice%"=="10" choco install zohoworkdrive -y
if "%cloud_storage_choice%"=="11" choco install nextcloud -y
if "%cloud_storage_choice%"=="12" choco install spideroak -y
if "%cloud_storage_choice%"=="13" choco install amazondrive -y
if "%cloud_storage_choice%"=="14" choco install sugarsync -y
if "%cloud_storage_choice%"=="15" choco install yandexdisk -y
if "%cloud_storage_choice%"=="16" choco install degoo -y
if "%cloud_storage_choice%"=="17" choco install mediafire -y
if "%cloud_storage_choice%"=="18" choco install opendrive -y
if "%cloud_storage_choice%"=="19" choco install idrive -y
if "%cloud_storage_choice%"=="20" choco install wasabi -y
if "%cloud_storage_choice%"=="21" choco install egnyte -y
if "%cloud_storage_choice%"=="22" choco install backblaze-b2 -y
if "%cloud_storage_choice%"=="23" choco install hubic -y
if "%cloud_storage_choice%"=="24" choco install koofr -y
if "%cloud_storage_choice%"=="25" choco install syncplicity -y
if "%cloud_storage_choice%"=="26" choco install elephantdrive -y
if "%cloud_storage_choice%"=="27" choco install zoolz -y
if "%cloud_storage_choice%"=="28" choco install resilio-sync -y
if "%cloud_storage_choice%"=="29" choco install filecloud -y
if "%cloud_storage_choice%"=="30" choco install livedrive -y
if "%cloud_storage_choice%"=="31" choco install owncloud -y
if "%cloud_storage_choice%"=="32" choco install seafile -y
if "%cloud_storage_choice%"=="33" choco install bitcasa -y
if "%cloud_storage_choice%"=="34" choco install sharefile -y
if "%cloud_storage_choice%"=="35" choco install terabox -y
if "%cloud_storage_choice%"=="36" choco install strongsync -y
if "%cloud_storage_choice%"=="0" goto install_category
goto cloud_storage_tools


:: MISCELLANEOUS TOOLS
:miscellaneous_tools
cls
echo ========================================================
echo               MISCELLANEOUS TOOLS - INSTALL
echo ========================================================
echo [1] Notepad++               [2] Paint.NET              [3] AutoHotkey
echo [4] WinSCP                  [5] FileZilla              [6] Calibre
echo [7] VLC Media Player        [8] MediaMonkey            [9] IrfanView
echo [10] TeamViewer             [11] Zoom                  [12] KeePass
echo [13] 7-Zip                  [14] WinRAR                [15] PowerToys
echo [16] GIMP                   [17] ShareX                [18] Greenshot
echo [19] Discord                [20] Slack                 [21] Telegram
echo [22] Skype                  [23] LibreOffice           [24] OpenOffice
echo [25] Adobe Acrobat Reader   [26] Foxit Reader          [27] PDFCreator
echo [28] qBittorrent            [29] Deluge                [30] Tixati
echo [31] Steam                  [32] Epic Games Launcher   [33] Origin
echo [34] BlueStacks             [35] Genymotion            [36] VirtualBox
echo [37] VMware Player          [38] Docker Desktop        [39] Podman
echo [40] PuTTY                  [41] Cmder                 [42] Git Bash
echo [43] Termius                [44] Vivaldi               [45] Opera
echo [46] Atom                   [47] XAMPP                 [48] WampServer
echo [49] Chocolatey GUI         [50] Postman               [51] Figma
echo [52] Wire                   [53] Tor Browser           [54] OnionShare
echo [55] Cyberduck              [56] OneNote               [57] Scrivener
echo [58] Notion                 [59] Todoist               [60] RescueTime
echo [61] Blender                [62] Inkscape              [63] Krita
echo [64] Darktable              [65] SketchUp              [66] DaVinci Resolve
echo [67] OBS Studio             [68] HandBrake             [69] Audacity
echo [70] Spotify                [71] Amazon Music          [72] Tidal
echo [73] Bandicam               [74] Camtasia Studio       [75] Snagit
echo [76] TreeSize Free          [77] WinDirStat            [78] GlassWire
echo [79] Wireshark              [80] Malwarebytes          [81] CCleaner
echo [82] Recuva                 [83] EaseUS Data Recovery  [84] MiniTool Partition Wizard
echo [85] Parallels Desktop      [86] AnyDesk               [87] RDPWrapper
echo [88] 010 Editor             [89] Sublime Merge         [90] Beyond Compare
echo [91] FastStone Image Viewer [92] Lightworks            [93] Davinci Resolve
echo [94] AutoIt                 [95] Balsamiq              [96] Axure RP
echo [97] Tableau Public         [98] Power BI Desktop      [99] Google Earth Pro
echo [100] Core Temp             [101] HWMonitor            [102] Speccy
echo [103] MSI Afterburner       [104] Throttlestop         [105] Rainmeter
echo [0] Back to Categories
echo.
set /p miscellaneous_choice="Enter your choice: "
if "%miscellaneous_choice%"=="1" choco install notepadplusplus -y
if "%miscellaneous_choice%"=="2" choco install paintnet -y
if "%miscellaneous_choice%"=="3" choco install autohotkey -y
if "%miscellaneous_choice%"=="4" choco install winscp -y
if "%miscellaneous_choice%"=="5" choco install filezilla -y
if "%miscellaneous_choice%"=="6" choco install calibre -y
if "%miscellaneous_choice%"=="7" choco install vlc -y
if "%miscellaneous_choice%"=="8" choco install mediamonkey -y
if "%miscellaneous_choice%"=="9" choco install irfanview -y
if "%miscellaneous_choice%"=="10" choco install teamviewer -y
if "%miscellaneous_choice%"=="11" choco install zoom -y
if "%miscellaneous_choice%"=="12" choco install keepass -y
if "%miscellaneous_choice%"=="13" choco install 7zip -y
if "%miscellaneous_choice%"=="14" choco install winrar -y
if "%miscellaneous_choice%"=="15" choco install powertoys -y
if "%miscellaneous_choice%"=="16" choco install gimp -y
if "%miscellaneous_choice%"=="17" choco install sharex -y
if "%miscellaneous_choice%"=="18" choco install greenshot -y
if "%miscellaneous_choice%"=="19" choco install discord -y
if "%miscellaneous_choice%"=="20" choco install slack -y
if "%miscellaneous_choice%"=="21" choco install telegram -y
if "%miscellaneous_choice%"=="22" choco install skype -y
if "%miscellaneous_choice%"=="23" choco install libreoffice -y
if "%miscellaneous_choice%"=="24" choco install openoffice -y
if "%miscellaneous_choice%"=="25" choco install adobereader -y
if "%miscellaneous_choice%"=="26" choco install foxitreader -y
if "%miscellaneous_choice%"=="27" choco install pdfcreator -y
if "%miscellaneous_choice%"=="28" choco install qbittorrent -y
if "%miscellaneous_choice%"=="29" choco install deluge -y
if "%miscellaneous_choice%"=="30" choco install tixati -y
if "%miscellaneous_choice%"=="31" choco install steam -y
if "%miscellaneous_choice%"=="32" choco install epic-games-launcher -y
if "%miscellaneous_choice%"=="33" choco install origin -y
if "%miscellaneous_choice%"=="34" choco install bluestacks -y
if "%miscellaneous_choice%"=="35" choco install genymotion -y
if "%miscellaneous_choice%"=="36" choco install virtualbox -y
if "%miscellaneous_choice%"=="37" choco install vmwareplayer -y
if "%miscellaneous_choice%"=="38" choco install docker-desktop -y
if "%miscellaneous_choice%"=="39" choco install podman -y
if "%miscellaneous_choice%"=="40" choco install putty -y
if "%miscellaneous_choice%"=="41" choco install cmder -y
if "%miscellaneous_choice%"=="42" choco install git -y
if "%miscellaneous_choice%"=="43" choco install termius -y
if "%miscellaneous_choice%"=="44" choco install vivaldi -y
if "%miscellaneous_choice%"=="45" choco install opera -y
if "%miscellaneous_choice%"=="46" choco install atom -y
if "%miscellaneous_choice%"=="47" choco install xampp -y
if "%miscellaneous_choice%"=="48" choco install wampserver -y
if "%miscellaneous_choice%"=="49" choco install chocolateygui -y
if "%miscellaneous_choice%"=="50" choco install postman -y
if "%miscellaneous_choice%"=="51" choco install figma -y
if "%miscellaneous_choice%"=="52" choco install wire -y
if "%miscellaneous_choice%"=="53" choco install tor-browser -y
if "%miscellaneous_choice%"=="54" choco install onionshare -y
if "%miscellaneous_choice%"=="55" choco install cyberduck -y
if "%miscellaneous_choice%"=="56" choco install onenote -y
if "%miscellaneous_choice%"=="57" choco install scrivener -y
if "%miscellaneous_choice%"=="58" choco install notion -y
if "%miscellaneous_choice%"=="59" choco install todoist -y
if "%miscellaneous_choice%"=="60" choco install rescuetime -y
if "%miscellaneous_choice%"=="61" choco install blender -y
if "%miscellaneous_choice%"=="62" choco install inkscape -y
if "%miscellaneous_choice%"=="63" choco install krita -y
if "%miscellaneous_choice%"=="64" choco install darktable -y
if "%miscellaneous_choice%"=="65" choco install sketchup -y
if "%miscellaneous_choice%"=="66" choco install davinci-resolve -y
if "%miscellaneous_choice%"=="67" choco install obs-studio -y
if "%miscellaneous_choice%"=="68" choco install handbrake -y
if "%miscellaneous_choice%"=="69" choco install audacity -y
if "%miscellaneous_choice%"=="70" choco install spotify -y
if "%miscellaneous_choice%"=="71" choco install amazonmusic -y
if "%miscellaneous_choice%"=="72" choco install tidal -y
if "%miscellaneous_choice%"=="73" choco install bandicam -y
if "%miscellaneous_choice%"=="74" choco install camtasia -y
if "%miscellaneous_choice%"=="75" choco install snagit -y
if "%miscellaneous_choice%"=="76" choco install treesizefree -y
if "%miscellaneous_choice%"=="77" choco install windirstat -y
if "%miscellaneous_choice%"=="78" choco install glasswire -y
if "%miscellaneous_choice%"=="79" choco install wireshark -y
if "%miscellaneous_choice%"=="80" choco install malwarebytes -y
if "%miscellaneous_choice%"=="81" choco install ccleaner -y
if "%miscellaneous_choice%"=="82" choco install recuva -y
if "%miscellaneous_choice%"=="83" choco install easeus-data-recovery -y
if "%miscellaneous_choice%"=="84" choco install minitool-partition-wizard -y
if "%miscellaneous_choice%"=="85" choco install parallels-desktop -y
if "%miscellaneous_choice%"=="86" choco install anydesk -y
if "%miscellaneous_choice%"=="87" choco install rdpwrapper -y
if "%miscellaneous_choice%"=="88" choco install 010editor -y
if "%miscellaneous_choice%"=="89" choco install sublimemerge -y
if "%miscellaneous_choice%"=="90" choco install beyondcompare -y
if "%miscellaneous_choice%"=="91" choco install faststone-image-viewer -y
if "%miscellaneous_choice%"=="92" choco install lightworks -y
if "%miscellaneous_choice%"=="93" choco install davinci-resolve -y
if "%miscellaneous_choice%"=="94" choco install autoit -y
if "%miscellaneous_choice%"=="95" choco install balsamiq -y
if "%miscellaneous_choice%"=="96" choco install axure-rp -y
if "%miscellaneous_choice%"=="97" choco install tableau-public -y
if "%miscellaneous_choice%"=="98" choco install powerbi-desktop -y
if "%miscellaneous_choice%"=="99" choco install googleearthpro -y
if "%miscellaneous_choice%"=="100" choco install coretemp -y
if "%miscellaneous_choice%"=="101" choco install hwmonitor -y
if "%miscellaneous_choice%"=="102" choco install speccy -y
if "%miscellaneous_choice%"=="103" choco install msi-afterburner -y
if "%miscellaneous_choice%"=="104" choco install throttlestop -y
if "%miscellaneous_choice%"=="105" choco install rainmeter -y
if "%miscellaneous_choice%"=="0" goto install_category
goto miscellaneous_tools



:uninstall
cls
echo ========================================================
echo                UNINSTALL SOFTWARE
echo ========================================================
echo.
echo Retrieving installed software...

:: Reset count to 0 to ensure numbering starts from 1 each time
set count=0

for /f "delims=" %%A in ('choco list --id-only') do (
    set /a count+=1
    echo [!count!] %%A
    set "software[!count!]=%%A"
)

echo [0] Back to Main Menu
echo.
set /p uninstall_choice="Enter the number of the software to uninstall (or 0 to go back): "
if "%uninstall_choice%"=="0" goto menu
set selected=!software[%uninstall_choice%]!
if not defined selected (
    echo Invalid selection. Please try again.
    pause
    goto uninstall
)
echo Uninstalling !selected!...
choco uninstall !selected! -y
if !errorlevel! neq 0 (
    echo Failed to uninstall !selected!.
) else (
    echo !selected! uninstalled successfully.
)
pause
goto uninstall

:search
cls
echo ========================================================
echo                 SEARCH FOR SOFTWARE
echo ========================================================
echo.
set /p searchTerm="Enter the software name or keyword to search: "
choco search %searchTerm%
pause
goto menu
