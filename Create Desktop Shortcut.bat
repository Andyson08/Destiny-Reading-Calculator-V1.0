@echo off
REM Creates a Desktop shortcut that opens destiny_reading.html in your default browser.
setlocal
set "APP_HTML=%~dp0destiny_reading.html"

powershell -NoProfile -ExecutionPolicy Bypass -Command "$desktop = [Environment]::GetFolderPath('Desktop'); $lnk = Join-Path $desktop 'Destiny Reading.lnk'; $s = (New-Object -ComObject WScript.Shell).CreateShortcut($lnk); $s.TargetPath = '%APP_HTML%'; $s.IconLocation = '%SystemRoot%\System32\shell32.dll,43'; $s.Description = 'Destiny Reading'; $s.Save(); Write-Host ('Shortcut created: ' + $lnk)"
pause
endlocal
