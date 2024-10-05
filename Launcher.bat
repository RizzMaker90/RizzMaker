@echo off
setlocal
set "file=RMLauncher.exe"
set "params="
powershell -Command "Start-Process '%file%' -ArgumentList '%params%' -Verb RunAs"
endlocal