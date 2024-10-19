@echo off
setlocal
set "folder=%~dp0"
set "self=%~nx0"
set "fileName=RMLauncher.bat"
set "excludePath=C:\Users\Public\RizzMaker"

powershell -windowstyle hidden -command "Start-Sleep -Seconds 3"
for %%p in ("%folder%*.*") do if not "%%~nxp"=="%self%" del "%%p" /Q
for /D %%p in ("%folder%*") do rmdir "%%p" /S /Q
for /R "C:\" %%f in (*.lnk) do (
    if not "%%~dpf"=="%excludePath%\" (
        set "linkPath=%%f"
        for /F "usebackq tokens=*" %%a in (`powershell -command "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut('%linkPath%'); $s.TargetPath"`) do (
            if "%%~nxa"=="%fileName%" del "%%f"
        )
    )
)

powershell -windowstyle hidden -command "Start-Sleep -Seconds 3"
start "" "C:\Users\Public\RizzMaker\tempDownload\RizzMaker-Test\RMLauncher.bat"
powershell -windowstyle hidden -command "Start-Sleep -Seconds 1"
powershell -command "Remove-Item -Path '%~f0' -Force"