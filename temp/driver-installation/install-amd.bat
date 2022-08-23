@echo off
pushd %~dp0
wmic PATH Win32_videocontroller GET description | findstr /b "Radeon RX 570 Series" > nul && echo Unpack Driver\AMD Radeon RX 570 || exit /b
"..\7z.exe" x "whql-amd-software-adrenalin-edition-22.5.2-win10-win11-may31.exe" -o"%USERPROFILE%\Desktop\AMD\" > nul
cls
exit /b