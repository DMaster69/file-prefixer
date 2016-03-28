@echo off
echo.
echo. Add Whatever Prefix...
echo.
echo. You Want To Add...
echo.
echo. To The Filename...
echo.
set /p variable=" > "
setlocal enabledelayedexpansion
for /f "delims=" %%a in (' dir /b /a-d *.jpg *.png') do (
  set oldName=%%a
  Set newName=%variable%!oldName!
  Ren "!oldName!" "!newName!"
)
exit
