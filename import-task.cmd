@echo off
set TaskName=Lunch-Reminder
set XMLFileName=Lunch Time.xml

schtasks /create /xml "%~dp0%XMLFileName%" /tn "%TaskName%" /ru "%COMPUTERNAME%\%USERNAME%"

if %errorlevel% equ 0 (
    echo Task "%TaskName%" has been successfully imported.
) else (
    echo Error: Failed to import the task "%TaskName%".
    echo Error code: %errorlevel%
)

pause