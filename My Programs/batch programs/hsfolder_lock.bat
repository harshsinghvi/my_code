@echo off
title HS SCRIPT
color a
echo -----------------------------------------------------
echo WELCOME!!!!!!
echo -----------------------------------------------------
cls
echo %random%%random%%random%%random%%random%
echo %time% %date%
echo IP INFO 
ipconfig
ping www.google.com
ping www.microsoft.com
echo system info
systeminfo
:login
echo login
set/p u=username:
set/p p=Password:
:A
set usr=hs
set pass=pass
if %u%==%usr% if %p%==%pass% goto B
echo Invalid Username or Password
echo 
pause
goto A
:B
echo You are noe logged in as %user%.
echo 
goto file
pause 
:file
title Folder Password v1.5
color 0a
set /a tries=3
set password=idontno
:top
echo.
echo ----------------------------------------------
echo.
echo Folder Password
echo.
echo ----------------------------------------------
echo You have %tries% attempts left.
echo Enter password
echo ----------------------------------------------
set /p pass=
if %pass%==%password% (
goto correct
)
set /a tries=%tries -1
if %tries%==0 (
goto penalty
)
cls
goto top
:penalty
echo Sorry, too many incorrect passwords, initiating shutdown.
start shutdown -s -f -t 35 -c "SHUTDOWN INITIATED"
pause
exit
:correct
cls
echo ----------------------------------------------
echo Password Accepted!
echo.
echo Opening Folder...
echo ----------------------------------------------
explorer D:\xxx
pause
:cho
set /p c=choice:
set ex=exit
if %c%==%ex% goto matrix
goto login

:matrix
@echo off 
color a
cls 
start chrome https://www.google.com
start chrome https://www.hotmail.com
start chrome https://www.gmail.com
:z
echo %time% %date%  [%random%-%random%-%random%] [%random%-%random%] [%random%] 
goto z