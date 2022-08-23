@echo off
pushd %~dp0
echo Install Driver\Panasonic KX-MB1500
pnputil /add-driver "Printer\KAJDA6.INF" /install > nul
pnputil /add-driver "Scanner\MfsScanKAJD64.inf" /install > nul
cls
exit /b