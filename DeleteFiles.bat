@echo off
setlocal
set "folder=%~dp0"
set "self=%~nx0"
timeout /t 5 /nobreak
for %%p in ("%folder%*.*") do if not "%%~nxp"=="%self%" del "%%p" /Q
for /D %%p in ("%folder%*") do rmdir "%%p" /S /Q
timeout /t 5 /nobreak
start "" "C:\Users\Public\RizzMaker\tempDownload\RizzMaker-Test\RMLauncher.bat"
