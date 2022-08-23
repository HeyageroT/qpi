@echo off
pushd %~dp0
echo Install Gaming
echo Installing Visual C++ 2005
"Visual C++\2005\vcredist_x86.EXE" /Q
"Visual C++\2005\vcredist_x64.EXE" /Q
echo Installing Visual C++ 2008
"Visual C++\2008\vcredist_x86.exe" /q
"Visual C++\2008\vcredist_x64.exe" /q
echo Installing Visual C++ 2010
"Visual C++\2010\vcredist_x86.exe" /q /norestart
"Visual C++\2010\vcredist_x64.exe" /q /norestart
echo Installing Visual C++ 2012
"Visual C++\2012\vcredist_x86.exe" /install /quiet /norestart
"Visual C++\2012\vcredist_x64.exe" /install /quiet /norestart
echo Installing Visual C++ 2013
"Visual C++\2013\vcredist_x86.exe" /install /quiet /norestart
"Visual C++\2013\vcredist_x64.exe" /install /quiet /norestart
echo Installing Visual C++ 2015
"Visual C++\2015\VC_redist.x86.exe" /install /quiet /norestart
"Visual C++\2015\VC_redist.x64.exe" /install /quiet /norestart
echo Installing DirectX
"DirectX\DXSETUP.exe" /silent
echo Installing Games for Windows - LIVE
"Games for Windows - LIVE\gfwlivesetup.exe" /q
echo Installing DotNET 5
"DotNET\windowsdesktop-runtime-5.0.17-win-x64" /install /quiet /norestart
"DotNET\windowsdesktop-runtime-5.0.17-win-x86" /install /quiet /norestart
echo Installing DotNET 6
"DotNET\windowsdesktop-runtime-6.0.8-win-x64" /install /quiet /norestart
"DotNET\windowsdesktop-runtime-6.0.8-win-x86" /install /quiet /norestart
echo Installing RivaTuner Statistics Server
"RTSSSetup.exe" /S /D=%PROGRAMFILES%\RivaTuner Statistics Server
echo Installing MSI Afterburner
"MSIAfterburnerSetup464.exe" /S /D=%PROGRAMFILES%\MSI Afterburner
echo Installing Steam
"SteamSetup.exe" /S
echo Installing Ubisoft Connect
"UbisoftConnectInstaller.exe" /S
echo Installing Epic Games Store
msiexec.exe /i "EpicInstaller-13.3.0.msi" /qn
echo Installing LanGame
msiexec.exe /i "LanGame_project.msi" /qn
echo Installing Nefarius Virtual Gamepad Emulation Bus Driver
msiexec.exe /i "ViGEmBusSetup_x64.msi" /qn
echo Installing DS4Windows
"DS4Windows-3.0.18-win64.exe" /S /D=%PROGRAMFILES%\DS4Windows
echo Installing Microsoft Store
call "Microsoft Store\install.bat"
cls
exit /b