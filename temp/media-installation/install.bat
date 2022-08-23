@echo off
pushd %~dp0
echo Install Media
echo Installing FastStone Image Viewer
"FSViewerSetup76.exe" /S /D=%PROGRAMFILES%\FastStone Image Viewer
echo Installing HEIF Image Extension
powershell.exe Add-AppxPackage -Path "HEIFImageExtension.Appx"
echo Installing HEVC Video Extension
powershell.exe Add-AppxPackage -Path "HEVCVideoExtension.Appx"
echo Installing foobar2000
"foobar2000_v1.6.11.exe" /S /D=%PROGRAMFILES%\foobar2000
mkdir "%APPDATA%\foobar2000\"
copy "theme.fth" "%APPDATA%\foobar2000\" > nul
echo Installing VLC
"vlc-3.0.17.4-win64.exe" /S
cls
exit /b