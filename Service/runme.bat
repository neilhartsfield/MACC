@echo off
sadmin recover -z solidcore 
sadmin bu
sadmin features disable execution-control
start Powershell.exe -Command "& {Start-Process Powershell.exe -ArgumentList '-ExecutionPolicy Bypass -File %~dp0go.ps1' -Verb RunAs}"
cls
timeout /t 1 /nobreak >nul
sadmin features enable execution-control
echo.
echo Now try to start the Solidifier Service ;)
echo.
echo NOTE: the command 'scsrvc -d' in an Admin command prompt will try to force start the service.
echo HINT: Don't forget to review the solidcore.log!
echo.
pause