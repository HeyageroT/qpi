@echo off
echo Install FULL
pushd %~dp0
call driver-installation\install-panasonic.bat
pushd %~dp0
call driver-installation\install-amd.bat
pushd %~dp0
call office-installation\install.bat
pushd %~dp0
call minimal-installation\install.bat
pushd %~dp0
call media-installation\install.bat
pushd %~dp0
call terminal-installation\install.bat
pushd %~dp0
call gaming-installation\install.bat