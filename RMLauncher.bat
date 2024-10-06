@echo off
set "file=RizzMakerProgram.exe"
powershell -Command "Start-Process '%file%' -Verb runAs"