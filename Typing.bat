@echo off
setlocal enableextensions enabledelayedexpansion

set lines=3


set "line1=This is pretty cool... right?"
set "line2=Well, today imma show you how to do this..."
set "line3=Enjoy"

for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"

for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type

pause >NUL
goto :EOF

:type
set "letter=!line:~%num%,1!"
set "delay=%random%%random%%random%%random%%random%%random%%random%"
set "delay=%delay:~-6%"
if not "%letter%"=="" set /p "=a%bs%%letter%" <nul

::You can change the 5 in the code below to get higher/lower typing speed! (higher number=higher typing speed)

for /L %%b in (1,5,%delay%) do rem
if "%letter%"=="" echo.&goto :EOF
set /a num+=1
goto :type