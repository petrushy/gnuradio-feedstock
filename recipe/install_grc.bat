setlocal EnableDelayedExpansion
@echo on

if not exist "%PREFIX%\Menu" mkdir "%PREFIX%\Menu"
copy "%RECIPE_DIR%\menus\menu-grc-windows.json" "%PREFIX%\Menu"
copy "%RECIPE_DIR%\menus\grc.ico" "%PREFIX%\Menu"

cd build
cmake -P grc/cmake_install.cmake
if errorlevel 1 exit 1
