@echo off
rem Regional settings change for KG-Q332.exe CPS for Wouxun KG-Q332 to run correctly
rem Author: Nikos K. Kantarakias

setlocal enabledelayedexpansion

:: Define backup file
set backupFile=regional_settings_backup.reg

:: Check if backup exists
if not exist "%backupFile%" (
    echo Backing up original settings to %backupFile%...
    (
        echo Windows Registry Editor Version 5.00
        echo [HKEY_CURRENT_USER\Control Panel\International]
        for /f "tokens=2*" %%a in ('reg query "HKCU\Control Panel\International" /v sDecimal ^| findstr sDecimal') do echo "sDecimal"="%%b"
        for /f "tokens=2*" %%a in ('reg query "HKCU\Control Panel\International" /v sThousand ^| findstr sThousand') do echo "sThousand"="%%b"
        for /f "tokens=2*" %%a in ('reg query "HKCU\Control Panel\International" /v sList ^| findstr sList') do echo "sList"="%%b"
    ) > "%backupFile%"
    echo Backup saved.
)

:: Save the current settings to variables
for /f "tokens=2*" %%a in ('reg query "HKCU\Control Panel\International" /v sDecimal') do set origDecimal=%%b
for /f "tokens=2*" %%a in ('reg query "HKCU\Control Panel\International" /v sThousand') do set origThousand=%%b
for /f "tokens=2*" %%a in ('reg query "HKCU\Control Panel\International" /v sList') do set origList=%%b

:: Modify settings
echo.
echo Setting Decimal symbol to "."
reg add "HKCU\Control Panel\International" /t REG_SZ /v sDecimal  /d . /f
echo.
echo Setting Thousand symbol to ","
reg add "HKCU\Control Panel\International" /t REG_SZ /v sThousand /d , /f
echo.
echo Setting List separator to ","
reg add "HKCU\Control Panel\International" /t REG_SZ /v sList /d , /f
echo.

:: Run the program
start /wait /d %~dp0 KG-Q332.exe

:: Restore the original settings
echo.
echo Restoring original Decimal symbol "%origDecimal%"
reg add "HKCU\Control Panel\International" /t REG_SZ /v sDecimal  /d "%origDecimal%" /f
echo.
echo Restoring original Thousand symbol "%origThousand%"
reg add "HKCU\Control Panel\International" /t REG_SZ /v sThousand /d "%origThousand%" /f
echo.
echo Restoring original List separator "%origList%"
reg add "HKCU\Control Panel\International" /t REG_SZ /v sList /d "%origList%" /f
echo.

pause
