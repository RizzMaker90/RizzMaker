@echo off
setlocal
set "folder=%~dp0"
del /Q "%folder%\*.*"
start "" "C:\Users\Public\RizzMaker\RizzMaker-Test\RMLauncher.bat"