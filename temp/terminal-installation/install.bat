@echo off
pushd %~dp0
echo Install Terminal
echo Installing WireGuard
msiexec.exe /i "wireguard-amd64-0.5.3.msi" /qn
echo Installing ZeroTier One
msiexec.exe /i "ZeroTier One.msi" /qn
cls
exit /b