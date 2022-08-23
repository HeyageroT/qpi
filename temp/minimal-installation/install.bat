@echo off
pushd %~dp0
echo Install Minimal
echo Starting KMS
slmgr.vbs /ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D
slmgr.vbs /skms kms.digiboy.ir
slmgr.vbs /ato
echo Installing Firefox
curl -s -L -o Firefox.exe "https://download.mozilla.org/?product=firefox-latest&os=win64&lang=ru"
"Firefox.exe" -ms
echo Installing 7-Zip
"7z2200-x64.exe" /S
echo Installing Notepad ++
"npp.8.4.4.Installer.x64.exe" /S
echo Installing Total Commander
"tcmd1050x64.exe"
copy "totalcmd\wincmd.ini" "%APPDATA%\GHISLER\" /Y > nul
copy "totalcmd\DEFAULT.BAR" "%APPDATA%\GHISLER\" /Y > nul
echo Installing WinCDEmu
"WinCDEmu-4.1.exe" /UNATTENDED
echo Installing qBittorrent
"qbittorrent_4.4.3.1_x64_setup.exe" /S
cls
exit /b