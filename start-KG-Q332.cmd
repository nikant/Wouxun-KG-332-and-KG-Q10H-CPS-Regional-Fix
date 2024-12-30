@echo off
echo.
echo.
echo Setting Decimal symbol to .
reg add "HKCU\Control Panel\International" /t REG_SZ /v sDecimal  /d . /f
echo.
echo Setting Thousand symbol to ,
reg add "HKCU\Control Panel\International" /t REG_SZ /v sThousand /d , /f
echo.
echo Setting List separator to ,
reg add "HKCU\Control Panel\International" /t REG_SZ /v sList /d , /f
echo.
start /wait /d %~dp0 KG-Q332.exe
echo.
echo Setting Decimal symbol to ,
reg add "HKCU\Control Panel\International" /t REG_SZ /v sDecimal  /d , /f
echo.
echo Setting Thousand symbol to .
reg add "HKCU\Control Panel\International" /t REG_SZ /v sThousand /d . /f
echo.
echo Setting List separator to ;
reg add "HKCU\Control Panel\International" /t REG_SZ /v sList /d ; /f
echo.
echo.
pause
