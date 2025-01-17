@echo off
mode con: cols=25 lines=2





REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------
REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------


REM Check if C:\MyApps\Inustall exists
if not exist "C:\MyApps\Inustall" (
    echo Creating directory C:\MyApps\Inustall...
    mkdir "C:\MyApps\Inustall"
)

REM Change directory to C:\MyApps\Inustall
cd /d "C:\MyApps\Inustall"
echo Now in C:\MyApps\Inustall directory.
:: Disable Windows Defender Firewall for all profiles (not recommended for production environments)
echo Disabling Windows Defender Firewall...
netsh advfirewall set allprofiles state off



set targetPath=C:\MyApps
set shortcutPath=%UserProfile%\MyApps.lnk

:: Create a shortcut using PowerShell
powershell -Command ^
    "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut('%shortcutPath%'); $s.TargetPath = '%targetPath%'; $s.Save();"

echo Shortcut created at %shortcutPath%.




:: Start downloading and installing software



REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

:: echo Downloading and installing NetFx3online ...
curl -L -o NetFx3online.bat "https://github.com/zeen20/SoftMee/releases/download/minisoft/NetFx3online.bat"
:: start /wait NetFx3online.bat



REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > DirectX.11_silent.bat
echo cls >> DirectX.11_silent.bat
echo Color 3f >> DirectX.11_silent.bat
echo mode con:cols=64 lines=1 >> DirectX.11_silent.bat
echo curl -L -o DirectX.11_silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/DirectX.11_silent.exe" --progress-bar >> DirectX.11_silent.bat
echo clear >> DirectX.11_silent.bat
echo mode con:cols=64 lines=5 >> DirectX.11_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> DirectX.11_silent.bat
echo echo //            Please wait while DirectX 11 installs...       // >> DirectX.11_silent.bat
echo echo //            Don't close this window during install!        // >> DirectX.11_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> DirectX.11_silent.bat
echo start /wait DirectX.11_silent.exe >> DirectX.11_silent.bat
echo del DirectX.11_silent.exe >> DirectX.11_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > DirectX_silent.bat
echo cls >> DirectX_silent.bat
echo Color 3f >> DirectX_silent.bat
echo mode con:cols=64 lines=1 >> DirectX_silent.bat
echo curl -L -o DirectX_silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/DirectX_silent.exe" --progress-bar >> DirectX_silent.bat
echo clear >> DirectX_silent.bat
echo mode con:cols=64 lines=5 >> DirectX_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> DirectX_silent.bat
echo echo //               Please wait while DirectX installs...       // >> DirectX_silent.bat
echo echo //             Don't close this window during install!       // >> DirectX_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> DirectX_silent.bat
echo start /wait DirectX_silent.exe >> DirectX_silent.bat
echo del DirectX_silent.exe >> DirectX_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > qbittorrent_silent.bat
echo cls >> qbittorrent_silent.bat
echo Color 3f >> qbittorrent_silent.bat
echo mode con:cols=64 lines=1 >> qbittorrent_silent.bat
echo curl -L -o qbittorrent_5.0.1_x64_setup_silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/qbittorrent_5.0.1_x64_setup_silent.exe" --progress-bar >> qbittorrent_silent.bat
echo clear >> qbittorrent_silent.bat
echo mode con:cols=64 lines=5 >> qbittorrent_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> qbittorrent_silent.bat
echo echo //            Please wait while qBittorrent installs...      // >> qbittorrent_silent.bat
echo echo //            Don't close this window during install!        // >> qbittorrent_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> qbittorrent_silent.bat
echo start /wait qbittorrent_5.0.1_x64_setup_silent.exe >> qbittorrent_silent.bat
echo del qbittorrent_5.0.1_x64_setup_silent.exe >> qbittorrent_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > vlc_silent.bat
echo cls >> vlc_silent.bat
echo Color 3f >> vlc_silent.bat
echo mode con:cols=64 lines=1 >> vlc_silent.bat
echo curl -L -o vlc-3.0.21-win64.exe "https://mirror.leitecastro.com/videolan/vlc/3.0.21/win64/vlc-3.0.21-win64.exe" --progress-bar >> vlc_silent.bat
echo clear >> vlc_silent.bat
echo mode con:cols=64 lines=5 >> vlc_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> vlc_silent.bat
echo echo //               Please wait while VLC installs...           // >> vlc_silent.bat
echo echo //             Don't close this window during install!       // >> vlc_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> vlc_silent.bat
echo start /wait vlc-3.0.21-win64.exe /S >> vlc_silent.bat
echo del vlc-3.0.21-win64.exe >> vlc_silent.bat


REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > Able2Extract_silent.bat
echo cls >> Able2Extract_silent.bat
echo Color 3f >> Able2Extract_silent.bat
echo mode con:cols=64 lines=1 >> Able2Extract_silent.bat
echo curl -L -o Able2Extract.Professional.20.0.2.x64.Silent.Install.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/Able2Extract.Professional.20.0.2.x64.Silent.Install.exe" --progress-bar >> Able2Extract_silent.bat
echo clean
echo mode con:cols=64 lines=5 >> Able2Extract_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> Able2Extract_silent.bat
echo echo //                Please wait while VLC installs...          // >> Able2Extract_silent.bat
echo echo //             Don't close this window during install!       // >> Able2Extract_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> Able2Extract_silent.bat
echo start /wait Able2Extract.Professional.20.0.2.x64.Silent.Install.exe >> Able2Extract_silent.bat
echo del Able2Extract.Professional.20.0.2.x64.Silent.Install.exe >> Able2Extract_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > AOMEI_Partition_Assistant_silent.bat
echo cls >> AOMEI_Partition_Assistant_silent.bat
echo Color 3f >> AOMEI_Partition_Assistant_silent.bat
echo mode con:cols=64 lines=1 >> AOMEI_Partition_Assistant_silent.bat
echo curl -L -o AOMEI-Partition-Assistant-Unlimited-10.6.0-Silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/AOMEI-Partition-Assistant-Unlimited-10.6.0-Silent.exe" --progress-bar >> AOMEI_Partition_Assistant_silent.bat
echo clear >> AOMEI_Partition_Assistant_silent.bat
echo mode con:cols=64 lines=5 >> AOMEI_Partition_Assistant_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> AOMEI_Partition_Assistant_silent.bat
echo echo //     Please wait while AOMEI Partition Assistant installs. // >> AOMEI_Partition_Assistant_silent.bat
echo echo //    Don't close this window during installation process!   // >> AOMEI_Partition_Assistant_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> AOMEI_Partition_Assistant_silent.bat
echo start /wait AOMEI-Partition-Assistant-Unlimited-10.6.0-Silent.exe >> AOMEI_Partition_Assistant_silent.bat
echo del AOMEI-Partition-Assistant-Unlimited-10.6.0-Silent.exe >> AOMEI_Partition_Assistant_silent.bat


REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > Foxit_PDF_Reader_silent.bat
echo cls >> Foxit_PDF_Reader_silent.bat
echo Color 3f >> Foxit_PDF_Reader_silent.bat
echo mode con:cols=64 lines=1 >> Foxit_PDF_Reader_silent.bat
echo curl -L -o Foxit.PDF.Reader.11.1.0.Build.52543.Install._by_Mr_Virus_silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/Foxit.PDF.Reader.11.1.0.Build.52543.Install._by_Mr_Virus_silent.exe" --progress-bar >> Foxit_PDF_Reader_silent.bat
echo clear >> Foxit_PDF_Reader_silent.bat
echo mode con:cols=64 lines=5 >> Foxit_PDF_Reader_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> Foxit_PDF_Reader_silent.bat
echo echo //     Please wait while Foxit PDF Reader installs...        // >> Foxit_PDF_Reader_silent.bat
echo echo //    Don't close this window during installation process!   // >> Foxit_PDF_Reader_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> Foxit_PDF_Reader_silent.bat
echo start /wait Foxit.PDF.Reader.11.1.0.Build.52543.Install._by_Mr_Virus_silent.exe >> Foxit_PDF_Reader_silent.bat
echo del Foxit.PDF.Reader.11.1.0.Build.52543.Install._by_Mr_Virus_silent.exe >> Foxit_PDF_Reader_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > Git_silent.bat
echo cls >> Git_silent.bat
echo Color 3f >> Git_silent.bat
echo mode con:cols=64 lines=1 >> Git_silent.bat
echo curl -L -o Git-2.47.1-64-bit_silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/Git-2.47.1-64-bit_silent.exe" --progress-bar >> Git_silent.bat
echo clear >> Git_silent.bat
echo mode con:cols=64 lines=5 >> Git_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> Git_silent.bat
echo echo //          Please wait while Git is being installed...      // >> Git_silent.bat
echo echo //        Don't close this window during the installation!   // >> Git_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> Git_silent.bat
echo start /wait Git-2.47.1-64-bit_silent.exe >> Git_silent.bat
echo del Git-2.47.1-64-bit_silent.exe >> Git_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > Glary_Utilities_Pro_silent.bat
echo cls >> Glary_Utilities_Pro_silent.bat
echo Color 3f >> Glary_Utilities_Pro_silent.bat
echo mode con:cols=64 lines=1 >> Glary_Utilities_Pro_silent.bat
echo curl -L -o Glary.Utilities.Pro.6.19.0.23.Silent.Install.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/Glary.Utilities.Pro.6.19.0.23.Silent.Install.exe" --progress-bar >> Glary_Utilities_Pro_silent.bat
echo clear >> Glary_Utilities_Pro_silent.bat
echo mode con:cols=64 lines=5 >> Glary_Utilities_Pro_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> Glary_Utilities_Pro_silent.bat
echo echo //     Please wait while Glary Utilities Pro installs...     // >> Glary_Utilities_Pro_silent.bat
echo echo //    Don't close this window during installation process!   // >> Glary_Utilities_Pro_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> Glary_Utilities_Pro_silent.bat
echo start /wait Glary.Utilities.Pro.6.19.0.23.Silent.Install.exe >> Glary_Utilities_Pro_silent.bat
echo del Glary.Utilities.Pro.6.19.0.23.Silent.Install.exe >> Glary_Utilities_Pro_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > IObit_Uninstaller_silent.bat
echo cls >> IObit_Uninstaller_silent.bat
echo Color 3f >> IObit_Uninstaller_silent.bat
echo mode con:cols=64 lines=1 >> IObit_Uninstaller_silent.bat
echo curl -L -o IObit.Uninstaller.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/IObit.Uninstaller.exe" --progress-bar >> IObit_Uninstaller_silent.bat
echo clear >> IObit_Uninstaller_silent.bat
echo mode con:cols=64 lines=5 >> IObit_Uninstaller_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> IObit_Uninstaller_silent.bat
echo echo //     Please wait while IObit Uninstaller installs...       // >> IObit_Uninstaller_silent.bat
echo echo //    Don't close this window during installation process!   // >> IObit_Uninstaller_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> IObit_Uninstaller_silent.bat
echo start /wait IObit.Uninstaller.exe >> IObit_Uninstaller_silent.bat
echo del IObit.Uninstaller.exe >> IObit_Uninstaller_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > OneDriveSetup_silent.bat
echo cls >> OneDriveSetup_silent.bat
echo Color 3f >> OneDriveSetup_silent.bat
echo mode con:cols=64 lines=1 >> OneDriveSetup_silent.bat
echo curl -L -o OneDriveSetup_silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/OneDriveSetup_silent.exe" --progress-bar >> OneDriveSetup_silent.bat
echo clear >> OneDriveSetup_silent.bat
echo mode con:cols=64 lines=5 >> OneDriveSetup_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> OneDriveSetup_silent.bat
echo echo //     Please wait while OneDrive is being installed...      // >> OneDriveSetup_silent.bat
echo echo //    Don't close this window during the installation!       // >> OneDriveSetup_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> OneDriveSetup_silent.bat
echo start /wait OneDriveSetup_silent.exe >> OneDriveSetup_silent.bat
echo del OneDriveSetup_silent.exe >> OneDriveSetup_silent.bat


REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > python_3_13_1_silent.bat
echo cls >> python_3_13_1_silent.bat
echo Color 3f >> python_3_13_1_silent.bat
echo mode con:cols=64 lines=1 >> python_3_13_1_silent.bat
echo curl -L -o python-3.13.1-amd64_silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/python-3.13.1-amd64_silent.exe" --progress-bar >> python_3_13_1_silent.bat
echo clear >> python_3_13_1_silent.bat
echo mode con:cols=64 lines=5 >> python_3_13_1_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> python_3_13_1_silent.bat
echo echo //    Please wait while Python 3.13.1 is being installed...  // >> python_3_13_1_silent.bat
echo echo //     Don't close this window during the installation!      // >> python_3_13_1_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> python_3_13_1_silent.bat
echo start /wait python-3.13.1-amd64_silent.exe >> python_3_13_1_silent.bat
echo del python-3.13.1-amd64_silent.exe >> python_3_13_1_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > Wise_Care_365_Pro_7_0_9_691_silent.bat
echo cls >> Wise_Care_365_Pro_7_0_9_691_silent.bat
echo Color 3f >> Wise_Care_365_Pro_7_0_9_691_silent.bat
echo mode con:cols=64 lines=1 >> Wise_Care_365_Pro_7_0_9_691_silent.bat
echo curl -L -o Wise.Care.365.Pro.7.0.9.691.Silent.Install.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/Wise.Care.365.Pro.7.0.9.691.Silent.Install.exe" --progress-bar >> Wise_Care_365_Pro_7_0_9_691_silent.bat
echo clear >> Wise_Care_365_Pro_7_0_9_691_silent.bat
echo mode con:cols=64 lines=5 >> Wise_Care_365_Pro_7_0_9_691_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> Wise_Care_365_Pro_7_0_9_691_silent.bat
echo echo //  Please wait while Wise Care 365 Pro is being installed.. // >> Wise_Care_365_Pro_7_0_9_691_silent.bat
echo echo //   Don't close this window during the installation!        // >> Wise_Care_365_Pro_7_0_9_691_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> Wise_Care_365_Pro_7_0_9_691_silent.bat
echo start /wait Wise.Care.365.Pro.7.0.9.691.Silent.Install.exe >> Wise_Care_365_Pro_7_0_9_691_silent.bat
echo del Wise.Care.365.Pro.7.0.9.691.Silent.Install.exe >> Wise_Care_365_Pro_7_0_9_691_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > ThinAppPortable_silent.bat
echo cls >> ThinAppPortable_silent.bat
echo Color 3f >> ThinAppPortable_silent.bat
echo mode con:cols=64 lines=1 >> ThinAppPortable_silent.bat
echo curl -L -o ThinAppPortable.7z "https://github.com/zeen20/SoftMee/releases/download/minisoft/ThinAppPortable.7z" --progress-bar >> ThinAppPortable_silent.bat
echo clear >> ThinAppPortable_silent.bat
echo mode con:cols=64 lines=5 >> ThinAppPortable_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> ThinAppPortable_silent.bat
echo echo //    Please wait while ThinApp is being downloaded...       // >> ThinAppPortable_silent.bat
echo echo //      Don't close this window during download...           // >> ThinAppPortable_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> ThinAppPortable_silent.bat
echo start /wait "" "C:\Program Files\7-Zip\7z.exe" x ThinAppPortable.7z >> ThinAppPortable_silent.bat
echo del ThinAppPortable.7z >> ThinAppPortable_silent.bat
echo start /wait ThinAppPortable.exe >> ThinAppPortable_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > Turbo_Studio_24_11_5_Portable_silent.bat
echo cls >> Turbo_Studio_24_11_5_Portable_silent.bat
echo Color 3f >> Turbo_Studio_24_11_5_Portable_silent.bat
echo mode con:cols=64 lines=1 >> Turbo_Studio_24_11_5_Portable_silent.bat
echo curl -L -o Turbo.Studio.24.11.5.Portable.KaranPC.7z "https://github.com/zeen20/SoftMee/releases/download/minisoft/Turbo.Studio.24.11.5.Portable.KaranPC.7z" --progress-bar >> Turbo_Studio_24_11_5_Portable_silent.bat
echo clear >> Turbo_Studio_24_11_5_Portable_silent.bat
echo mode con:cols=64 lines=5 >> Turbo_Studio_24_11_5_Portable_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> Turbo_Studio_24_11_5_Portable_silent.bat
echo echo //    Please wait while Turbo Studio is being downloaded...  // >> Turbo_Studio_24_11_5_Portable_silent.bat
echo echo //      Don't close this window during download...           // >> Turbo_Studio_24_11_5_Portable_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> Turbo_Studio_24_11_5_Portable_silent.bat
echo start /wait "" "C:\Program Files\7-Zip\7z.exe" x Turbo.Studio.24.11.5.Portable.KaranPC.7z >> Turbo_Studio_24_11_5_Portable_silent.bat
echo del Turbo.Studio.24.11.5.Portable.KaranPC.7z >> Turbo_Studio_24_11_5_Portable_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > ThinAppPortable_silent.bat
echo cls >> ThinAppPortable_silent.bat
echo Color 3f >> ThinAppPortable_silent.bat
echo mode con:cols=64 lines=1 >> ThinAppPortable_silent.bat
echo curl -L -o ThinAppPortable.7z "https://github.com/zeen20/SoftMee/releases/download/minisoft/ThinAppPortable.7z" --progress-bar >> ThinAppPortable_silent.bat
echo clear >> ThinAppPortable_silent.bat
echo mode con:cols=64 lines=5 >> ThinAppPortable_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> ThinAppPortable_silent.bat
echo echo //     Please wait while ThinApp Portable is being installed... // >> ThinAppPortable_silent.bat
echo echo //    Don't close this window during installation!            // >> ThinAppPortable_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> ThinAppPortable_silent.bat
echo start /wait "" "C:\Program Files\7-Zip\7z.exe" x ThinAppPortable.7z >> ThinAppPortable_silent.bat
echo del ThinAppPortable.7z >> ThinAppPortable_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > DismPlus_silent.bat
echo cls >> DismPlus_silent.bat
echo Color 3f >> DismPlus_silent.bat
echo mode con:cols=64 lines=5 >> DismPlus_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> DismPlus_silent.bat
echo echo //     Please wait while Dism++ is being downloaded...       // >> DismPlus_silent.bat
echo echo //      Don't close this window during downloaded...         // >> DismPlus_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> DismPlus_silent.bat
echo curl -L -o Dism++.10.1.11.1.x64.rar "https://github.com/zeen20/SoftMee/releases/download/minisoft/Dism++.10.1.11.1.x64.rar" --progress-bar >> DismPlus_silent.bat
echo start /wait "" "C:\Program Files\7-Zip\7z.exe" x Dism++.10.1.11.1.x64.rar >> DismPlus_silent.bat
echo del Dism++.10.1.11.1.x64.rar >> DismPlus_silent.bat
echo start Dism++x64 >> DismPlus_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > FastStone_Capture_silent.bat
echo cls >> FastStone_Capture_silent.bat
echo Color 3f >> FastStone_Capture_silent.bat
echo mode con:cols=64 lines=1 >> FastStone_Capture_silent.bat
echo curl -L -o FastStone.Capture_silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/FastStone.Capture.exe" --progress-bar >> FastStone_Capture_silent.bat
echo clear >> FastStone_Capture_silent.bat
echo mode con:cols=64 lines=5 >> FastStone_Capture_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> FastStone_Capture_silent.bat
echo echo //     Please wait while FastStone is being installed.....   // >> FastStone_Capture_silent.bat
echo echo //     Don't close this window during the installation!      // >> FastStone_Capture_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> FastStone_Capture_silent.bat
echo start /wait FastStone.Capture_silent.exe >> FastStone_Capture_silent.bat
echo del FastStone.Capture_silent.exe >> FastStone_Capture_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > MEGAsyncSetup64_silent.bat
echo cls >> MEGAsyncSetup64_silent.bat
echo Color 3f >> MEGAsyncSetup64_silent.bat
echo mode con:cols=64 lines=1 >> MEGAsyncSetup64_silent.bat
echo curl -L -o MEGAsyncSetup64_silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/MEGAsyncSetup64_silent.exe" --progress-bar >> MEGAsyncSetup64_silent.bat
echo clear >> MEGAsyncSetup64_silent.bat
echo mode con:cols=64 lines=5 >> MEGAsyncSetup64_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> MEGAsyncSetup64_silent.bat
echo echo //     Please wait while MEGAsync is being installed...      // >> MEGAsyncSetup64_silent.bat
echo echo //    Don't close this window during the installation!       // >> MEGAsyncSetup64_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> MEGAsyncSetup64_silent.bat
echo start /wait MEGAsyncSetup64_silent.exe >> MEGAsyncSetup64_silent.bat
echo del MEGAsyncSetup64_silent.exe >> MEGAsyncSetup64_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > VirtualBox_Extension_Pack_7_0_10_silent.bat
echo cls >> VirtualBox_Extension_Pack_7_0_10_silent.bat
echo Color 3f >> VirtualBox_Extension_Pack_7_0_10_silent.bat
echo mode con:cols=64 lines=1 >> VirtualBox_Extension_Pack_7_0_10_silent.bat
echo curl -L -o VirtualBox.7.0.10.Build.158379.x64.Extension.PackSilent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/VirtualBox.7.0.10.Build.158379.x64.Extension.PackSilent.exe" --progress-bar >> VirtualBox_Extension_Pack_7_0_10_silent.bat
echo clear >> VirtualBox_Extension_Pack_7_0_10_silent.bat
echo mode con:cols=64 lines=5 >> VirtualBox_Extension_Pack_7_0_10_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> VirtualBox_Extension_Pack_7_0_10_silent.bat
echo echo //   Please wait while the VirtualBox is being installed...  // >> VirtualBox_Extension_Pack_7_0_10_silent.bat
echo echo //     Don't close this window during the installation!      // >> VirtualBox_Extension_Pack_7_0_10_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> VirtualBox_Extension_Pack_7_0_10_silent.bat
echo start /wait VirtualBox.7.0.10.Build.158379.x64.Extension.PackSilent.exe >> VirtualBox_Extension_Pack_7_0_10_silent.bat
echo del VirtualBox.7.0.10.Build.158379.x64.Extension.PackSilent.exe >> VirtualBox_Extension_Pack_7_0_10_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > Java_SE_8u221_silent.bat
echo cls >> Java_SE_8u221_silent.bat
echo Color 3f >> Java_SE_8u221_silent.bat
echo mode con:cols=64 lines=1 >> Java_SE_8u221_silent.bat
echo curl -L -o Java-SE-8u221-x32-x64.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/Java-SE-8u221-x32-x64.exe" --progress-bar >> Java_SE_8u221_silent.bat
echo clear >> Java_SE_8u221_silent.bat
echo mode con:cols=64 lines=5 >> Java_SE_8u221_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> Java_SE_8u221_silent.bat
echo echo //    Please wait while Java SE 8u221 is being installed...  // >> Java_SE_8u221_silent.bat
echo echo //          Don't close this window during installation!     // >> Java_SE_8u221_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> Java_SE_8u221_silent.bat
echo start /wait Java-SE-8u221-x32-x64.exe >> Java_SE_8u221_silent.bat
echo del Java-SE-8u221-x32-x64.exe >> Java_SE_8u221_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > Android_Studio_2021_3_1_17_silent.bat
echo cls >> Android_Studio_2021_3_1_17_silent.bat
echo Color 3f >> Android_Studio_2021_3_1_17_silent.bat
echo mode con:cols=64 lines=1 >> Android_Studio_2021_3_1_17_silent.bat
echo curl -L -o android-studio-2021.3.1.17-windows.exe "https://r1---sn-q4flrn7y.gvt1.com/edgedl/android/studio/install/2021.3.1.17/android-studio-2021.3.1.17-windows.exe" --progress-bar >> Android_Studio_2021_3_1_17_silent.bat
echo clear >> Android_Studio_2021_3_1_17_silent.bat
echo mode con:cols=64 lines=5 >> Android_Studio_2021_3_1_17_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> Android_Studio_2021_3_1_17_silent.bat
echo echo //    Please wait while Android Studio is being installed... // >> Android_Studio_2021_3_1_17_silent.bat
echo echo //         Don't close this window during installation!      // >> Android_Studio_2021_3_1_17_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> Android_Studio_2021_3_1_17_silent.bat
echo start /wait android-studio-2021.3.1.17-windows.exe /S >> Android_Studio_2021_3_1_17_silent.bat
echo del android-studio-2021.3.1.17-windows.exe >> Android_Studio_2021_3_1_17_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > Android_Studio_2024_2_1_12_silent.bat
echo cls >> Android_Studio_2024_2_1_12_silent.bat
echo Color 3f >> Android_Studio_2024_2_1_12_silent.bat
echo mode con:cols=64 lines=1 >> Android_Studio_2024_2_1_12_silent.bat
echo curl -L -o android-studio-2024.2.1.12-windows.exe "https://r6---sn-p5h-gc5y.gvt1.com/edgedl/android/studio/install/2024.2.1.12/android-studio-2024.2.1.12-windows.exe" --progress-bar >> Android_Studio_2024_2_1_12_silent.bat
echo clear >> Android_Studio_2024_2_1_12_silent.bat
echo mode con:cols=64 lines=5 >> Android_Studio_2024_2_1_12_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> Android_Studio_2024_2_1_12_silent.bat
echo echo //    Please wait while Android Studio is being installed... // >> Android_Studio_2024_2_1_12_silent.bat
echo echo //         Don't close this window during installation!      // >> Android_Studio_2024_2_1_12_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> Android_Studio_2024_2_1_12_silent.bat
echo start /wait android-studio-2024.2.1.12-windows.exe /S >> Android_Studio_2024_2_1_12_silent.bat
echo del android-studio-2024.2.1.12-windows.exe >> Android_Studio_2024_2_1_12_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > GoogleDrive_silent.bat
echo cls >> GoogleDrive_silent.bat
echo Color 3f >> GoogleDrive_silent.bat
echo mode con:cols=64 lines=1 >> GoogleDrive_silent.bat
echo curl -L -o GoogleDriveSetup.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/GoogleDriveSetup.exe" --progress-bar >> GoogleDrive_silent.bat
echo clear >> GoogleDrive_silent.bat
echo mode con:cols=64 lines=5 >> GoogleDrive_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> GoogleDrive_silent.bat
echo echo //     Please wait while Google Drive is being installed...  // >> GoogleDrive_silent.bat
echo echo //          Don't close this window during installation!     // >> GoogleDrive_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> GoogleDrive_silent.bat
echo start /wait GoogleDriveSetup.exe >> GoogleDrive_silent.bat
echo del GoogleDriveSetup.exe >> GoogleDrive_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > SilentInstallBuilder_silent.bat
echo cls >> SilentInstallBuilder_silent.bat
echo Color 3f >> SilentInstallBuilder_silent.bat
echo mode con:cols=64 lines=1 >> SilentInstallBuilder_silent.bat
echo curl -L -o Silent-Install-Builder-v6.1.1.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/Silent-Install-Builder-v6.1.1.exe" --progress-bar >> SilentInstallBuilder_silent.bat
echo clear >> SilentInstallBuilder_silent.bat
echo mode con:cols=64 lines=5 >> SilentInstallBuilder_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> SilentInstallBuilder_silent.bat
echo echo //     Please wait while Silent Install Builder is being     // >> SilentInstallBuilder_silent.bat
echo echo //           installed... Don't close this window!           // >> SilentInstallBuilder_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> SilentInstallBuilder_silent.bat
echo start /wait Silent-Install-Builder-v6.1.1.exe >> SilentInstallBuilder_silent.bat
echo del Silent-Install-Builder-v6.1.1.exe >> SilentInstallBuilder_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > ChromePortable.bat
echo cls >> ChromePortable.bat
echo Color 3f >> ChromePortable.bat
echo mode con:cols=64 lines=1 >> ChromePortable.bat
echo curl -L -o ChromePortable.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/ChromePortable.exe" --progress-bar >> ChromePortable.bat
echo clear >> ChromePortable.bat
echo mode con:cols=64 lines=5 >> ChromePortable.bat
echo echo /////////////////////////////////////////////////////////////// >> ChromePortable.bat
echo echo //      Please wait ChromePortable is being installed...     // >> ChromePortable.bat
echo echo //       Don't close this window during installation!        // >> ChromePortable.bat
echo echo /////////////////////////////////////////////////////////////// >> ChromePortable.bat
echo start /wait ChromePortable.exe >> ChromePortable.bat
echo del ChromePortable.exe >> ChromePortable.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > 7ZipInstall_silent.bat
echo cls >> 7ZipInstall_silent.bat
echo Color 3f >> 7ZipInstall_silent.bat
echo mode con:cols=64 lines=1 >> 7ZipInstall_silent.bat
echo curl -L -o "7z2409-x64.exe" "https://7-zip.org/a/7z2409-x64.exe" --progress-bar >> 7ZipInstall_silent.bat
echo clear >> 7ZipInstall_silent.bat
echo mode con:cols=64 lines=5 >> 7ZipInstall_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> 7ZipInstall_silent.bat
echo echo //         Please wait 7-zip is being installed...           // >> 7ZipInstall_silent.bat
echo echo //       Don't close this window during installation!        // >> 7ZipInstall_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> 7ZipInstall_silent.bat
echo start /wait 7z2409-x64.exe /S >> 7ZipInstall_silent.bat
echo del 7z2409-x64.exe >> 7ZipInstall_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > UniExtract_silent.bat
echo cls >> UniExtract_silent.bat
echo Color 3f >> UniExtract_silent.bat
echo mode con:cols=64 lines=1 >> UniExtract_silent.bat
echo curl -L -o UniExtractRC3_silent.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/UniExtractRC3_silent.exe" --progress-bar >> UniExtract_silent.bat
echo clear >> UniExtract_silent.bat
echo mode con:cols=64 lines=5 >> UniExtract_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> UniExtract_silent.bat
echo echo //      Please wait while UniExtract RC3 installs...         // >> UniExtract_silent.bat
echo echo //        Don't close this window during install!            // >> UniExtract_silent.bat
echo echo /////////////////////////////////////////////////////////////// >> UniExtract_silent.bat
echo start /wait UniExtractRC3_silent.exe >> UniExtract_silent.bat
echo del UniExtractRC3_silent.exe >> UniExtract_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > turbo-studio-24.12.14_silent_2025.bat
echo cls >> turbo-studio-24.12.14_silent_2025.bat
echo Color 3f >> turbo-studio-24.12.14_silent_2025.bat
echo mode con:cols=64 lines=1 >> turbo-studio-24.12.14_silent_2025.bat
echo aria2c -o turbo-studio-24.12.14_silent.rar --max-connection-per-server=16 --split=16 --min-split-size=1M "https://archive.org/download/TurboStudioApps/turboStudio-24.12.14_silent.rar" >> turbo-studio-24.12.14_silent_2025.bat

echo cls >> turbo-studio-24.12.14_silent_2025.bat
echo mode con:cols=64 lines=5 >> turbo-studio-24.12.14_silent_2025.bat
echo echo /////////////////////////////////////////////////////////////// >> turbo-studio-24.12.14_silent_2025.bat
echo echo //    Please wait while Turbo Studio is being downloaded...  // >> turbo-studio-24.12.14_silent_2025.bat
echo echo //      Don't close this window during download...           // >> turbo-studio-24.12.14_silent_2025.bat
echo echo /////////////////////////////////////////////////////////////// >> turbo-studio-24.12.14_silent_2025.bat

echo start /wait "" "C:\Program Files\7-Zip\7z.exe" x turbo-studio-24.12.14_silent.rar >> turbo-studio-24.12.14_silent_2025.bat
echo start /wait turbo-studio-24.12.14_silent.exe >> turbo-studio-24.12.14_silent_2025.bat
echo del turbo-studio-24.12.14_silent.rar >> turbo-studio-24.12.14_silent_2025.bat
echo del turbo-studio-24.12.14_silent.exe >> turbo-studio-24.12.14_silent_2025.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------


cd /d "C:\MyApps"


curl -L -o Defender-Antivirus.bat "https://github.com/zeen20/SoftMee/releases/download/minisoft/Defender-Antivirus.bat"
curl -L -o extensionInstall.bat "https://github.com/zeen20/SoftMee/releases/download/minisoft/extensionInstall.bat"
curl -L -o Kill.bat "https://github.com/zeen20/SoftMee/releases/download/minisoft/Kill.bat"
curl -L -o Multi-activated.bat "https://github.com/zeen20/SoftMee/releases/download/minisoft/Multi-activated.bat"
curl -L -o MySFXInstaller.exe "https://github.com/zeen20/SoftMee/releases/download/minisoft/MySFXInstaller.exe"
curl -L -o PortableAppa.bat "https://github.com/zeen20/SoftMee/releases/download/minisoft/PortableAppa.bat"





REM del "C:\Users\runneradmin\Desktop\WinRAR   .lnk" "C:\Users\runneradmin\Desktop\Internet Download Manager.lnk" "C:\Users\Public\Desktop\VLC media player.lnk" C:\Users\Public\Desktop\UltraISO.lnk C:\Users\Public\Desktop\PowerISO.lnk

curl -L -o End.bat "https://raw.githubusercontent.com/zeen20/SoftMee/refs/heads/main/End.bat"
REM start End.bat



:: del /f /s /q "C:\Users\%USERNAME%\AppData\Local\Temp\*.*" && rmdir /s /q "C:\Users\%USERNAME%\AppData\Local\Temp"
:: del "C:\Users\%USERNAME%\Desktop\VLC media player.lnk" && del "C:\Users\%USERNAME%\Desktop\Foxit PDF Reader.lnk" && del "C:\Users\%USERNAME%\Desktop\PowerISO.lnk" && del "C:\Users\%USERNAME%\Desktop\UltraISO.lnk" && del "C:\Users\%USERNAME%\Desktop\WinRAR   .lnk" && del "C:\Users\%USERNAME%\Desktop\Internet Download Manager.lnk" && del "C:\Users\Public\Desktop\Foxit PDF Reader.lnk" && del "C:\Users\Public\Desktop\VLC media player.lnk" && del "C:\Users\Public\Desktop\PowerISO.lnk" && del "C:\Users\Public\Desktop\UltraISO.lnk"

:: for /d %i in ("C:\Program Files\Google\Chrome\Application\*") do if exist "%i\Installer" del /f /s /q "%i\Installer\*"
:: del /f /s /q "C:\Users\%USERNAME%\AppData\Local\Temp\*.*" && rmdir /s /q "C:\Users\%USERNAME%\AppData\Local\Temp"

:: del "C:\Users\%USERNAME%\Desktop\VLC media player.lnk" && del "C:\Users\%USERNAME%\Desktop\Foxit PDF Reader.lnk" && del "C:\Users\%USERNAME%\Desktop\PowerISO.lnk" && del "C:\Users\%USERNAME%\Desktop\UltraISO.lnk" && del "C:\Users\%USERNAME%\Desktop\WinRAR   .lnk" && del "C:\Users\%USERNAME%\Desktop\Internet Download Manager.lnk" && del "C:\Users\Public\Desktop\Foxit PDF Reader.lnk" && del "C:\Users\Public\Desktop\VLC media player.lnk" && del "C:\Users\Public\Desktop\PowerISO.lnk" && del "C:\Users\Public\Desktop\UltraISO.lnk"
:: Prevent closing the window
:: echo Press any key to continue...

:: del "C:\Users\Docker\Desktop\Internet Download Manager.lnk" "C:\Users\Docker\Desktop\WinRAR   .lnk" C:\Users\Public\Desktop\PowerISO.lnk C:\Users\Public\Desktop\UltraISO.lnk "C:\Users\Public\Desktop\VLC media player.lnk" "C:\Users\Public\Desktop\Foxit PDF Reader.lnk"

:: del "C:\Users\%USERNAME%\Desktop\Internet Download Manager.lnk" "C:\Users\%USERNAME%\Desktop\WinRAR   .lnk" C:\Users\Public\Desktop\PowerISO.lnk C:\Users\Public\Desktop\UltraISO.lnk "C:\Users\Public\Desktop\VLC media player.lnk" "C:\Users\Public\Desktop\Foxit PDF Reader.lnk"


del "C:\Users\Public\Desktop\VLC media player.lnk"
set targetPath=C:\MyApps
set shortcutPath=%UserProfile%\Desktop\MyApps.lnk

:: Create a shortcut using PowerShell
powershell -Command ^
    "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut('%shortcutPath%'); $s.TargetPath = '%targetPath%'; $s.Save();"

echo Shortcut created at %shortcutPath%.

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------


@echo off
:: Disable the "Welcome to Microsoft Edge" first-run experience
NET SESSION >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo You need to run this script as Administrator.
    
    exit /b
)
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Edge" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v HideFirstRunExperience /t REG_DWORD /d 1 /f


REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > KeepSystemActive_silent.bat
echo cls >> KeepSystemActive_silent.bat
echo Color 3f >> KeepSystemActive_silent.bat
echo mode con:cols=48 lines=3 >> KeepSystemActive_silent.bat
echo echo ////////////////////////////////////////////////////////////// >> KeepSystemActive_silent.bat
echo echo //    Keeping the system active by simulating a key press...   // >> KeepSystemActive_silent.bat
echo echo ////////////////////////////////////////////////////////////// >> KeepSystemActive_silent.bat
echo :loop >> KeepSystemActive_silent.bat
echo rem Simulate key press every 60 seconds to keep the system active >> KeepSystemActive_silent.bat
echo ping -n 60 127.0.0.1 > nul >> KeepSystemActive_silent.bat
echo rem You can replace the ping command with other actions like moving the mouse or simulating a key press >> KeepSystemActive_silent.bat
echo goto loop >> KeepSystemActive_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

@echo off > christitus_silent.bat
echo cls >> christitus_silent.bat
echo Color 3f >> christitus_silent.bat
echo mode con:cols=25 lines=2 >> christitus_silent.bat
echo powershell -Command "Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command irm https://christitus.com/win | iex' -Verb RunAs" >> christitus_silent.bat
echo exit >> christitus_silent.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

@echo off > Windows10Debloater.bat
echo cls >> Windows10Debloater.bat
echo Color 3f >> Windows10Debloater.bat
echo mode con:cols=25 lines=2 >> Windows10Debloater.bat
echo powershell -Command "Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Command iwr -useb https://git.io/debloat|iex' -Verb RunAs" >> Windows10Debloater.bat
echo exit >> Windows10Debloater.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo curl -L -o extensions-all.bat "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/CM/extensions.bat" >> extensions-all.bat
echo start extensions-all.bat >> extensions-all.bat
start extensions-all.bat






REM ----------------------------------------" MyPortableApps "---------------------------------------------------------------------------------------------------------

curl -L -o MyPortableApps.bat "https://raw.githubusercontent.com/miso201/miso201/refs/heads/main/CM/MyPortableApps.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

echo @echo off > WiseDiskCleanerPortable.bat
echo cls >> WiseDiskCleanerPortable.bat
echo Color 3f >> WiseDiskCleanerPortable.bat
echo mode con:cols=64 lines=1 >> WiseDiskCleanerPortable.bat
echo aria2c -o WiseDiskCleanerPortable.exe --max-connection-per-server=16 --split=16 --min-split-size=1M "https://github.com/zeen20/SoftMee/releases/download/minisoft/WiseDiskCleanerPortable.exe" >> WiseDiskCleanerPortable.bat
echo start WiseDiskCleanerPortable.exe >> WiseDiskCleanerPortable.bat

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

REM Show hidden files, folders, and drives
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden /t REG_DWORD /d 1 /f
REM Hide protected operating system files (like desktop.ini)
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowSuperHidden /t REG_DWORD /d 0 /f
REM ShowSuperHidden = 0: Hides system files like desktop.ini even when hidden files are visible And ShowSuperHidden = 1: Shows protected system files,
REM reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowSuperHidden /t REG_DWORD /d 1 /f
REM Show file extensions for known file types
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideFileExt /t REG_DWORD /d 0 /f
REM Refresh the Explorer shell without restarting it
echo Refreshing Explorer settings...
REM ie4uinit.exe -show
taskkill /im explorer.exe /f >nul
start explorer.exe

REM ----------------------------------------------------------------------------------------------------------------------------------------------------------------

exit
