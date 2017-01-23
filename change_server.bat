set login=
set password=
set /p try=<try.txt
set /a try+=0

rasdial "%try" /d

if "%try%"=="90" (set /a try=1) else (set /a try+=1)

rasdial "%try%" "%login%" "%password%"

copy nul try.txt
echo %try% >>try.txt

::for debug
::PAUSE