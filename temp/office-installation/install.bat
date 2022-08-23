@echo off
pushd %~dp0
echo Install Office
echo Installing Microsoft Office 2016
"Microsoft Office 2016\setup.exe"
cd /d %ProgramFiles%\Microsoft Office\Office16
cscript ospp.vbs /inpkey:JNRGM-WHDWX-FJJG3-K47QV-DRTFM
cscript ospp.vbs /act
echo Installing SumatraPDF
"SumatraPDF-3.4.6-64-install.exe" -s -d "%PROGRAMFILES%\SumatraPDF"
cls
exit /b