@echo off
:: write by saad anouar
start /min
title chrome blocker
:main
tasklist /fi "ImageName eq chrome.exe" /fo csv 2>NUL | find /I "chrome.exe">NUL
if "%ERRORLEVEL%"=="0" TASKKILL /F /IM chrome.exe
goto main 
                          
