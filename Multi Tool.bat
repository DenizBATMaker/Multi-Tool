# Updated content without the 9th option (Help) and reorganized menu options.
updated_bat_content_reorganized = """
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
echo                                     │ 5. Network Tools           │
echo                                     │ 6. File Manager            │
echo                                     │ 7. System Health           │
echo                                     │ 8. Scripts                 │
echo                                     │ 9. Credits                 │
echo                                     │ 10. Exit                   │
echo                                     └────────────────────────────┘

set /p input=Enter your choice: 

if /I "%input%"=="1" goto Github
if /I "%input%"=="2" goto YouTube
if /I "%input%"=="3" goto SystemInfo
if /I "%input%"=="4" goto PingTest
if /I "%input%"=="5" goto NetworkTools
if /I "%input%"=="6" goto FileManager
if /I "%input%"=="7" goto SystemHealth
if /I "%input%"=="8" goto Scripts
if /I "%input%"=="9" goto Credits
if /I "%input%"=="10" exit

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

:NetworkTools
cls
echo 1. Display IP Configuration
echo 2. Renew IP Address
echo 3. Flush DNS
set /p netopt=Enter your choice: 
if "%netopt%"=="1" ipconfig
if "%netopt%"=="2" ipconfig /renew
if "%netopt%"=="3" ipconfig /flushdns
pause
goto MultiTool

:FileManager
cls
echo 1. List Files in Current Directory
echo 2. Search for a File
echo 3. Delete a File
set /p fileopt=Enter your choice: 
if "%fileopt%"=="1" dir
if "%fileopt%"=="2" set /p filename=Enter file name to search: & dir /s /b %filename%
if "%fileopt%"=="3" set /p delname=Enter file name to delete: & del /p %delname%
pause
goto MultiTool

:SystemHealth
cls
echo Checking disk and memory status...
echo Disk Usage:
wmic logicaldisk get name,freespace,size
echo.
echo Memory Status:
wmic os get freephysicalmemory,totalvisiblememorysize
pause
goto MultiTool

:Scripts
cls
echo 1. Run Backup Script
echo 2. Cleanup Temporary Files
set /p scriptopt=Enter your choice: 
if "%scriptopt%"=="1" call backup.bat
if "%scriptopt%"=="2" del /s /q %temp%\*
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
"""

# Writing the reorganized content back to the BAT file
with open(file_path, 'w') as file:
    file.write(updated_bat_content_reorganized)

file_path
