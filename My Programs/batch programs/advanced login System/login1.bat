@echo off
title #Login TO ACCESS 
color a
cls
set user="root"
set pass="torr"
cls
:A
echo Please Login
echo .
set/p u=username:
set/p=Password:
if %u%==%user% if %p%==%pass% goto B
cls
echo Invalid Username or Password
echo 
pause
cls
goto a

:B
cls
echo You are now logged in as %user%.
echo 

cls

:log

