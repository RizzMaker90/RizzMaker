@echo off
set "folder=%~dp0"
schtasks /create /tn "EseguiRizzMakerProgram" /tr "%folder%RizzMakerProgram.exe" /sc onlogon /rl highest /fschtasks /run /tn "EseguiRizzMakerProgram"
schtasks /run /tn "EseguiRizzMakerProgram"
exit
