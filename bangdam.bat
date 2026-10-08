:SELECT
start "BUNGDUM x RUNIN" cmd /k "%~f0" SELECT_MENU
exit /b


:SELECT_MENU
cls
echo.
echo        ============================================================
echo                         SELECT EMULATOR
echo        ============================================================
echo.
echo                 [1]  BlueStacks
echo.
echo                 [2]  BlueStacks MSI
echo.
echo                 [0]  Exit
echo.
echo        ============================================================
echo.

set "CHOICE="
set /p "CHOICE=             Select [0-2]: "

if "%CHOICE%"=="1" goto BLUESTACKS
if "%CHOICE%"=="2" goto MSI
if "%CHOICE%"=="0" exit /b

echo.
echo             [X] Invalid selection.
timeout /t 1 /nobreak >nul
goto SELECT_MENU
