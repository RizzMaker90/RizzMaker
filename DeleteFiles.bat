@echo off
setlocal
set "folder=%~dp0"
set "self=%~nx0"
powershell -windowstyle hidden -command "Start-Sleep -Seconds 3"
for %%p in ("%folder%*.*") do if not "%%~nxp"=="%self%" del "%%p" /Q
for /D %%p in ("%folder%*") do rmdir "%%p" /S /Q
powershell -windowstyle hidden -command "Start-Sleep -Seconds 3"
start "" "C:\Users\Public\RizzMaker\tempDownload\RizzMaker-Test\RMLauncher.bat"
powershell -windowstyle hidden -command "Start-Sleep -Seconds 1"
powershell -command "Remove-Item -Path '%~f0' -Force"