@echo off
setlocal
set "folder=%~dp0"
net session >nul 2>&1
if %errorlevel% neq 0 (
    :: Non ha i permessi di amministratore, riavvia come amministratore
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    exit /b
)
if exist "%temp%\getadmin.vbs" del /f /q "%temp%\getadmin.vbs"
start "" "%folder%RizzMakerProgram.exe"
exit
