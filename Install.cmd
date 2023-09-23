@echo off
setlocal


set "sourceFolder=%~dp0Lunch Reminder"

set "destinationFolder=C:\Program Files (x86)\"

if not exist "%sourceFolder%" (
    echo Source folder does not exist.
    pause
    exit /b 1
)

xcopy "%sourceFolder%" "%destinationFolder%" /e /i /y

if errorlevel 1 (
    echo Copy failed.
    pause
) else (
    echo Installed Successfully.
    pause
)

exit /b 0
