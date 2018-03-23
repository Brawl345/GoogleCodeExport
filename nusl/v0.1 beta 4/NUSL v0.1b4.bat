@echo off
setlocal
:top
set iosdataver=0.1beta2
set currentversion=0.1.beta4
set agreedversion=
set NUSLmin=/min 
set MKFversion=2011-11 v1
set MKFdownload=2011-11v1
mode con cols=85 lines=54
COLOR 1F
TITLE NUSL
::check for supporting apps that AVs are known to remove
:check
if not exist Support				mkdir Support
if not exist Support\wget.exe 			goto:wget
if not exist Support\7za.exe 			goto:7za
if not exist Support\nusd.exe 			goto:nusd
if not exist Support\settings.bat 		goto:settingsbat
if not exist Support\settings.exe 		goto:settingsexe
if not exist Support\sfk.exe 			goto:sfk
if not exist Support\wit.exe 			goto:wit
if not exist Support\wwt.exe 			goto:wwt
goto :titleNUSL
::------------------------------Downloade-Dateien-die-fehlen--------------------------------
:7za
CLS
echo 7za fehlt!
echo Downloade...
start %NUSLmin%/wait support\wget -t 3 "http://downloads.consolearea.square7.de/nusl/files/Support/7za.exe"
move 7za.exe Support
goto :check

:nusd
CLS
echo nusd fehlt!
echo Downloade...
start %NUSLmin%/wait support\wget -t 3 "http://downloads.consolearea.square7.de/nusl/files/Support/nusd.exe"
move nusd.exe Support
goto :check

:settingsbat
CLS
echo settings.bat fehlt!
echo Downloade...
start %NUSLmin%/wait support\wget -t 3 "http://downloads.consolearea.square7.de/nusl/files/Support/settings.bat"
move settings.bat Support
goto :check

:settingsexe
CLS
echo settings.exe fehlt!
echo Downloade...
start %NUSLmin%/wait support\wget -t 3 "http://downloads.consolearea.square7.de/nusl/files/Support/settings.exe"
move settings.exe Support
goto :check

:sfk
CLS
echo sfk fehlt!
echo Downloade...
start %NUSLmin%/wait support\wget -t 3 "http://downloads.consolearea.square7.de/nusl/files/Support/sfk.exe"
move sfk.exe Support
goto :check

:wget
CLS
echo wget fehlt!
echo Downloade...
@ping 127.0.0.1 -n 3 -w 1000> nul
CLS
echo - Uups, wget fehlt ja!
@ping 127.0.0.1 -n 2 -w 1000> nul
CLS
echo Lustig dieses arme Programm zu bestrafen?
@ping 127.0.0.1 -n 4 -w 1000> nul
CLS
echo Hilf mir!
echo.
echo Es ”ffnet sich gleich eine Seite! Downloade das Programm und kopiere wget hierrein:
echo %cd%
@ping 127.0.0.1 -n 5 -w 1000> nul
start http://downloads.consolearea.square7.de/nusl/files/Support/wget.exe
CLS
echo 	Ich warte derweil auf einen Tastendruck, wenn du dann die wget abgelegt hast
echo 	und zwar hier:
echo.
echo 	%cd%
pause >NUL
if not exist wget.exe goto :wget2
move wget.exe Support
goto :check

:wget2
echo Lustig dieses arme Programm zu bestrafen?
@ping 127.0.0.1 -n 4 -w 1000> nul
start http://downloads.consolearea.square7.de/nusl/files/Support/wget.exe
CLS
echo 	Ich warte derweil auf einen Tastendruck, wenn du dann die wget abgelegt hast
echo 	und zwar hier:
echo.
echo 	%cd%
pause >NUL
if not exist wget.exe goto :wget2
move wget.exe Support
goto :check


:wit
CLS
echo wit fehlt!
echo Downloade...
start %NUSLmin%/wait support\wget -t 3 "http://downloads.consolearea.square7.de/nusl/files/Support/wit.exe"
move wit.exe Support
goto :check

:wwt
CLS
echo wwt fehlt!
echo Downloade...
start %NUSLmin%/wait support\wget -t 3 "http://downloads.consolearea.square7.de/nusl/files/Support/wwt.exe"
move wwt.exe Support
goto :check

:titleNUSL
call support\Settings.bat
if not exist %windir%\Microsoft.NET\Framework\v3.5 goto:framework
if exist Support\scam.txt goto :a
set warning=
CLS
echo		   	                      NUSL                               %CURRENTVERSION%
echo                              by the WiiDatabase Team                             
echo.  
echo.
color 1F
::---------------------------------------------------------
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] THIS SOFTWARE MUST NOT BE SOLD
if /i "%AGREEDVERSION%" NEQ "%CURRENTVERSION%" @ping 127.0.0.1 -n 7 -w 1000> nul
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 		    NEITHER ALONE NOR AS PART OF A BUNDLE.
if /i "%AGREEDVERSION%" NEQ "%CURRENTVERSION%" @ping 127.0.0.1 -n 3 -w 1000> nul
echo.
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 		   IF YOU PAID FOR THIS SOFTWARE OR RECEIVED
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 		   IT AS PART OF A BUNDLE FOLLOWING PAYMENT,
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 		   	   YOU HAVE BEEN SCAMMED
if /i "%AGREEDVERSION%" NEQ "%CURRENTVERSION%" @ping 127.0.0.1 -n 7 -w 1000> nul
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 		 AND SHOULD DEMAND YOUR MONEY BACK IMMEDIATLEY
echo. 
if /i "%AGREEDVERSION%" NEQ "%CURRENTVERSION%" @ping 127.0.0.1 -n 2 -w 1000> nul
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Green] 			For furhter details see
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Cyan] 		      http://hbc.hackmii.com/scam
if /i "%AGREEDVERSION%" NEQ "%CURRENTVERSION%" @ping 127.0.0.1 -n 7 -w 1000> nul
echo.
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] USE THIS AT YOUR OWN RISK!
echo.
if /i "%AGREEDVERSION%" NEQ "%CURRENTVERSION%" @ping 127.0.0.1 -n 7 -w 1000> nul
Support\sfk echo -spat \x20  THIS PACKAGE COMES WITH ABSOLUTELY NO WARRANTY, NEITHER STATED NOR IMPLIED.
Support\sfk echo -spat \x20  NO ONE BUT YOURSELF IS TO BE HELD RESPONSIBLE FOR ANY DAMAGE THIS MAY CAUSE
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 TO YOUR NINTENDO WII CONSOLE!
if /i "%AGREEDVERSION%" NEQ "%CURRENTVERSION%" @ping 127.0.0.1 -n 7 -w 1000> nul
echo.
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] YOU CAN REDISTRIBUTE THIS SOFTWARE
if /i "%AGREEDVERSION%" NEQ "%CURRENTVERSION%" @ping 127.0.0.1 -n 2 -w 1000> nul
echo.
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Green] BUT IT'S COPYRIGHTED TO
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Cyan] http://wiidatabase.de.tl
if /i "%AGREEDVERSION%" NEQ "%CURRENTVERSION%" @ping 127.0.0.1 -n 7 -w 1000> nul
@echo.
echo Please type the word 'I' and then 'Agree' with a Space between those two words.

set /p warning=     Enter Selection Here: 


if /i "%warning%" EQU "I Agree" goto:save
echo.
echo                                Schlieáe NUSL...
@ping 127.0.0.1 -n 2 -w 1000> nul
Exit


:save
::Save version agreed to
if exist Support\settings.bat Support\sfk filter -quiet settings.bat -ls!"set AGREEDVERSION=" -write -yes
echo set AGREEDVERSION=%currentversion%>> Support\settings.bat



:a
TITLE NUSL
COLOR 1F
if not exist temp mkdir temp
set MENU=
echo.
CLS
echo v%CURRENTVERSION%
echo.
::if not exist Support\Beta.txt echo            AN = Anderes
echo.
echo            A = Apps
echo.
echo            N = NUS betreten
echo.
echo.
echo.
if exist %DRIVE% echo            ANZ = Verzeichnis anzeigen
echo.
echo            O = Optionen
echo.
if not exist Support\CREDITS.txt echo            CR = Credits
echo.
echo.
echo		   C = Changelog
echo.
echo            E = Exit
echo.
set /p MENU=     Eingabe: 


if /i "%MENU%" EQU "AN" goto:Hauptfunktionen
if /i "%MENU%" EQU "ANZ" goto:show
if /i "%MENU%" EQU "A" goto:Apps
if /i "%MENU%" EQU "N" goto:NUS
if /i "%MENU%" EQU "IOS" goto:IOSData
if /i "%MENU%" EQU "O" goto:options
if /i "%MENU%" EQU "CR" goto:Credits
if /i "%MENU%" EQU "C" goto:Changes
if /i "%MENU%" EQU "F" goto:framework
if /i "%MENU%" EQU "E" goto:exit

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:a


:Changes
CLS
echo Changelog wird gedownloadet...
start %NUSLmin%/wait support\wget -t 3 "http://downloads.consolearea.square7.de/nusl/files/Readmii.rtf"
if not exist temp mkdir temp
move /y Readmii.rtf temp
start temp\Readmii.rtf
echo.
echo.
echo.
@ping 127.0.0.1 -n 4 -w 1000> nul
goto:a

:Credits
CLS
set CREDIT1=
echo		   	                      NUSL                               %CURRENTVERSION%
echo                              by the WiiDatabase Team   
echo.
echo                                   CREDITS
echo                                 ===========
echo.
echo.
echo   NUSL wurde nur von mir geschrieben: iCON
echo   Aber ohne die Hilfe von anderen w„re NUSL jetzt nicht das was es jetzt ist!
echo   NUSL %CURRENTVERSION%
echo.
echo   Danke an ModMii, von diesem Programm habe ich wirklich viel gelernt.
echo   Damit geht auch dank an XFlak, der ModMii geschrieben hat!
support\sfk echo -spat \x20 [Green]ModMii Donations can be sent via paypal to: \x20 XFlak40@hotmail.com
echo.
support\sfk echo -spat \x20 [Red]Anyone who donates $1 or more to ModMii will get a functional ModMii Easter Egg!
echo.
support\sfk echo -spat \x20 [Green]$ = Open ModMii's donation webpage (paypal) and get your Easter Egg!
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.									Û²²²²²
set /p CREDIT1=		Drcke Enter um fortzufahren!


if /i "%CREDIT1%" EQU "$" start https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick^&hosted_button_id=DDHSQJPHDDXVW
if /i "%CREDIT1%" EQU "$" goto:Credit1

if /i "%CREDIT1%" EQU "B" goto:a
if /i "%CREDIT1%" EQU "M" goto:a

:Credit2
CLS
set CREDIT2=
echo		   	                      NUSL                               %CURRENTVERSION%
echo                              by the WiiDatabase Team   
echo.
echo                                   CREDITS
echo                                 ===========
echo.
echo   Ich m”chte danken:
echo.
support\sfk echo -spat \x20 [Red]Team Twiizers
echo   =============
echo   Danke an Team Twiizers, die den Hackmii Installer erfunden haben und nie aufgeben,
echo   falls Nintendo mal wieder ein Update rausbringt :D
echo.
support\sfk echo -spat \x20 [Red]Wii-Homebrew.com
echo   =============
echo   Eines der besten Foren der Welt! Hier habe ich wirklich viel ber Homebrew
echo   und anderes gelernt! Dort bin ich bekannt als 
support\sfk echo -spat \x20 [Yellow]Brawl345
echo.
support\sfk echo -spat \x20 [Red]Wiimm
echo   =============
echo   Danke an Wiimm, dass er WIT und WWT erfunden hat! Sehr ntzliche Tools!
echo.
echo.
echo.
echo.
echo.
echo.
echo.									ÛÛÛ²²²
set /p CREDIT2=		Drcke Enter um fortzufahren!

:Credit3
CLS
set CREDIT3=
echo		   	                      NUSL                               %CURRENTVERSION%
echo                              by the WiiDatabase Team   
echo.
echo                                   CREDITS
echo                                 ===========
echo.
support\sfk echo -spat \x20 [Red]Ein ganz spezielles Dank geht auch an dich!
echo   =============
echo   Danke, dass du NUSL %CURRENTVERSION% benutzt!
echo.
echo.
echo.
support\sfk echo -spat \x20 [Red]Aktuelle Einstellungen:
echo   =============
echo   NUSL %CURRENTVERSION%
echo   Kann Wiimms Mario Kart Fun %MKFversion% vorbereiten
echo   Wads und Apps werden gespeichert in:
echo   %DRIVE%
echo   Programme sind gespeichert in:
echo   %cd%\Support
if exist Support\Scam.txt echo   Die Scammeldung ist ausgeschaltet
if not exist Support\Scam.txt echo   Die Scammeldung ist angeschaltet
if exist Support\CREDITS.txt echo Die Credits sind abgeschaltet - Moment, wie hast du das gefunden?
if not exist Support\CREDITS.txt echo   Die Credits sind angeschalten - Ergibt auch Sinn!
echo.
echo.
support\sfk echo -spat \x20 [Red]Einstellungen „ndern
echo   =============
echo   D = Wads und Apps Speicherort „ndern
::if exist Support\Scam.txt echo   S- = Scammeldung wieder aktivieren
::if not exist Support\Scam.txt echo   S+ = Scammeldung abschalten
::if not exist Support\CREDITS.txt echo   C- = Credits anschalten
::if exist Support\CREDITS.txt echo   C+ = Credits ausschalten
echo   Z = Zurck zum Start
echo.
echo.									ÛÛÛÛÛÛ
set /p CREDIT3=		Eingabe: 


if /i "%CREDIT3%" EQU "D" goto:DRIVECHANGE
if /i "%CREDIT3%" EQU "S-" goto:Scamon
if /i "%CREDIT3%" EQU "S+" goto:Scamoff
if /i "%CREDIT3%" EQU "C+" goto:Creditsaus
if /i "%CREDIT3%" EQU "C-" goto:Creditsan
if /i "%CREDIT3%" EQU "Z" goto:a

echo Zurck zum Start...
@ping 127.0.0.1 -n 4 -w 1000> nul
goto:a

::-----------------------------------Optionen-----------------------------------------------

:options
CLS
set options=
echo Version %CURRENTVERSION%
echo.
::if not exist Support\scam.txt echo S+ = Scam Warnung nicht mehr anzeigen
::if exist Support\scam.txt echo S- = Scam Warnung wieder anzeigen
echo.
::if not exist Support\CREDITS.txt echo C+ = Credits Menpunkt ausschalten
::if exist Support\CREDITS.txt echo C- = Credits Menpunkt anschalten
echo.
::if not exist Support\Beta.txt echo H+ = Hauptfunktionen nicht anzeigen (nur Beta)
::if exist Support\Beta.txt echo H- = Hauptfunktionen wieder anzeigen (Vor einem Update machen)
echo.
echo D = Dateipfad aendern (Eingestellt auf %Drive%)
echo.
echo Z = Zurck
echo.
set /p options=     Eingabe: 


if /i "%options%" EQU "S+" goto:scamoff
if /i "%options%" EQU "S-" goto:Scamon
if /i "%options%" EQU "C+" goto:Creditsan
if /i "%options%" EQU "C-" goto:Creditsaus
if /i "%options%" EQU "H+" goto:hauptaus
if /i "%options%" EQU "H-" goto:hauptan
if /i "%options%" EQU "D" goto:DRIVECHANGE
if /i "%options%" EQU "Z" goto:a

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:options

:hauptaus
CLS
echo Dies schaltet die Hauptfunktionen aus! >> Support\Beta.txt
goto :options

:hauptan
CLS
del Support\Beta.txt
goto :options


:Creditsan
echo Dies blendet den CREDITS Menpunkt aus im NUSL, Version %CURRENTVERSION% >> Support\CREDITS.txt
goto :options


:Creditsaus
del Support\CREDITS.txt
goto :options

:DRIVECHANGE
set drivetemp=%DRIVE%
cls
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo.
echo.
echo         Wo sollen heruntergeladene Dateien gespeichert werden?
echo.
echo		Aktuelle Einstellung: %DRIVE%
echo.
echo.
echo.
echo         Beispiele:
echo.
echo.
echo            I:\NUSL
echo.
echo		%userprofile%\Desktop\COPY_TO_SD
echo.
echo.
echo.
echo.
echo.	S = Standardeinstellung (COPY_TO_SD_OR_USB)
echo.
echo         Z = Zurck
echo.
echo         M = Men
echo.
echo.
set /p Drivetemp=     Enter Selection Here: 

::remove quotes from variable (if applicable)
echo "set DRIVETEMP=%DRIVETEMP%">temp.txt
support\sfk filter -quiet temp.txt -rep _""""__>temp.bat
call temp.bat
del temp.bat>nul
del temp.txt>nul


if /i "%DRIVETEMP%" EQU "Z" goto:Options
if /i "%DRIVETEMP%" EQU "M" goto:a
if /i "%DRIVETEMP%" EQU "S" set DRIVETEMP=COPY_TO_SD_OR_USB

:doublecheck
set fixslash=
if /i "%DRIVETEMP:~-1%" EQU "\" set fixslash=yes
if /i "%DRIVETEMP:~-1%" EQU "/" set fixslash=yes
if /i "%fixslash%" EQU "yes" set DRIVETEMP=%DRIVETEMP:~0,-1%
if /i "%fixslash%" EQU "yes" goto:doublecheck


::if second char is ":" check if drive exists
if /i "%DRIVETEMP:~1,1%" NEQ ":" goto:skipcheck
if exist "%DRIVETEMP:~0,2%" (goto:skipcheck) else (echo.)
echo %DRIVETEMP:~0,2% doesn't exist, please try again...
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:DRIVECHANGE
:skipcheck


set DRIVE=%DRIVETEMP%
set REALDRIVE=%DRIVE%


::autosave drive setting to settings.bat
support\sfk filter Support\settings.bat -!"Set Drive=" -write -yes>nul
echo Set Drive=%DRIVE%>>Support\settings.bat

if /i "%MENU1%" EQU "FC" goto:FileCleanup
if /i "%MENU1%" EQU "U" set BACKB4QUEUE=DRIVECHANGE
if /i "%MENU1%" EQU "U" goto:DOWNLOADQUEUE


if /i "%MENU1%" NEQ "W" goto:skip
if /i "%USBCONFIG%" EQU "USB" (set BACKB4QUEUE=DRIVEUCHANGE) else (set BACKB4QUEUE=DRIVECHANGE)
if /i "%USBCONFIG%" EQU "USB" (goto:DRIVEUCHANGE) else (goto:download)
:skip


if /i "%SNEEKTYPE%" EQU "U" set BACKB4DRIVEU=DRIVECHANGE
if /i "%SNEEKTYPE%" EQU "UD" set BACKB4DRIVEU=DRIVECHANGE
if /i "%SNEEKTYPE%" EQU "U" goto:DRIVEUCHANGE
if /i "%SNEEKTYPE%" EQU "UD" goto:DRIVEUCHANGE
if /i "%SNEEKSELECT%" EQU "2" set B4SNKPAGE3=DRIVECHANGE
if /i "%SNEEKSELECT%" EQU "3" set B4SNKPAGE3=DRIVECHANGE
if /i "%SNEEKSELECT%" EQU "2" goto:snkpage3
if /i "%SNEEKSELECT%" EQU "3" goto:snkpage3
if /i "%SNEEKSELECT%" EQU "1" set B4SNKCONFIRM=DRIVECHANGE
if /i "%SNEEKSELECT%" EQU "1" goto:SNKNANDCONFIRM

if /i "%MENU1%" EQU "1" goto:%BACKB4DRIVE%
if /i "%MENU1%" EQU "2" goto:%BACKB4DRIVE%
if /i "%MENU1%" EQU "3" goto:%BACKB4DRIVE%
if /i "%MENU1%" EQU "4" goto:%BACKB4DRIVE%
if /i "%MENU1%" EQU "A" goto:%BACKB4DRIVE%

if /i "%CREDIT3%" EQU "D" goto:CREDIT3
goto:Options


::----------------------------OptionenEnde--------------------------------------------------

:framework
CLS
echo NUSL ben”tigt Microsoft .NET Framework 3.5!
echo.

set FrameworkAttempt=0
:NETFRAMEWORK

SET /a FrameworkAttempt=%FrameworkAttempt%+1

if exist "temp\dotNetFx35setup.exe" goto:semiskip
echo Downloading .NET Framework 3.5 Installer...
echo.

start %NUSLmin%/wait support\wget -t 3 "http://download.microsoft.com/download/7/0/3/703455ee-a747-4cc8-bd3e-98a615c3aedb/dotNetFx35setup.exe"

::start %NUSLmin%/wait support\wget -c -l1 -r -nd --retr-symlinks -t10 -T30 --random-wait "http://download.microsoft.com/download/7/0/3/703455ee-a747-4cc8-bd3e-98a615c3aedb/dotNetFx35setup.exe"

if not exist temp mkdir temp
if exist dotNetFx35setup.exe move /y dotNetFx35setup.exe temp\dotNetFx35setup.exe
:semiskip

echo Starte Installer und warte bis die Installation fertig ist...
echo.
start /wait temp\dotNetFx35setup.exe

if exist "%windir%\Microsoft.NET\Framework\v3.5" goto:top




:show
CLS
start %DRIVE%
goto :a

:NUS
CLS
set NUS=
echo Willkommen im Nintendo Update Server!
echo.
echo.
echo   S = System
echo.
echo   I = IOS [Bald verfgbar!]
echo.
echo   Z = Zurck
echo.
set /P NUS=     Eingabe: 

if /i "%NUS%" EQU "S" goto:System
if /i "%NUS%" EQU "I" goto:IO
if /i "%NUS%" EQU "Z" goto:a


echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:NUS

:IO
echo Warte auf die n„chste Version!
@ping 127.0.0.1 -n 4 -w 1000> nul
goto:NUS

:System
CLS
set Kanal=
echo   BC = 	BC
echo.
echo   B = 	Boot2
echo.
echo   E = 	EULA
echo.
echo   Mii = Mii-Kanal
echo.
echo   M = 	MIOS
echo.
echo   N = 	Newskanal
echo.
echo   O = 	Opera Internet Kanal
echo.
echo   F = 	Fotokanal
echo.
echo   F1.1 = Fotokanal 1.1
echo.
echo   S =	Wii-Shop Kanal (mit IOS 56)
echo.
echo   Sy =	Systemmen (mit dem SystemIOS)
echo.
echo   W = 	WetterKanal
echo.
echo.
echo				Z = Zurck
echo.
echo.
set /p Kanal=     Eingabe: 


if /i "%Kanal%" EQU "O" goto:Opera
if /i "%Kanal%" EQU "BC" goto:BC
if /i "%Kanal%" EQU "B" goto:Boot2
if /i "%Kanal%" EQU "E" goto:EULA
if /i "%Kanal%" EQU "F" goto:Fotokanal
if /i "%Kanal%" EQU "F1.1" goto:Fotokanal11
if /i "%Kanal%" EQU "N" goto:Newskanal
if /i "%Kanal%" EQU "M" goto:MIOS
if /i "%Kanal%" EQU "W" goto:Wetterkanal
if /i "%Kanal%" EQU "Mii" goto:Mii
if /i "%Kanal%" EQU "Sy" goto:Sy
if /i "%Kanal%" EQU "S" goto:Shop
if /i "%Kanal%" EQU "Z" goto:a

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:Kanale

:Newskanal
CLS
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] Newskanal
echo.
echo.
start %NUSLmin%/wait Support\nusd 0001000248414750 7 packwad
if exist Support\0001000248414750\0001000248414750.wad Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [GREEN] Download abgeschlossen!
if not exist %DRIVE%\wad mkdir %DRIVE%\wad
RENAME Support\0001000248414750\0001000248414750.wad Newskanalv7.wad
Move Support\0001000248414750\Newskanalv7.wad %DRIVE%\wad
rmdir /s /q Support\0001000248414750
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Green]Download abgeschlossen. Drcke eine Taste
pause >NUL
goto:System


:MIOS
CLS
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] MIOS
echo.
echo.
start %NUSLmin%/wait Support\nusd 0000000100000101 10 packwad
if exist Support\0000000100000101\0000000100000101.wad Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [GREEN] Download abgeschlossen!
if not exist %DRIVE%\wad mkdir %DRIVE%\wad
RENAME Support\0000000100000101\0000000100000101.wad MIOSv10.wad
Move Support\0000000100000101\MIOSv10.wad %DRIVE%\wad
rmdir /s /q Support\0000000100000101
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Green]Download abgeschlossen. Drcke eine Taste
pause >NUL
goto:System



:Mii
CLS
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] Mii-Kanal
echo.
echo.
start %NUSLmin%/wait Support\nusd 0001000248414341 6 packwad
if exist Support\0001000248414341\0001000248414341.wad Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [GREEN] Download abgeschlossen!
if not exist %DRIVE%\wad mkdir %DRIVE%\wad
RENAME Support\0001000248414341\0001000248414341.wad Mii-Kanalv6.wad
Move Support\0001000248414341\Mii-Kanalv6.wad %DRIVE%\wad
rmdir /s /q Support\0001000248414341
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Green]Download abgeschlossen. Drcke eine Taste
pause >NUL
goto:System


:S
CLS
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] Wii-Shop Kanal
echo.
echo.
start %NUSLmin%/wait Support\nusd 0001000248414241 20 packwad
if exist Support\00001000248414241\0001000248414241.wad Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [GREEN] Download abgeschlossen!
if not exist %DRIVE%\wad mkdir %DRIVE%\wad
RENAME Support\0001000248414241\0001000248414241.wad Shopv20.wad
Move Support\0001000248414241\Shopv20.wad %DRIVE%\wad
rmdir /s /q Support\0001000248414241
echo.
echo.
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] IOS 56
echo.
echo.
nusd 0000000100000038 5662 packwad
if exist Support\0000000100000038\0000000100000038.wad Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [GREEN] Download abgeschlossen!
RENAME Support\0000000100000038\0000000100000038.wad IOS56v5662.wad
Move Support\0000000100000038\IOS56v5662.wad
rmdir /s /q Support\0000000100000038
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Green]Downloads abgeschlossen. Drcke eine Taste
pause >NUL
goto:System


:Sy
CLS
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] Systemmen
echo.
echo.
set Sysmenu=
echo W„hle dein Systemmen! [Das Passende IOS wird mitgedownloadet!]
echo.
echo 4.0 = 4.0E
echo.
echo 4.1 = 4.1E
echo.
echo 4.2 = 4.2E
echo.
echo 4.3 = 4.3E v1
echo.
echo.
echo P = In eine Datei schreiben
echo.
echo Z = Zurck
echo.
echo.
set /p Sysmenu=     Eingabe: 


if /i "%Sysmenu%" EQU "4.0" goto:40
if /i "%Sysmenu%" EQU "4.1" goto:41
if /i "%Sysmenu%" EQU "4.2" goto:42
if /i "%Sysmenu%" EQU "4.3" goto:43
if /i "%Sysmenu%" EQU "P" goto:Printsys
if /i "%Sysmenu%" EQU "Z" goto:System

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:Sy

:Printsys
CLS
if not exist temp mkdir temp
if exist System.rtf del System.rtf
if exist temp\System.rtf del temp\System.rtf
echo Schreibe...
echo NUSL - Nintendo Update Server Loader >> System.rtf
echo. >> System.rtf
echo Wii Firmwares und deren IOS >> System.rtf
echo Erstellt von NUSL %CURRENTVERSION% >> System.rtf
echo. >> System.rtf
echo 4.0		IOS 60 rev 6174 >> System.rtf
echo. >> System.rtf
echo 4.1		IOS 60 rev 6174 >> System.rtf
echo. >> System.rtf
echo 4.2		IOS 70 rev 6687 >> System.rtf
echo. >> System.rtf
echo 4.3v1		IOS 80 rev 6943 >> System.rtf
echo. >> System.rtf
echo 4.3v2		IOS 80 rev 6944  [Wird nicht von NUSL unterstützt!] >> System.rtf
echo. >> System.rtf
echo Diese Liste findest du im TEMP Ordner des NUSLs! >> System.rtf
echo Erfolgreich!
move System.rtf temp\System.rtf
start temp\System.rtf
goto:Sy

:40
CLS
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] Wii Firmware 4.0E
echo.
echo.
echo Downloade Systemmen...
start %NUSLmin%/wait support\nusd 0000000100000002 418 packwad
if exist Support\0000000100000002\0000000100000002.wad echo Download erfolgreich!
Rename Support\0000000100000002\0000000100000002.wad System_4.0.wad
if not exist %DRIVE% mkdir %DRIVE%
if not exist %DRIVE%\wad mkdir %DRIVE%\wad
move Support\0000000100000002\System_4.0.wad %DRIVE%\wad
rmdir /s /q Support\0000000100000002
echo.
echo Downloade IOS 60 rev 6174
start %NUSLmin%/wait support\nusd 000000010000003C 6174 packwad
if exist Support\000000010000003C\000000010000003C.wad echo Download abgeschlossen!
rename Support\000000010000003C\000000010000003C.wad IOS60_sys_4.0_und_4.1.wad
move Support\000000010000003C\IOS60_sys_4.0_und_4.1.wad %DRIVE%\wad
rmdir /s /q Support\000000010000003C
goto :Sy

:41
CLS
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] Wii Firmware 4.1E
echo.
echo.
echo Downloade Systemmen...
start %NUSLmin%/wait support\nusd 0000000100000002 450 packwad
if exist Support\0000000100000002\0000000100000002.wad echo Download erfolgreich!
Rename Support\0000000100000002\0000000100000002.wad System_4.1.wad
if not exist %DRIVE% mkdir %DRIVE%
if not exist %DRIVE%\wad mkdir %DRIVE%\wad
move Support\0000000100000002\System_4.1.wad %DRIVE%\wad
rmdir /s /q Support\0000000100000002
echo.
echo Downloade IOS 60 rev 6174
start %NUSLmin%/wait support\nusd 000000010000003C 6174 packwad
if exist Support\000000010000003C\000000010000003C.wad echo Download abgeschlossen!
rename Support\000000010000003C\000000010000003C.wad IOS60_sys_4.0_und_4.1.wad
move Support\000000010000003C\IOS60_sys_4.0_und_4.1.wad %DRIVE%\wad
rmdir /s /q Support\000000010000003C
goto :Sy

:42
CLS
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] Wii Firmware 4.2E
echo.
echo.
echo Downloade Systemmen...
start %NUSLmin%/wait support\nusd 0000000100000002 482 packwad
if exist Support\0000000100000002\0000000100000002.wad echo Download erfolgreich!
Rename Support\0000000100000002\0000000100000002.wad System_4.2.wad
if not exist %DRIVE% mkdir %DRIVE%
if not exist %DRIVE%\wad mkdir %DRIVE%\wad
move Support\0000000100000002\System_4.2.wad %DRIVE%\wad
rmdir /s /q Support\0000000100000002
echo.
echo Downloade IOS 70 rev 6687
start %NUSLmin%/wait support\nusd 0000000100000046 6687 packwad
if exist Support\0000000100000046\0000000100000046.wad echo Download abgeschlossen!
rename Support\0000000100000046\0000000100000046.wad IOS70_sys_4.2.wad
move Support\0000000100000046\IOS70_sys_4.2.wad %DRIVE%\wad
rmdir /s /q Support\0000000100000046
goto :Sy

:43
CLS
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] Wii Firmware 4.3E
echo.
echo.
echo Downloade Systemmen...
start %NUSLmin%/wait support\nusd 0000000100000002 514 packwad
if exist Support\0000000100000002\0000000100000002.wad echo Download erfolgreich!
Rename Support\0000000100000002\0000000100000002.wad System_4.3.wad
if not exist %DRIVE% mkdir %DRIVE%
if not exist %DRIVE%\wad mkdir %DRIVE%\wad
move Support\0000000100000002\System_4.3.wad %DRIVE%\wad
rmdir /s /q Support\0000000100000002
echo.
echo Downloade IOS 80 rev 6943
start %NUSLmin%/wait support\nusd 0000000100000050 6943 packwad
if exist Support\0000000100000050\0000000100000050.wad echo Download abgeschlossen!
rename Support\0000000100000050\0000000100000050.wad IOS80_sys_4.3.wad
move Support\0000000100000050\IOS80_sys_4.3.wad %DRIVE%\wad
rmdir /s /q Support\0000000100000050
goto :Sy

:Boot2
CLS
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] Boot2
echo.
echo.
echo Boot2 is a critical part of the Wii boot sequence.
@ping 127.0.0.1 -n 3 -w 1000> nul
echo The only safe way to mess with boot2 is to install BootMii if possible.
@ping 127.0.0.1 -n 3 -w 1000> nul
echo.
echo.
start %NUSLmin%/wait Support\nusd 0000000100000001 4 packwad
if exist Support\0000000100000001\0000000100000001.wad Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [GREEN] Download abgeschlossen!
if not exist %DRIVE%\wad mkdir %DRIVE%\wad
RENAME Support\0000000100000001\0000000100000001.wad Boot2v4.wad
Move Support\0000000100000001\Boot2v4.wad %DRIVE%\wad
rmdir /s /q Support\0000000100000001
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Green]Download abgeschlossen. Drcke eine Taste
pause >NUL
goto:System

:EULA
CLS
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] EULA
echo.
echo.
echo This is the 'channel' for EULA acceptance.
@ping 127.0.0.1 -n 3 -w 1000> nul
echo It is wise not to mess with it!
@ping 127.0.0.1 -n 3 -w 1000> nul
echo.
echo.
start %NUSLmin%/wait Support\nusd 0001000848414B50 3 packwad
if exist Support\0001000848414B50\0001000848414B50.wad Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [GREEN] Download abgeschlossen!
if not exist %DRIVE%\wad mkdir %DRIVE%\wad
RENAME Support\0001000848414B50\0001000848414B50.wad EULAv3.wad
Move Support\0001000848414B50\EULAv3.wad %DRIVE%\wad
rmdir /s /q Support\0001000848414B50
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Green]Download abgeschlossen. Drcke eine Taste
pause >NUL
goto:System

:Fotokanal
CLS
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] Fotokanal
echo.
echo.
start %NUSLmin%/wait Support\nusd 0001000248414141 2 packwad
if exist Support\0001000248414141\0001000248414141.wad Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [GREEN] Download abgeschlossen!
if not exist %DRIVE%\wad mkdir %DRIVE%\wad
RENAME Support\0001000248414141\0001000248414141.wad Fotokanalv2.wad
Move Support\0001000248414141\Fotokanalv2.wad %DRIVE%\wad
rmdir /s /q Support\0001000248414141
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Green]Download abgeschlossen. Drcke eine Taste
pause >NUL
goto:System

:Fotokanal11
CLS
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] Fotokanal 1.1
echo.
echo.
start %NUSLmin%/wait Support\nusd 0001000248415941 3 packwad
if exist Support\0001000248415941\0001000248415941.wad Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [GREEN] Download abgeschlossen!
if not exist %DRIVE%\wad mkdir %DRIVE%\wad
RENAME Support\0001000248415941\0001000248415941.wad Fotokanal1.1v3.wad
Move Support\0001000248415941\Fotokanal1.1v3.wad %DRIVE%\wad
rmdir /s /q Support\0001000248415941
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Green]Download abgeschlossen. Drcke eine Taste
pause >NUL
goto:System

:Opera
CLS
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] Opera Internet Kanal
echo.
echo.
start %NUSLmin%/wait Support\nusd 0001000148414450 1024 packwad
if exist Support\0001000148414450\0001000148414450.wad Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [GREEN] Download abgeschlossen!
if not exist %DRIVE%\wad mkdir %DRIVE%\wad
RENAME Support\0001000148414450\0001000148414450.wad Opera_Kanal.wad
Move Support\0001000148414450\Opera_Kanal.wad %DRIVE%\wad
rmdir /s /q Support\0001000148414450
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Green]Download abgeschlossen. Drcke eine Taste
pause >NUL
goto :System

:Wetterkanal
CLS
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] Wetterkanal
echo.
echo.
start %NUSLmin%/wait Support\nusd 0001000248414650 7 packwad
Rename Support\0001000248414650\0001000248414650.wad Wetterkanalv7.wad
if not exist %DRIVE%\wad mkdir %DRIVE%\wad
move 0001000248414650\Wetterkanalv7.wad %DRIVE%\wad
rmdir /s /q 0001000248414650
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Green]Download abgeschlossen. Drcke eine Taste
pause >NUL
goto :System


:BC
CLS
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] BC
echo.
echo.
start %NUSLmin%/wait Support\nusd 0000000100000100 6 packwad
echo Download succesful
if exist Support\0000000100000100\0000000100000100.wad Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [GREEN] Download abgeschlossen!
Rename Support\0000000100000100\0000000100000100.wad BCv6.wad
if not exist %DRIVE%\wad mkdir %DRIVE%\wad
move Support\0000000100000100\BCv6.wad %DRIVE%\wad
rmdir /s /q Support\0000000100000100
echo Download abgeschlossen. Drcke eine Taste
pause >NUL
goto :System

:Apps
CLS
set Apps=
echo Y = Yet Another Wad Manager
echo.
echo H = Hackmii Installer
echo.
echo.
echo Z = Zurck
echo.
set /p Apps=		Eingabe: 


if /i "%Apps%" EQU "Z" goto:a
if /i "%Apps%" EQU "Y" goto:YAWMM
if /i "%Apps%" EQU "H" goto:HMI

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:Apps


:HMI
CLS
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] Hackmii Installer
echo Lade boot.elf...
start %NUSLmin%/wait support\wget -t 3 "http://thebatch.bplaced.net/NUSDL/HMI/boot.elf"
echo Lade icon.png...
start %NUSLmin%/wait support\wget -t 3 "http://thebatch.bplaced.net/NUSDL/HMI/icon.png"
echo Lade meta.xml...
start %NUSLmin%/wait support\wget -t 3 "http://thebatch.bplaced.net/NUSDL/HMI/meta.xml"
if exist boot.elf echo boot.elf existiert!
if exist icon.png echo icon.png existiert!
if exist meta.xml echo meta.xml existiert!
if not exist boot.elf echo FEHLER! Drcke eine Taste fr Neustart...
if not exist boot.elf pause >NUL
if not exist boot.elf goto :HMI
mkdir %DRIVE%\Hackmii
move /Y boot.elf %DRIVE%\Hackmii
move /Y icon.png %DRIVE%\Hackmii
move /Y meta.xml %DRIVE%\Hackmii
if not exist %DRIVE%\apps mkdir %DRIVE%\apps
move /Y %DRIVE%\Hackmii %DRIVE%\apps
echo Fertig!
echo Drcke eine Taste!
pause >NUL
goto :Apps

:YAWMM
CLS
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red]
echo Yet another Wad Manager Deutsche Version
echo Downloading boot.dol...
start %NUSLmin%/wait support\wget -t 3 "http://thebatch.bplaced.net/NUSDL/YAWMM/boot.dol"
echo Downloading icon.png...
start %NUSLmin%/wait support\wget -t 3 "http://thebatch.bplaced.net/NUSDL/YAWMM/icon.png"
echo Downloading meta.xml...
start %NUSLmin%/wait support\wget -t 3 "http://thebatch.bplaced.net/NUSDL/YAWMM/meta.xml"
mkdir %DRIVE%\YAWMM
move /Y boot.dol %DRIVE%\YAWMM
move /Y icon.png %DRIVE%\YAWMM
move /Y meta.xml %DRIVE%\YAWMM
if not exist %DRIVE%\apps mkdir %DRIVE%\apps
move /Y %DRIVE%\YAWMM %DRIVE%\apps
echo Download successful
pause
goto :Apps

:Hauptfunktionen
CLS
set Key=
echo   Wie ist der Schlssel?
echo.
echo.
echo.
set /p Key=	Eingabe:		


if /i "%Key%" EQU "Sonne345" goto:Hauptfunktionenbeta

echo Der Schlssel ist falsch!
@ping 127.0.0.1 -n 5 -w 1000> nul
goto:wtfkey


:wtfkey
CLS
echo Was ist denn dieser "Schlssel"?
echo.
echo   Mit dem Schlssel kannst du die Hauptfunktionen besuchen.
echo   Der Bereich ist immoment noch Beta, aber dich erwarten tolle Funktionen!
echo   Den Bereich kannst du in den Optionen verstecken!
echo.
@ping 127.0.0.1 -n 5 -w 1000> nul
echo   Drcke aber jetzt erstmal eine Taste
pause >NUL
goto:a


:Hauptfunktionenbeta
set Hauptfunktionen=
CLS
echo MKF = Mario Kart Fun installieren
echo.
echo.
echo Z = Zurck
echo.
set /p Hauptfunktionen=		Eingabe: 


if /i "%Hauptfunktionen%" EQU "MKF" goto:Mariofun
if /i "%Hauptfunktionen%" EQU "Z" goto:a

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:Hauptfunktionen


:IOSData
CLS
TITLE IOS Database
echo Willkommen in der IOS Database %iosdataver%
echo   Dies ist nur fortgeschritten Usern empfohlen!
echo.
echo.
echo Auf der Firmware auf der du bist, darfst du das entsprechende IOS AUF KEINESFALLS updaten!
echo
echo Sonst bekommst du einen Systemmen Brick!
echo Ohne Priiloader/Bootmii in boot2 stehst du dann dumm da
echo Dafr gibt es die Systemios Liste!
echo.
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] USE THIS AT YOUR OWN RISK!
echo.
Support\sfk echo -spat \x20  THIS PACKAGE COMES WITH ABSOLUTELY NO WARRANTY, NEITHER STATED NOR IMPLIED.
Support\sfk echo -spat \x20  NO ONE BUT YOURSELF IS TO BE HELD RESPONSIBLE FOR ANY DAMAGE THIS MAY CAUSE
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 TO YOUR NINTENDO WII CONSOLE!
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

:Mariofun
CLS
set MKFbereit=
echo Dies wird dir Wiimms Mario Kart Fun %MKFversion% einrichten!
echo Bereit?
echo.
echo	J = Ja
echo	N = Nein
echo.
set /p MKFbereit=     Eingabe: 


if /i "%MKFbereit%" EQU "J" goto:Mariofundownload
if /i "%MKFbereit%" EQU "N" goto:Hauptfunktionen



echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:Mariofun


:Mariofundownload
CLS
if exist temp\MarioKartFun%MKFdownload% goto:Mariofun2
if exist temp\MarioKartFun%MKFdownload%.zip goto:Mariofundownloadex
if exist MarioKartFun%MKFdownload%.zip goto:Mariofundownloadex
echo Downloade die letzte Version von Mario Kart Fun...
echo Version %MKFversion%
echo.
echo Dies kann einige Minuten dauern... Bitte habe Geduld!
start %NUSLmin%/wait support\wget -t 3 "http://downloads.consolearea.square7.de/nusl/files/MarioKartFun%MKFdownload%.zip
if exist MarioKartFun%MKFdownload%.zip goto:Mariofundownloadex
:errormkf
echo Ein Fehler ist aufgetreten! Neustart...
@ping 127.0.0.1 -n 4 -w 1000> nul
CLS
echo Downloade die letzte Version von Mario Kart Fun...
echo Version %MKFversion%
start %NUSLmin%/wait support\wget -t 3 "http://downloads.consolearea.square7.de/nusl/files/MarioKartFun%MKFdownload%.zip
if exist MarioKartFun%MKFdownload%.zip goto:Mariofundownload2
echo 2. Fehler aufgetreten! Versuche es sp„ter erneut und prfe deine Internet Verbindung!
goto :Hauptfunktionen

:Mariofundownloadex
if not exist temp mkdir temp
if exist MarioKartFun%MKFdownload%.zip move /y MarioKartFun%MKFdownload%.zip temp
Support\7za e -aoa temp\MarioKartFun%MKFdownload%.zip -otemp\MarioKartFun%MKFdownload% *.* -r
if not exist temp\MarioKartFun%MKFdownload% goto:errormkf
:Mariofundownload2
CLS
echo.
echo		Erfolgreich!
echo.
@ping 127.0.0.1 -n 5 -w 1000> nul
goto :Mariofun2



:Mariofun2
CLS
set MKFformat=
echo Welches Format hat deine Festplatte, auf der Mario Kart Wii gespeichert ist?
echo.
echo	FAT32
echo	NTFS
echo	WBFS
echo.
set /p MKFformat=	Eingabe: 
if /i "%MKFformat%" EQU "FAT32" goto:FATandNTFS
if /i "%MKFformat%" EQU "NTFS" goto:FATandNTFS
if /i "%MKFformat%" EQU "WBFS" goto:WBFS

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:Mariofun2

:FATandNTFS
CLS
if exist temp\MarioKartFun%MKFdownload%\RMCP01.wbfs goto:buildmkffat
start temp\MarioKartFun%MKFdownload%
echo Ziehe die RMCP01.wbfs in das Explorer Fenster!
echo.
echo Drcke eine Taste, wenn du fertig bist!
pause >NUL
goto:buildmkffat

:buildmkffat
CLS
echo Der Builder wird jetzt gestartet!
echo.
echo.
echo Bitte warte auf den Mario Kart Fun %MKFversion% Builder, bis er fertig ist mit seinem Job...
echo.
echo Du musst als Format .wbfs nehmen!
echo.
cd temp\MarioKartFun%MKFdownload%\
start Windows-GUI.exe
@ping 127.0.0.1 -n 5 -w 1000> nul
/waít create-image.bat
CLS
echo Fertig! Kopiere das neue Image auf deine Festplatte in den WBFS Ordner!
echo Und drcke eine Taste!
pause >NUL
goto :Hauptfunktionen

:WBFS
CLS
echo Bitte warte auf Wiimms WBFS Tools, bis sie fertig sind mit ihrem Job...
Support\wwt X --auto --iso RMCP01 -d temp\MarioKartFun%MKFdownload%\MarioKartFun.iso
if exist temp\MarioKartFun%MKFdownload%\RMCP01.iso goto:WBFS2
echo Error! Restarting...
@ping 127.0.0.1 -n 5 -w 1000> nul
CLS
echo Bitte warte auf Wiimms WBFS Tools, bis sie fertig sind mit ihrem Job...
Support\wwt X --auto --iso RMCP01 -d temp\MarioKartFun%MKFdownload%\
if exist temp\MarioKartFun%MKFdownload%\RMCP01.iso goto:WBFS2
echo Error 2! Abbrechen...
@ping 127.0.0.1 -n 5 -w 1000> nul
goto :Hauptfunktionen

:WBFS2
CLS
start temp\MarioKartFun%MKFdownload%
echo Ziehe die RMCP01.wbfs in das Explorer Fenster!
echo.
echo Drcke eine Taste, wenn du fertig bist!
pause >NUL
goto:buildmkfwb

:buildmkfwb
CLS
echo Der Builder wird jetzt gestartet!
echo.
echo.
echo.
echo Bitte warte auf den Mario Kart Fun %MKFversion% Builder, bis er fertig ist mit seinem Job...
echo.
echo Du musst als Format .iso nehmen!
echo.
start /wait temp\MarioKartFun%MKFdownload%\Windows-GUI.exe
:Transfer
set Transfer=
CLS
echo Soll das Spiel gleich auf die Festplatte bertragen werden?
echo.
echo	J = Ja
echo	N = Nein
echo.
set /p Transfer=	Eingabe:


if /i "%Transfer%" EQU "J" goto:Transfer
if /i "%Transfer%" EQU "N" goto:Transfernot

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:Transfer


:Transfer
Support\wwt add --auto temp\MarioKartFun%MKFdownload%\new-image


:Transfernot
start temp\MarioKartFun%MKFdownload%\new-image
CLS
echo Fertig! Kopiere das neue Image auf deine Festplatte!
echo Und drcke eine Taste!
pause >NUL
goto :Hauptfunktionen


:no_mario
echo Keine Mario Kart Wii WBFS gefunden! Existiert der Ordner "WBFS"?
echo.
echo Drcke eine Taste
pause >NUL
goto :FATandNTFS


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
if "%EINGABE%"=="Ja" Support\nusd 0000000100000004 65280 packwad
if "%EINGABE%"=="Ja" @echo Download Succesful!
if "%EINGABE%"=="Ja" ping 192.168.123.25 -n 2 -w 20 > NUL
if "%EINGABE%"=="Ja" goto d:
if "%EINGABE%"=="" goto :4

:Scamoff
CLS
echo		   	                      NUSL                            %CURRENTVERSION%
echo                              by the WiiDatabase Team                             
echo.  
echo.
color 1F
::---------------------------------------------------------
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] THIS SOFTWARE MUST NOT BE SOLD
@ping 127.0.0.1 -n 7 -w 1000> nul
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 		    NEITHER ALONE NOR AS PART OF A BUNDLE.
@ping 127.0.0.1 -n 3 -w 1000> nul
echo.
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 		   IF YOU PAID FOR THIS SOFTWARE OR RECEIVED
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 		   IT AS PART OF A BUNDLE FOLLOWING PAYMENT,
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 		   	   YOU HAVE BEEN SCAMMED
@ping 127.0.0.1 -n 7 -w 1000> nul
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 		 AND SHOULD DEMAND YOUR MONEY BACK IMMEDIATLEY
echo. 
@ping 127.0.0.1 -n 2 -w 1000> nul
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Green] 			For furhter details see
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Cyan] 		      http://hbc.hackmii.com/scam
@ping 127.0.0.1 -n 7 -w 1000> nul
echo.
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] USE THIS AT YOUR OWN RISK!
echo.
@ping 127.0.0.1 -n 7 -w 1000> nul
Support\sfk echo -spat \x20  THIS PACKAGE COMES WITH ABSOLUTELY NO WARRANTY, NEITHER STATED NOR IMPLIED.
Support\sfk echo -spat \x20  NO ONE BUT YOURSELF IS TO BE HELD RESPONSIBLE FOR ANY DAMAGE THIS MAY CAUSE
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 TO YOUR NINTENDO WII CONSOLE!
@ping 127.0.0.1 -n 7 -w 1000> nul
echo.
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] YOU CAN REDISTRIBUTE THIS SOFTWARE
@ping 127.0.0.1 -n 2 -w 1000> nul
echo.
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Green] BUT IT'S COPYRIGHTED TO
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Cyan] http://wiidatabase.de.tl
@ping 127.0.0.1 -n 7 -w 1000> nul
@echo.
echo Please type the word 'I', followed by the word 'Accept' then followed by theese words: 'to','switch','off','the', 'scam' and then 'message'
echo.
@ping 127.0.0.1 -n 5 -w 1000> nul


set /p warning=     Enter Selection Here: 


if /i "%warning%" EQU "I Accept to switch off the scam message" goto:scamoffpl
echo.
echo                                Falsch!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto :options

:scamoffpl
start %NUSLmin%/wait support\wget -t 3 "http://downloads.consolearea.square7.de/nusl/files/scam.txt"
move scam.txt Support
goto :options

:Scamon
CLS
echo		   	                      NUSL                            %CURRENTVERSION%
echo                              by the WiiDatabase Team                             
echo.  
echo.
color 1F
::---------------------------------------------------------
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] THIS SOFTWARE MUST NOT BE SOLD
@ping 127.0.0.1 -n 2 -w 1000> nul
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 		    NEITHER ALONE NOR AS PART OF A BUNDLE.
@ping 127.0.0.1 -n 2 -w 1000> nul
echo.
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 		   IF YOU PAID FOR THIS SOFTWARE OR RECEIVED
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 		   IT AS PART OF A BUNDLE FOLLOWING PAYMENT,
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 		   	   YOU HAVE BEEN SCAMMED
@ping 127.0.0.1 -n 2 -w 1000> nul
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 		 AND SHOULD DEMAND YOUR MONEY BACK IMMEDIATLEY
echo. 
@ping 127.0.0.1 -n 2 -w 1000> nul
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Green] 			For furhter details see
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Cyan] 		      http://hbc.hackmii.com/scam
@ping 127.0.0.1 -n 2 -w 1000> nul
echo.
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] USE THIS AT YOUR OWN RISK!
echo.
@ping 127.0.0.1 -n 2 -w 1000> nul
Support\sfk echo -spat \x20  THIS PACKAGE COMES WITH ABSOLUTELY NO WARRANTY, NEITHER STATED NOR IMPLIED.
Support\sfk echo -spat \x20  NO ONE BUT YOURSELF IS TO BE HELD RESPONSIBLE FOR ANY DAMAGE THIS MAY CAUSE
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 TO YOUR NINTENDO WII CONSOLE!
@ping 127.0.0.1 -n 2 -w 1000> nul
echo.
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] YOU CAN REDISTRIBUTE THIS SOFTWARE
@ping 127.0.0.1 -n 2 -w 1000> nul
echo.
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Green] BUT IT'S COPYRIGHTED TO
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Cyan] http://wiidatabase.de.tl
@ping 127.0.0.1 -n 2 -w 1000> nul
@echo.
echo.
@ping 127.0.0.1 -n 2 -w 1000> nul
del Support\Scam.txt
goto :options