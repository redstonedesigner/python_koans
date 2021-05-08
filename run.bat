@echo off

REM This is how you run it from the command line.
REM You don't actually need this script!
SET RUN_KOANS=python.exe -B contemplate_koans.py

REM Set this to your python folder:
SET PYTHON_PATH="D:\Program Files\Python39"

set SCRIPT=%PYTHON_PATH%\%RUN_KOANS%

:loop

IF NOT "" == "%SCRIPT%" (
  %SCRIPT%
  pause
)

Set /p  keepgoing="Test again? y or n - "
if "%keepgoing%" == "y" (
	goto loop
	)

:end
