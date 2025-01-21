@echo off
cls
chcp 65001 >nul
title Multi Tool
color D

:MultiTool
cls
echo                                   ███╗   ███╗██╗   ██╗██╗  ████████╗██╗   ████████╗ ██████╗  ██████╗ ██╗     
echo                                   ████╗ ████║██║   ██║██║  ╚══██╔══╝██║   ╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo                                   ██╔████╔██║██║   ██║██║     ██║   ██║█████╗██║   ██║   ██║██║   ██║██║     
echo                                   ██║╚██╔╝██║██║   ██║██║     ██║   ██║╚════╝██║   ██║   ██║██║   ██║██║     
echo                                   ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║      ██║   ╚██████╔╝╚██████╔╝███████╗
echo                                   ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝      ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.
echo                                     ┌────────────────────────────┐
echo                                     │ 1. GitHub                  │
echo                                     │ 2. YouTube                 │
echo                                     │ 3. System Info             │
echo                                     │ 4. Ping Test               │
echo                                     │ 5. Credits                 │
echo                                     │ 6. Exit                    │
echo                                     └────────────────────────────┘

set /p input=Enter your choice:  

if /I "%input%"=="1" goto Github
if /I "%input%"=="2" goto YouTube
if /I "%input%"=="3" goto SystemInfo
if /I "%input%"=="4" goto PingTest
if /I "%input%"=="5" goto Credits
if /I "%input%"=="6" exit

echo Invalid choice, please try again.
pause
goto MultiTool

:Github
start https://github.com/DenizBATMaker
pause
goto MultiTool

:YouTube
start https://www.youtube.com/@9DenizSami
pause
goto MultiTool

:SystemInfo
cls
echo Gathering system information...
systeminfo | more
pause
goto MultiTool

:PingTest
cls
set /p target=Enter a website or IP to ping: 
ping %target%
pause
goto MultiTool

:Credits
cls
echo ---------------------------------------------------------
echo                    Multi Tool - Version 1.0
echo                   Created by: Deniz
echo          Special thanks for using this tool!
echo ---------------------------------------------------------
pause
goto MultiTool