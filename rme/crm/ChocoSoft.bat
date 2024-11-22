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
if "%category%"=="7" goto graphics_design
if "%category%"=="8" goto security_tools
if "%category%"=="9" goto network_tools
if "%category%"=="10" goto education_tools
if "%category%"=="11" goto audio_tools
if "%category%"=="12" goto virtualization_tools
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
echo               DEVELOPMENT TOOLS - INSTALL
echo ========================================================
echo [1] Visual Studio Code     [2] Git                   [3] Python
echo [4] Node.js                [5] Docker                [6] IntelliJ IDEA
echo [7] Eclipse                [8] Java SDK              [9] PHP
echo [10] Ruby                  [11] Android Studio      [12] Xcode
echo [0] Back to Categories
echo.
set /p dev_choice="Enter your choice: "
if "%dev_choice%"=="1" choco install code -y
if "%dev_choice%"=="2" choco install git -y
if "%dev_choice%"=="3" choco install python -y
if "%dev_choice%"=="4" choco install nodejs -y
if "%dev_choice%"=="5" choco install docker-desktop -y
if "%dev_choice%"=="6" choco install intellijidea -y
if "%dev_choice%"=="7" choco install eclipse -y
if "%dev_choice%"=="8" choco install jdk8 -y
if "%dev_choice%"=="9" choco install php -y
if "%dev_choice%"=="10" choco install ruby -y
if "%dev_choice%"=="11" choco install android-studio -y
if "%dev_choice%"=="12" choco install xcode -y
if "%dev_choice%"=="0" goto install_category
goto dev_tools

:: MEDIA TOOLS
:media_tools
cls
echo ========================================================
echo                 MEDIA TOOLS - INSTALL
echo ========================================================
echo [1] VLC Media Player        [2] FL Studio            [3] Spotify
echo [4] Audacity                [5] Winamp               [6] Adobe Premiere Pro
echo [7] Mixxx                   [8] OBS Studio           [9] Adobe Photoshop
echo [10] Logic Pro X            [11] DaVinci Resolve     [12] Final Cut Pro
echo [0] Back to Categories
echo.
set /p media_choice="Enter your choice: "
if "%media_choice%"=="1" choco install vlc -y
if "%media_choice%"=="2" choco install flstudio -y
if "%media_choice%"=="3" choco install spotify -y
if "%media_choice%"=="4" choco install audacity -y
if "%media_choice%"=="5" choco install winamp -y
if "%media_choice%"=="6" choco install adobepremierepro -y
if "%media_choice%"=="7" choco install mixxx -y
if "%media_choice%"=="8" choco install obs-studio -y
if "%media_choice%"=="9" choco install photoshop -y
if "%media_choice%"=="10" choco install logicpro -y
if "%media_choice%"=="11" choco install davinci-resolve -y
if "%media_choice%"=="12" choco install finalcutpro -y
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

:: WEB BROWSERS
:web_browsers
cls
echo ========================================================
echo               WEB BROWSERS - INSTALL
echo ========================================================
echo [1] Google Chrome           [2] Mozilla Firefox       [3] Microsoft Edge
echo [4] Opera                   [5] Brave Browser         [6] Safari
echo [7] Vivaldi                 [8] Tor Browser           [0] Back to Categories
echo.
set /p browser_choice="Enter your choice: "
if "%browser_choice%"=="1" choco install googlechrome -y
if "%browser_choice%"=="2" choco install firefox -y
if "%browser_choice%"=="3" choco install microsoft-edge -y
if "%browser_choice%"=="4" choco install opera -y
if "%browser_choice%"=="5" choco install brave -y
if "%browser_choice%"=="6" choco install safari -y
if "%browser_choice%"=="7" choco install vivaldi -y
if "%browser_choice%"=="8" choco install tor-browser -y
if "%browser_choice%"=="0" goto install_category
goto web_browsers

:: GAMING TOOLS
:gaming_tools
cls
echo ========================================================
echo               GAMING TOOLS - INSTALL
echo ========================================================
echo [1] Steam                   [2] Epic Games            [3] GOG Galaxy
echo [4] Origin                   [5] Discord               [6] Xbox App
echo [7] Twitch                   [8] Battle.net            [0] Back to Categories
echo.
set /p gaming_choice="Enter your choice: "
if "%gaming_choice%"=="1" choco install steam -y
if "%gaming_choice%"=="2" choco install epicgames -y
if "%gaming_choice%"=="3" choco install gog -y
if "%gaming_choice%"=="4" choco install origin -y
if "%gaming_choice%"=="5" choco install discord -y
if "%gaming_choice%"=="6" choco install xbox -y
if "%gaming_choice%"=="7" choco install twitch -y
if "%gaming_choice%"=="8" choco install battlenet -y
if "%gaming_choice%"=="0" goto install_category
goto gaming_tools

:: PRODUCTIVITY TOOLS
:productivity_tools
cls
echo ========================================================
echo               PRODUCTIVITY TOOLS - INSTALL
echo ========================================================
echo [1] Microsoft Office        [2] LibreOffice          [3] Slack
echo [4] Zoom                    [5] Google Drive         [6] Notion
echo [7] Evernote                [8] Trello               [9] Todoist
echo [0] Back to Categories
echo.
set /p productivity_choice="Enter your choice: "
if "%productivity_choice%"=="1" choco install office365 -y
if "%productivity_choice%"=="2" choco install libreoffice -y
if "%productivity_choice%"=="3" choco install slack -y
if "%productivity_choice%"=="4" choco install zoom -y
if "%productivity_choice%"=="5" choco install googledrive -y
if "%productivity_choice%"=="6" choco install notion -y
if "%productivity_choice%"=="7" choco install evernote -y
if "%productivity_choice%"=="8" choco install trello -y
if "%productivity_choice%"=="9" choco install todoist -y
if "%productivity_choice%"=="0" goto install_category
goto productivity_tools

:: GRAPHICS DESIGN and CAD
:graphics_design
cls
echo ========================================================
echo          GRAPHIC DESIGN and CAD TOOLS - INSTALL
echo ========================================================
echo [1] Adobe Photoshop        [2] Adobe Illustrator      [3] AutoCAD
echo [4] Sketch                  [5] CorelDRAW             [6] Blender
echo [7] Inkscape                [8] GIMP                   [9] Figma
echo [10] SolidWorks             [0] Back to Categories
echo.
set /p graphics_choice="Enter your choice: "
if "%graphics_choice%"=="1" choco install photoshop -y
if "%graphics_choice%"=="2" choco install illustrator -y
if "%graphics_choice%"=="3" choco install autocad -y
if "%graphics_choice%"=="4" choco install sketch -y
if "%graphics_choice%"=="5" choco install coreldraw -y
if "%graphics_choice%"=="6" choco install blender -y
if "%graphics_choice%"=="7" choco install inkscape -y
if "%graphics_choice%"=="8" choco install gimp -y
if "%graphics_choice%"=="9" choco install figma -y
if "%graphics_choice%"=="10" choco install solidworks -y
if "%graphics_choice%"=="0" goto install_category
goto graphics_design

:: SECURITY TOOLS
:security_tools
cls
echo ========================================================
echo                 SECURITY TOOLS - INSTALL
echo ========================================================
echo [1] Norton AntiVirus         [2] Malwarebytes         [3] Kaspersky
echo [4] Bitdefender              [5] Avast                [6] McAfee
echo [7] Windows Defender         [8] LastPass              [9] KeePass
echo [10] ExpressVPN              [0] Back to Categories
echo.
set /p security_choice="Enter your choice: "
if "%security_choice%"=="1" choco install norton -y
if "%security_choice%"=="2" choco install malwarebytes -y
if "%security_choice%"=="3" choco install kaspersky -y
if "%security_choice%"=="4" choco install bitdefender -y
if "%security_choice%"=="5" choco install avast -y
if "%security_choice%"=="6" choco install mcafee -y
if "%security_choice%"=="7" choco install defender -y
if "%security_choice%"=="8" choco install lastpass -y
if "%security_choice%"=="9" choco install keepass -y
if "%security_choice%"=="10" choco install expressvpn -y
if "%security_choice%"=="0" goto install_category
goto security_tools

:: NETWORK TOOLS
:network_tools
cls
echo ========================================================
echo               NETWORK TOOLS - INSTALL
echo ========================================================
echo [1] Wireshark               [2] Nmap                  [3] Putty
echo [4] OpenVPN                 [5] PuTTYgen               [6] Tcpdump
echo [7] Netcat                  [8] Fing                   [9] SolarWinds
echo [0] Back to Categories
echo.
set /p network_choice="Enter your choice: "
if "%network_choice%"=="1" choco install wireshark -y
if "%network_choice%"=="2" choco install nmap -y
if "%network_choice%"=="3" choco install putty -y
if "%network_choice%"=="4" choco install openvpn -y
if "%network_choice%"=="5" choco install puttygen -y
if "%network_choice%"=="6" choco install tcpdump -y
if "%network_choice%"=="7" choco install netcat -y
if "%network_choice%"=="8" choco install fing -y
if "%network_choice%"=="9" choco install solarwinds -y
if "%network_choice%"=="0" goto install_category
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
echo                 AUDIO TOOLS - INSTALL
echo ========================================================
echo [1] Audacity               [2] FL Studio             [3] Adobe Audition
echo [4] GarageBand             [5] Reaper                [6] Ableton Live
echo [7] Logic Pro X            [8] Soundtrap             [9] WavePad
echo [0] Back to Categories
echo.
set /p audio_choice="Enter your choice: "
if "%audio_choice%"=="1" choco install audacity -y
if "%audio_choice%"=="2" choco install flstudio -y
if "%audio_choice%"=="3" choco install adobe-audition -y
if "%audio_choice%"=="4" choco install garageband -y
if "%audio_choice%"=="5" choco install reaper -y
if "%audio_choice%"=="6" choco install abletonlive -y
if "%audio_choice%"=="7" choco install logicprox -y
if "%audio_choice%"=="8" choco install soundtrap -y
if "%audio_choice%"=="9" choco install wavepad -y
if "%audio_choice%"=="0" goto install_category
goto audio_tools

:: VIRTUALIZATION and CLOUD
:virtualization_tools
cls
echo ========================================================
echo             VIRTUALIZATION and CLOUD TOOLS - INSTALL
echo ========================================================
echo [1] VirtualBox             [2] VMware Workstation     [3] Docker Desktop
echo [4] Kubernetes             [5] Microsoft Azure CLI    [6] Google Cloud SDK
echo [7] AWS CLI                [8] Parallels Desktop      [9] Hyper-V
echo [0] Back to Categories
echo.
set /p virtualization_choice="Enter your choice: "
if "%virtualization_choice%"=="1" choco install virtualbox -y
if "%virtualization_choice%"=="2" choco install vmware-workstation -y
if "%virtualization_choice%"=="3" choco install docker-desktop -y
if "%virtualization_choice%"=="4" choco install kubernetes-cli -y
if "%virtualization_choice%"=="5" choco install azure-cli -y
if "%virtualization_choice%"=="6" choco install google-cloud-sdk -y
if "%virtualization_choice%"=="7" choco install aws-cli -y
if "%virtualization_choice%"=="8" choco install parallelsdesktop -y
if "%virtualization_choice%"=="9" choco install hyper-v -y
if "%virtualization_choice%"=="0" goto install_category
goto virtualization_tools

:: DATABASE TOOLS
:database_tools
cls
echo ========================================================
echo               DATABASE TOOLS - INSTALL
echo ========================================================
echo [1] MySQL                   [2] PostgreSQL           [3] MongoDB
echo [4] SQLite                  [5] Oracle Database      [6] Microsoft SQL Server
echo [7] Redis                   [8] Apache Cassandra     [9] MariaDB
echo [0] Back to Categories
echo.
set /p database_choice="Enter your choice: "
if "%database_choice%"=="1" choco install mysql -y
if "%database_choice%"=="2" choco install postgresql -y
if "%database_choice%"=="3" choco install mongodb -y
if "%database_choice%"=="4" choco install sqlite -y
if "%database_choice%"=="5" choco install oracle -y
if "%database_choice%"=="6" choco install sql-server -y
if "%database_choice%"=="7" choco install redis -y
if "%database_choice%"=="8" choco install cassandra -y
if "%database_choice%"=="9" choco install mariadb -y
if "%database_choice%"=="0" goto install_category
goto database_tools

:: BACKUP and RECOVERY
:backup_tools
cls
echo ========================================================
echo             BACKUP and RECOVERY TOOLS - INSTALL
echo ========================================================
echo [1] Acronis True Image      [2] EaseUS Todo Backup    [3] Macrium Reflect
echo [4] Clonezilla              [5] Backblaze             [6] Veeam Backup
echo [7] Carbonite               [8] Paragon Backup        [9] IDrive
echo [0] Back to Categories
echo.
set /p backup_choice="Enter your choice: "
if "%backup_choice%"=="1" choco install acronis -y
if "%backup_choice%"=="2" choco install easeus-todo-backup -y
if "%backup_choice%"=="3" choco install macrium-reflect -y
if "%backup_choice%"=="4" choco install clonezilla -y
if "%backup_choice%"=="5" choco install backblaze -y
if "%backup_choice%"=="6" choco install veeam-backup -y
if "%backup_choice%"=="7" choco install carbonite -y
if "%backup_choice%"=="8" choco install paragon-backup -y
if "%backup_choice%"=="9" choco install idrive -y
if "%backup_choice%"=="0" goto install_category
goto backup_tools

:: FILE MANAGEMENT TOOLS
:file_management_tools
cls
echo ========================================================
echo             FILE MANAGEMENT TOOLS - INSTALL
echo ========================================================
echo [1] 7-Zip                   [2] WinRAR                [3] FreeFileSync
echo [4] TeraCopy                [5] Everything            [6] Total Commander
echo [7] FastCopy                [8] Beyond Compare        [9] XYplorer
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
if "%cloud_storage_choice%"=="0" goto install_category
goto cloud_storage_tools

:: MISCELLANEOUS TOOLS
:miscellaneous_tools
cls
echo ========================================================
echo               MISCELLANEOUS TOOLS - INSTALL
echo ========================================================
echo [1] Notepad++              [2] Paint.NET             [3] AutoHotkey
echo [4] WinSCP                 [5] FileZilla             [6] Calibre
echo [7] VLC Media Player       [8] MediaMonkey           [9] IrfanView
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
