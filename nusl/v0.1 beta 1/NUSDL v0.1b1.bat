@echo off
TITLE NUSD Loader
@echo Greetz!
COLOR 1F
@echo Please Wait...
@echo The Files are extracted...
ping 192.168.123.25 -n 3 -w 1000 > NUL
@echo Thank you for Waiting!
@echo What can I do for you?
@echo TAKE THE RISK!
@echo Press ENTER to begin
pause
CLS

type %cd%\update.txt
:a
set /p EINGABE=
if "%EINGABE%"=="O" @echo Starting NUS Download! Please be patient!
if "%EINGABE%"=="O" nusd 0001000148414450 1024 packwad
if "%EINGABE%"=="O" @echo Done!
if "%EINGABE%"=="O" goto :a
if "%EINGABE%"=="BC" @echo Starting NUS Download! Please be patient!
if "%EINGABE%"=="BC" nusd 0000000100000100 6 packwad
if "%EINGABE%"=="BC" @echo Done!
if "%EINGABE%"=="BC" goto :a
if "%EINGABE%"=="P" @echo Starting NUS Download! Please be patient!
if "%EINGABE%"=="P" nusd 0001000248415941 3 packwad
if "%EINGABE%"=="P" @echo Done!
if "%EINGABE%"=="P" goto :a
if "%EINGABE%"=="M" @echo Starting NUS Download! Please be patient!
if "%EINGABE%"=="M" nusd 0000000100000101 10 packwad
if "%EINGABE%"=="M" @echo Done!
if "%EINGABE%"=="M" goto :a
if "%EINGABE%"=="W" @echo Starting NUS Download! Please be patient!
if "%EINGABE%"=="W" nusd 0001000248414650 7 packwad
if "%EINGABE%"=="W" @echo Done!
if "%EINGABE%"=="W" goto :a
if "%EINGABE%"=="Mii" @echo Starting NUS Download! Please be patient!
if "%EINGABE%"=="Mii" nusd 0001000248414341 6 packwad
if "%EINGABE%"=="Mii" @echo Done!
if "%EINGABE%"=="Mii" goto :a
if "%EINGABE%"=="Exit" exit
