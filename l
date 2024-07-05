@echo off
color 6

title NOSMOKING

:greeting
cls
echo                   |
echo                  |.|
echo                  |.|
echo                 |\./|
echo                 |\./|
echo                 |\./|
echo                 |\./|
echo  \^.\          |\\.//|          /.^/
echo  \--.|\        |\\.//|       /|.--/
echo   \--.| \      |\\.//|    / |.--/
echo    \---.|\      |\./|    /|.---/
echo _ -_^_^_^_-  \ \\ // /  -_^_^_^_- _
echo  - -/_/_/- ^_^/| |\^_^ -\_\_\- -
echo             /_ / | \ _\
echo                  |
set /p Ip=ENTER IP: 
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=0b & echo IP Is SMOKED.) 
set /a num=(%Random%%%9)+1
color %num%
ping -t 1 0 10 127.0.0.1 >nul
GoTo top
