@echo off
set "folder=%~dp0"
runas /user:Administrator "%folder%RizzMakerProgram.exe"
exit
