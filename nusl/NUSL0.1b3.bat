@echo off
mode 80, 50
COLOR 1F
TITLE NUSD Loader
echo.				  NUSDLoader		              v0.1 beta3
echo.                                   by iCON                              
echo.
echo.
@echo off
color 1F
::---------------------------------------------------------
sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] THIS SOFTWARE MUST NOT BE SOLD
sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 		    NEITHER ALONE NOR AS PART OF A BUNDLE.
echo.
sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 		   IF YOU PAID FOR THIS SOFTWARE OR RECEIVED
sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 		   IT AS PART OF A BUNDLE FOLLOWING PAYMENT,
sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 		   	   YOU HAVE BEEN SCAMMED
sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 		 AND SHOULD DEMAND YOUR MONEY BACK IMMEDIATLEY
echo. 
sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Green] 			For furhter details see
sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Cyan] 		      http://hbc.hackmii.com/scam
@ping 127.0.0.1 -n 5 -w 1000> nul
echo.
sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] USE THIS AT YOUR OWN RISK!
echo.
sfk echo -spat \x20  THIS PACKAGE COMES WITH ABSOLUTELY NO WARRANTY, NEITHER STATED NOR IMPLIED.
sfk echo -spat \x20  NO ONE BUT YOURSELF IS TO BE HELD RESPONSIBLE FOR ANY DAMAGE THIS MAY CAUSE
sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 TO YOUR NINTENDO WII CONSOLE!
echo.
sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] YOU CAN REDISTRIBUTE THIS SOFTWARE
echo.
sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Green] BUT IT'S COPYRIGHTED TO
sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Cyan] http://wiidatabase.de.tl
@ping 127.0.0.1 -n 5 -w 1000> nul
echo.
@echo Drcke bitte eine beliebige Taste, um fortzufahren!
pause > NUL



:a
TITLE NUSD Loader
COLOR 1F
CLS
type %cd%\update.txt
set /p EINGABE=
if "%EINGABE%"=="Brick" CLS
if "%EINGABE%"=="Brick" goto :Brick
if "%EINGABE%"=="boot2" CLS
if "%EINGABE%"=="boot2" @echo Boot2
if "%EINGABE%"=="boot2" @echo WARNING! 
if "%EINGABE%"=="boot2" @echo Boot2 is a critical part of the Wii boot sequence.
if "%EINGABE%"=="boot2" @echo The only safe way to mess with boot2
if "%EINGABE%"=="boot2" @echo is to install BootMii if possible.
if "%EINGABE%"=="boot2" @echo Starting NUS Download! Please be patient!
if "%EINGABE%"=="boot2" nusd 0000000100000001 4 packwad
if "%EINGABE%"=="boot2" @echo Download successful
if "%EINGABE%"=="boot2" pause
if "%EINGABE%"=="boot2" goto :a
if "%EINGABE%"=="EULA" CLS
if "%EINGABE%"=="EULA" @echo End User License Agreement
if "%EINGABE%"=="EULA" @echo WARNING!
if "%EINGABE%"=="EULA" @echo This is the 'channel' for EULA acceptance.
if "%EINGABE%"=="EULA" @echo It is wise not to mess with it!
if "%EINGABE%"=="EULA" @echo Starting NUS Download! Please be patient!
if "%EINGABE%"=="EULA" nusd 0001000848414B50 3 packwad
if "%EINGABE%"=="EULA" @echo Download succesful
if "%EINGABE%"=="EULA" pause
if "%EINGABE%"=="EULA" goto :a
if "%EINGABE%"=="WAD" CLS
if "%EINGABE%"=="WAD" @echo Yet another Wad Manager Deutsche Version
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
if "%EINGABE%"=="WAD" @echo Download successful
if "%EINGABE%"=="WAD" pause
if "%EINGABE%"=="WAD" goto :a
if "%EINGABE%"=="O" CLS
if "%EINGABE%"=="O" @echo Opera Internet Kanal
if "%EINGABE%"=="O" @echo Starting NUS Download! Please be patient!
if "%EINGABE%"=="O" nusd 0001000148414450 1024 packwad
if "%EINGABE%"=="O" @echo Download successful
if "%EINGABE%"=="O" pause
if "%EINGABE%"=="O" goto :a
if "%EINGABE%"=="BC" CLS
if "%EINGABE%"=="BC" @echo BC
if "%EINGABE%"=="BC" @echo Starting NUS Download! Please be patient!
if "%EINGABE%"=="BC" nusd 0000000100000100 6 packwad
if "%EINGABE%"=="BC" @echo Download successful
if "%EINGABE%"=="BC" pause
if "%EINGABE%"=="BC" goto :a
if "%EINGABE%"=="F1" CLS
if "%EINGABE%"=="F1" @echo Fotokanal 1.1
if "%EINGABE%"=="F1" @echo Starting NUS Download! Please be patient!
if "%EINGABE%"=="F1" nusd 0001000248415941 3 packwad
if "%EINGABE%"=="F1" @echo Download successful
if "%EINGABE%"=="F1" pause
if "%EINGABE%"=="F1" goto :a
if "%EINGABE%"=="F" CLS
if "%EINGABE%"=="F" @echo Fotokanal
if "%EINGABE%"=="F" @echo Starting NUS Download! Please be patient!
if "%EINGABE%"=="F" nusd 0001000248414141 2 packwad
if "%EINGABE%"=="F" @echo Download succesful
if "%EINGABE%"=="F" pause
if "%EINGABE%"=="F" goto :a
if "%EINGABE%"=="M" CLS
if "%EINGABE%"=="M" @echo MIOS (Gamecube Support)
if "%EINGABE%"=="M" @echo Starting NUS Download! Please be patient!
if "%EINGABE%"=="M" nusd 0000000100000101 10 packwad
if "%EINGABE%"=="M" @echo Download successful
if "%EINGABE%"=="M" pause
if "%EINGABE%"=="M" goto :a
if "%EINGABE%"=="W" CLS
if "%EINGABE%"=="W" @echo Wetterkanal
if "%EINGABE%"=="W" @echo Starting NUS Download! Please be patient!
if "%EINGABE%"=="W" nusd 0001000248414650 7 packwad
if "%EINGABE%"=="W" @echo Download successful
if "%EINGABE%"=="W" pause
if "%EINGABE%"=="W" goto :a
if "%EINGABE%"=="Shop" CLS
if "%EINGABE%"=="Shop" @echo Wii-Shop Kanal
if "%EINGABE%"=="Shop" @echo Starting NUS Download! Please be patient!
if "%EINGABE%"=="Shop" @echo This may take a while! Be patient!
if "%EINGABE%"=="Shop" nusd 0001000248414241 20 packwad
if "%EINGABE%"=="Shop" @echo Download succesful
if "%EINGABE%"=="Shop" @echo Now Downloading the IOS 56 v5662...
if "%EINGABE%"=="Shop" @echo nusd 0000000100000038 5662 packwad
if "%EINGABE%"=="Shop" pause
if "%EINGABE%"=="Shop" goto :a
if "%EINGABE%"=="Mii" CLS
if "%EINGABE%"=="Mii" @echo Mii-Kanal
if "%EINGABE%"=="Mii" @echo Starting NUS Download! Please be patient!
if "%EINGABE%"=="Mii" nusd 0001000248414341 6 packwad
if "%EINGABE%"=="Mii" @echo Download successful
if "%EINGABE%"=="Mii" pause
if "%EINGABE%"=="Mii" goto :a
if "%EINGABE%"=="Update" goto :update
if "%EINGABE%"=="IOS" goto :b
if "%EINGABE%"=="NET" CLS
if "%EINGABE%"=="NET" @echo Microsoft .NET Framework Redistruable 2.0
if "%EINGABE%"=="NET" @echo Du wirst nun weitergeleitet zu MICROSOFTs Website
if "%EINGABE%"=="NET" @echo Die x86 Version bei 32-Bit und die x64 Version bei 64-Bit!
if "%EINGABE%"=="NET" start http://www.microsoft.com/downloads/de-de/details.aspx?FamilyID=0856EACB-4362-4B0D-8EDD-AAB15C5E04F5
if "%EINGABE%"=="NET" start http://www.microsoft.com/downloads/de-de/details.aspx?FamilyID=b44a0000-acf8-4fa1-affb-40e78d788b00
if "%EINGABE%"=="NET" @echo Downloade das Setup fuer dein System (Win7 und Vista nicht) und installiere es mit den Standardeinstellungen auf deinem Computer. Manchmal ist ein Neustart notwendig
if "%EINGABE%"=="NET" pause
if "%EINGABE%"=="NET" goto :a
if "%EINGABE%"=="Exit" exit
if "%EINGABE%"=="" goto :a

:b
CLS
TITLE IOS Database
@echo Willkommen in der IOS Database!
@echo Downloade nicht wild die letzte Version! 
@echo Dies wird deine Wii bricken!
@echo Schaue dir UNBEDINGT die Liste der SystemIOS an!
@echo Auf der Firmware auf der du bist, darfst du das entsprechende IOS AUF KEINESFALLS updaten!
@echo Sonst bekommst du einen Systemmen Brick!
@echo Ohne Priiloader/Bootmii in boot2 stehst du dann dumm da
@echo Dafr gibt es die Systemios Liste!
@echo.
sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] USE THIS AT YOUR OWN RISK!
echo.
sfk echo -spat \x20  THIS PACKAGE COMES WITH ABSOLUTELY NO WARRANTY, NEITHER STATED NOR IMPLIED.
sfk echo -spat \x20  NO ONE BUT YOURSELF IS TO BE HELD RESPONSIBLE FOR ANY DAMAGE THIS MAY CAUSE
sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 TO YOUR NINTENDO WII CONSOLE!
echo.
echo.
@ping 127.0.0.1 -n 5 -w 1000> nul
@echo Wenn du die Risiken verstanden hast, drcke eine beliebige Taste
pause > NUL
goto :d

:c
CLS
type %cd%\Systemios.txt
pause
goto :d

:d
CLS
@echo IOS Database Beta 1
@echo Waehle ein IOS!
type %cd%\IOS.txt
@echo.
@echo Um fortzufahren schreibe das IOS ab (bsp.: IOS 5, Systemios, etc.)
@echo Du kommst jederzeit durch drcken von B hierher, wenn du ein IOS gewaehlt hast!

set /p EINGABE=
if "%EINGABE%"=="Systemios" goto :c
if "%EINGABE%"=="B" goto :a
if "%EINGABE%"=="B" goto :a
if "%EINGABE%"=="IOS 4" goto :4
if "%EINGABE%"=="IOS 9" goto :9
if "%EINGABE%"=="IOS 10" goto :10
if "%EINGABE%"=="IOS 11" goto :11
if "%EINGABE%"=="IOS 12" goto :12
if "%EINGABE%"=="IOS 13" goto :13
if "%EINGABE%"=="IOS 14" goto :14
if "%EINGABE%"=="IOS 15" goto :15
if "%EINGABE%"=="IOS 16" goto :16
if "%EINGABE%"=="IOS 17" goto :17
if "%EINGABE%"=="IOS 21" goto :21
if "%EINGABE%"=="IOS 22" goto :22
if "%EINGABE%"=="IOS 28" goto :28
if "%EINGABE%"=="IOS 31" goto :31
if "%EINGABE%"=="IOS 33" goto :33
if "%EINGABE%"=="IOS 34" goto :34
if "%EINGABE%"=="IOS 35" goto :35
if "%EINGABE%"=="IOS 36" goto :36
if "%EINGABE%"=="IOS 37" goto :37
if "%EINGABE%"=="IOS 38" goto :38
if "%EINGABE%"=="IOS 41" goto :41
if "%EINGABE%"=="IOS 43" goto :43
if "%EINGABE%"=="IOS 45" goto :45
if "%EINGABE%"=="IOS 46" goto :46
if "%EINGABE%"=="IOS 48" goto :48
if "%EINGABE%"=="IOS 50" goto :50
if "%EINGABE%"=="IOS 51" goto :51
if "%EINGABE%"=="IOS 52" goto :52
if "%EINGABE%"=="IOS 53" goto :53
if "%EINGABE%"=="IOS 55" goto :55
if "%EINGABE%"=="IOS 56" goto :56
if "%EINGABE%"=="IOS 57" goto :57
if "%EINGABE%"=="IOS 58" goto :58
if "%EINGABE%"=="IOS 60" goto :60
if "%EINGABE%"=="IOS 61" goto :61
if "%EINGABE%"=="IOS 70" goto :70
if "%EINGABE%"=="IOS 80" goto :80
if "%EINGABE%"=="IOS 222" goto :222
if "%EINGABE%"=="IOS 223" goto :223
if "%EINGABE%"=="IOS 249" goto :249
if "%EINGABE%"=="IOS 250" goto :250
if "%EINGABE%"=="IOS 254" goto :254

:Brick
CLS
@echo Du hast dir also einen Banner/Semibrick eingefangen?
@echo Oder dein Systemmen geht nicht mehr?
@echo Dann spiel es neu auf!
@echo Das dazu passende IOS wird gleich mitgeliefert!
echo.
sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] USE THIS AT YOUR OWN RISK!
echo.
sfk echo -spat \x20  THIS COMES WITH ABSOLUTELY NO WARRANTY, NEITHER STATED NOR IMPLIED.
sfk echo -spat \x20  NO ONE BUT YOURSELF IS TO BE HELD RESPONSIBLE FOR ANY DAMAGE THIS MAY CAUSE
sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 TO YOUR NINTENDO WII CONSOLE!
echo.
@ping 127.0.0.1 -n 5 -w 1000> nul
@echo Wenn du die Risiken verstanden hast, drcke eine beliebige Taste
pause > NUL
CLS
@echo Dann fangen wir mal an! Zuerst muss ich deine Firmware wissen!
@echo Momentan wird nur PAL unterstzt!
@echo Deine Firmware findest du unter den Wii-Systemeinstellungen
@echo Oder im Rescue Menu mit SaveMiiFrii
@echo In dieser Version wird nur 4.0 - 4.3 unterstzt!
set /p EINGABE=
if "%EINGABE%"=="4.0" goto :viernull
if "%EINGABE%"=="4.1" goto :viereins
if "%EINGABE%"=="4.2" goto :vierzwei
if "%EINGABE%"=="4.3" goto :vierdrei

:viernull
@echo Firmware 4.0E
@echo Wir brauchen also das Systemmen 4.0 und das IOS 60 v6174
@echo Lade das IOS 60 v6174...
nusd 000000010000003C 6174 packwad
@echo Fertig! Lade das Systemmen 4.0...
nusd 0000000100000002 418
@echo Fertig! Erstelle Ordner update...
mkdir %cd%\update
move %cd%\

:update
CLS
@echo Update/Downgrade auf 4.1 [EMPFOHLEN]
@echo Powered by UHG-Downloader
echo.
sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] USE THIS AT YOUR OWN RISK!
sfk echo -spat \x20  THIS PACKAGE COMES WITH ABSOLUTELY NO WARRANTY, NEITHER STATED NOR IMPLIED.
sfk echo -spat \x20  NO ONE BUT YOURSELF IS TO BE HELD RESPONSIBLE FOR ANY DAMAGE THIS MAY CAUSE
sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 TO YOUR NINTENDO WII CONSOLE!
echo.
@echo Beim Druck auf ENTER wird die Downloadseite des UHG-Downloaders ge”ffnet
@echo Downloade diesen, entpacke ihn und fhre ihn aus.
@echo Das entsprechende Tutorial wird mitge”ffnet!
echo.
@echo Drcke eine Taste!
pause > NUL
start http://forum.wii-homebrew.com/board4-wii-homebrew-area/tutorials/33671-ios-und-cios-update-mit-dem-uhg-downloader/
start http://www.wii-homebrew.com/download/nintendo-wii-downloads/pc-tools/uhg-downloader/
@echo Wenn du fertig bist drcke eine beliebige Taste!
pause > NUL
goto :a


:4
CLS
@echo IOS 4
@echo.
@echo HINWEIS: Dieses IOS ist ein Stub!
@echo Von diesem IOS gibt es nur eine Version:
@echo 65280
@echo Downloaden? 
@echo Ja = Weiter
@echo B = Zurck zur IOS Auswahl
@echo.
@echo Direkt beim Druck auf ENTER nach Eingabe von "Ja" wird der Download gestartet! Sei geduldig!
set /p EINGABE=
if "%EINGABE%"=="B" goto :d
if "%EINGABE%"=="Ja" nusd 0000000100000004 65280 packwad
if "%EINGABE%"=="Ja" @echo Download Succesful!
if "%EINGABE%"=="Ja" ping 192.168.123.25 -n 2 -w 20 > NUL
if "%EINGABE%"=="Ja" goto d:
if "%EINGABE%"=="" goto :4

