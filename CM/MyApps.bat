@echo off
cd /d C:\Users\runneradmin\Desktop\MyApps

:: Download the IDMan installer from the provided URL
curl -L -o idman.exe "https://mirror2.internetdownloadmanager.com/idman642build25.exe?v=lt&filename=idman642build25.exe"

:: Run the installer silently and skip dialog boxes
start /wait idman.exe /S /skipdlgs

:: Exit the script
exit
