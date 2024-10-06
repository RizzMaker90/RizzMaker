@echo off
set "file=RMLauncher.exe"
echo Esegui come amministratore
powershell -Command "Start-Process '%file%' -Verb runAs"
pause