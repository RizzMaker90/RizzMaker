@echo off
set "file=RMLauncher.exe"
powershell -Command "Start-Process '%file%' -Verb runAs"