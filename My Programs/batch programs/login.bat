@echo off
title Windows Login System
color a
cls
echo Please register.
echo
set/p user=username:
set/p pass=Password:
cls
echo Your Account %user% has been created.
echo.
pause
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
echo You are noe logged in as %user%.
echo 
pause
cls
exit

