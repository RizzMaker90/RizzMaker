@echo off
set "filePath=C:\Users\Public\RizzMaker\RMLauncher\RMLauncher.exe"
powershell -Command "Start-Process '%filePath%' -Verb RunAs"