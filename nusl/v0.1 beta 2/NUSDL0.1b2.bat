@echo off
mode 80, 50
TITLE NUSD Loader
echo.								      v0.1 beta2
echo                                    NUSDLoader                                
echo.
echo                                     by iCON
@echo Greetz!
COLOR 1F
@echo Extracting...
ping 192.168.123.25 -n 1 -w 20 > NUL
@echo Der Author dieser Batch haftet nicht fuer evtl. fehlerhafte WADs!
@echo Druecke ENTER!
pause

:a
COLOR 1F
CLS
type %cd%\update.txt
set /p EINGABE=
if "%EINGABE%"=="WAD" CLS
if "%EINGABE%"=="WAD" COLOR 1C
if "%EINGABE%"=="WAD" @echo Yet another Wad Manager Deutsche Version
if "%EINGABE%"=="WAD" COLOR 1F
if "%EINGABE%"=="WAD" @echo Downloading boot.dol...
if "%EINGABE%"=="WAD" wget http://thebatch.bplaced.net/NUSDL/YAWMM/boot.dol
if "%EINGABE%"=="WAD" @echo Downloading icon.png...
if "%EINGABE%"=="WAD" wget http://thebatch.bplaced.net/NUSDL/YAWMM/icon.png
if "%EINGABE%"=="WAD" @echo Downloading meta.xml...
if "%EINGABE%"=="WAD" wget http://thebatch.bplaced.net/NUSDL/YAWMM/meta.xml
if "%EINGABE%"=="WAD" mkdir %cd%\YAWMM
if "%EINGABE%"=="WAD" move %cd%\boot.dol %cd%\YAWMM
if "%EINGABE%"=="WAD" move %cd%\icon.png %cd%\YAWMM
if "%EINGABE%"=="WAD" move %cd%\meta.xml %cd%\YAWMM
if "%EINGABE%"=="WAD" mkdir %cd%\apps
if "%EINGABE%"=="WAD" move %cd%\YAWMM %cd%\apps
if "%EINGABE%"=="WAD" move %cd%\apps %cd%\COPY_TO_SD_OR_USB
if "%EINGABE%"=="WAD" COLOR 1A
if "%EINGABE%"=="WAD" @echo Download successful
if "%EINGABE%"=="WAD" COLOR 1F
if "%EINGABE%"=="WAD" pause
if "%EINGABE%"=="WAD" goto :a
if "%EINGABE%"=="O" CLS
if "%EINGABE%"=="O" COLOR 1C
if "%EINGABE%"=="O" @echo Opera Internet Kanal
if "%EINGABE%"=="O" COLOR 1F
if "%EINGABE%"=="O" @echo Starting NUS Download! Please be patient!
if "%EINGABE%"=="O" nusd 0001000148414450 1024 packwad
if "%EINGABE%"=="O" COLOR 1A
if "%EINGABE%"=="O" @echo Download successful
if "%EINGABE%"=="O" COLOR 1F
if "%EINGABE%"=="O" pause
if "%EINGABE%"=="O" goto :a
if "%EINGABE%"=="BC" CLS
if "%EINGABE%"=="BC" COLOR 1C
if "%EINGABE%"=="BC" @echo BC
if "%EINGABE%"=="BC" COLOR 1F
if "%EINGABE%"=="BC" @echo Starting NUS Download! Please be patient!
if "%EINGABE%"=="BC" nusd 0000000100000100 6 packwad
if "%EINGABE%"=="BC" COLOR 1A
if "%EINGABE%"=="BC" @echo Download successful
if "%EINGABE%"=="BC" COLOR 1F
if "%EINGABE%"=="BC" pause
if "%EINGABE%"=="BC" goto :a
if "%EINGABE%"=="P" CLS
if "%EINGABE%"=="P" COLOR 1C
if "%EINGABE%"=="P" @echo Fotokanal 1.1
if "%EINGABE%"=="P" COLOR 1F
if "%EINGABE%"=="P" @echo Starting NUS Download! Please be patient!
if "%EINGABE%"=="P" nusd 0001000248415941 3 packwad
if "%EINGABE%"=="P" COLOR 1A
if "%EINGABE%"=="P" @echo Download successful
if "%EINGABE%"=="P" COLOR 1F
if "%EINGABE%"=="P" pause
if "%EINGABE%"=="P" goto :a
if "%EINGABE%"=="M" CLS
if "%EINGABE%"=="M" COLOR 1C
if "%EINGABE%"=="M" @echo MIOS (Gamecube Support)
if "%EINGABE%"=="M" COLOR 1F
if "%EINGABE%"=="M" @echo Starting NUS Download! Please be patient!
if "%EINGABE%"=="M" nusd 0000000100000101 10 packwad
if "%EINGABE%"=="M" COLOR 1A
if "%EINGABE%"=="M" @echo Download successful
if "%EINGABE%"=="M" COLOR 1F
if "%EINGABE%"=="M" pause
if "%EINGABE%"=="M" goto :a
if "%EINGABE%"=="W" CLS
if "%EINGABE%"=="W" COLOR 1C
if "%EINGABE%"=="W" @echo Wetterkanal
if "%EINGABE%"=="W" COLOR 1F
if "%EINGABE%"=="W" @echo Starting NUS Download! Please be patient!
if "%EINGABE%"=="W" nusd 0001000248414650 7 packwad
if "%EINGABE%"=="W" COLOR 1A
if "%EINGABE%"=="W" @echo Download successful
if "%EINGABE%"=="W" COLOR 1F
if "%EINGABE%"=="W" pause
if "%EINGABE%"=="W" goto :a
if "%EINGABE%"=="Mii" CLS
if "%EINGABE%"=="Mii" COLOR 1C
if "%EINGABE%"=="Mii" @echo Mii-Kanal
if "%EINGABE%"=="Mii" COLOR 1F
if "%EINGABE%"=="Mii" @echo Starting NUS Download! Please be patient!
if "%EINGABE%"=="Mii" nusd 0001000248414341 6 packwad
if "%EINGABE%"=="Mii" COLOR 1A
if "%EINGABE%"=="Mii" @echo Download successful
if "%EINGABE%"=="Mii" COLOR 1F
if "%EINGABE%"=="Mii" pause
if "%EINGABE%"=="Mii" goto :a
if "%EINGABE%"=="NET" COLOR 1C
if "%EINGABE%"=="NET" @echo Microsoft .NET Framework Redistruable 2.0
if "%EINGABE%"=="NET" COLOR 1F
if "%EINGABE%"=="NET" @echo Du wirst nun weitergeleitet zu MICROSOFTs Website
if "%EINGABE%"=="NET" @echo Die x86 Version bei 32-Bit und die x64 Version bei 64-Bit!
if "%EINGABE%"=="NET" start http://www.microsoft.com/downloads/de-de/details.aspx?FamilyID=0856EACB-4362-4B0D-8EDD-AAB15C5E04F5
if "%EINGABE%"=="NET" start http://www.microsoft.com/downloads/de-de/details.aspx?FamilyID=b44a0000-acf8-4fa1-affb-40e78d788b00
if "%EINGABE%"=="NET" COLOR 1A
if "%EINGABE%"=="NET" @echo Downloade das Setup fuer dein System (Win7 und Vista nicht) und installiere es mit den Standardeinstellungen auf deinem Computer. Manchmal ist ein Neustart notwendig
if "%EINGABE%"=="NET" COLOR 1F
if "%EINGABE%"=="NET" pause
if "%EINGABE%"=="NET" goto :a
if "%EINGABE%"=="Exit" exit