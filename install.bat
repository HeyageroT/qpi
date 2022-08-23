@echo off
copy "temp\skate.png" "%USERPROFILE%\Pictures\"
:start
cls
pushd %~dp0
echo.
echo Installer by Alexander Neumyvakin
echo.
echo (1) - Minimal
echo (2) - Office
echo (3) - Media
echo (4) - Gaming
echo (+) - Gaming with on-Line service
echo (5) - Terminal
echo (P) - Driver\Panasonic KX-MB1500
echo (A) - Driver\AMD Radeon RX 570
echo.
echo (F) - FULL
echo.
echo (Q) - Quit
echo.
set /p choice="Choice: "
if "%choice%"=="1" (call temp\minimal-installation\install.bat)
if "%choice%"=="2" (call temp\office-installation\install.bat)
if "%choice%"=="3" (call temp\media-installation\install.bat)
if "%choice%"=="4" (call temp\gaming-installation\install.bat)
if "%choice%"=="+" (call temp\gaming-installation\install-plus.bat)
if "%choice%"=="5" (call temp\terminal-installation\install.bat)
if "%choice%"=="p" (call temp\driver-installation\install-panasonic.bat)
if "%choice%"=="a" (call temp\driver-installation\install-amd.bat)
if "%choice%"=="f" (call temp\install.bat)
if "%choice%"=="q" (exit)
goto start