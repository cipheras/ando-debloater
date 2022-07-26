@echo off
echo ====================
echo Ando Debloater v1.0
echo ====================
set /p phone=Enter list name from 'app-list' folder: 
echo.
echo Debloating...
echo ===========================================================
set count=0
(for /f "tokens=*" %%x in (app-list\%phone%.txt) do (
    echo %%x 
    adb shell pm uninstall -k --user 0 %%x
    set /a count+=1
    echo.
))
echo ======================
echo #%count% apps removed  
echo ======================
set /p dGoogle=Debloat Google Stuff Too (y/n) ? 
if %dGoogle%==n exit /b 0
echo Debloating Google Stuff...
echo ===========================================================
set count=0
(for /f "tokens=*" %%y in (app-list\google.txt) do (
    echo %%y
    adb shell pm uninstall -k --user 0 %%y
    set /a count+=1
    echo.
))
echo ======================
echo #%count% apps removed  
echo ======================