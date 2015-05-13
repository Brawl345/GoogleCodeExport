@echo off
:NUSL
if exist Autoupdate.bat del Autoupdate.bat>nul
if exist Autoupdate.txt del Autoupdate.txt>nul
if /i "%AUTOUPDATE%" EQU "" set AUTOUPDATE=OFF


::----------------------------TO DO--------------------------------------------------------
:: - Das war NUSL! VIELEN DANK!










setlocal
:top
set currentversion=0.2
set currentversioncopy=%currentversion%
set agreedversion=
set NUSLmin=/min
set NUSLpath=%cd%
mode con cols=85 lines=54
COLOR 1F
if exist temp\settings.txt goto:piracydetected
if /i "%COLOR%" EQU "on" COLOR F0
if exist temp\color.txt COLOR F0
TITLE NUSL
::check for supporting apps that AVs are known to remove
:check
CLS
if not exist Support\wget.exe  (echo Wget fehlt! Beende NUSL...) & (@ping 127.0.0.1 -n 5 -w 1000> nul) & (exit)
if not exist Support\7za.exe  (echo Eine oder mehrere von NUSLs Support Dateien fehlen! Redownloading...) & (@ping 127.0.0.1 -n 2 -w 1000> nul) & (goto:Downloadnuslzip)

::if not exist Support\modules  (echo Eine oder mehrere von NUSLs Support Dateien fehlen! Redownloading...) & (@ping 127.0.0.1 -n 2 -w 1000> nul) & (goto:Downloadnusl)

if not exist Support\libexpatw.dll  (echo Eine oder mehrere von NUSLs Support Dateien fehlen! Redownloading...) & (@ping 127.0.0.1 -n 2 -w 1000> nul) & (goto:Downloadnusl)

if not exist Support\mingwm10.dll  (echo Eine oder mehrere von NUSLs Support Dateien fehlen! Redownloading...) & (@ping 127.0.0.1 -n 2 -w 1000> nul) & (goto:Downloadnusl)

if not exist Support\algmap.cfg  (echo Eine oder mehrere von NUSLs Support Dateien fehlen! Redownloading...) & (@ping 127.0.0.1 -n 2 -w 1000> nul) & (goto:Downloadnusl)

if not exist Support\fvc.exe  (echo Eine oder mehrere von NUSLs Support Dateien fehlen! Redownloading...) & (@ping 127.0.0.1 -n 2 -w 1000> nul) & (goto:Downloadnusl)

if not exist Support\nusd.exe  (echo Eine oder mehrere von NUSLs Support Dateien fehlen! Redownloading...) & (@ping 127.0.0.1 -n 2 -w 1000> nul) & (goto:Downloadnusl)

if not exist Support\sfk.exe  (echo Eine oder mehrere von NUSLs Support Dateien fehlen! Redownloading...) & (@ping 127.0.0.1 -n 2 -w 1000> nul) & (goto:Downloadnusl)

if not exist Support\tw.exe  (echo Eine oder mehrere von NUSLs Support Dateien fehlen! Redownloading...) & (@ping 127.0.0.1 -n 2 -w 1000> nul) & (goto:Downloadnusl)

if not exist Support\ASH.exe  (echo Eine oder mehrere von NUSLs Support Dateien fehlen! Redownloading...) & (@ping 127.0.0.1 -n 2 -w 1000> nul) & (goto:Downloadnusl)

if not exist Support\NFG.exe  (echo Eine oder mehrere von NUSLs Support Dateien fehlen! Redownloading...) & (@ping 127.0.0.1 -n 2 -w 1000> nul) & (goto:Downloadnusl)

if not exist Support\ICSharpCode.SharpZipLib.dll  (echo Eine oder mehrere von NUSLs Support Dateien fehlen!  Redownloading...) & (@ping 127.0.0.1 -n 2 -w 1000> nul) & (goto:Downloadnusl)

goto :titleNUSL
::------------------------------Downloade-Dateien-die-fehlen--------------------------------

:Downloadnuslzip
start %NUSLmin%/wait support\wget -t 3 "http://consolearea.square7.de/down/nusl/files/Support/7za.exe"
move 7za.exe Support
goto :check

:Downloadnusl
start %NUSLmin%/wait support\wget -t 3 "http://wiidatabase.de/nusl/Support.zip"
start %NUSLmin%/wait Support\7za x -aoa Support.zip -oSupport -r
goto:check


if /i "%skipscam%" EQU "on" goto:Autoupdate
:titleNUSL
call support\Settings.bat
if not exist %windir%\Microsoft.NET\Framework\v3.5 goto:framework
if exist Support\scam.txt goto :a
set warning=
CLS
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
color 1F
::---------------------------------------------------------
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] DIESE SOFTWARE DARF NICHT VERKAUFT WERDEN
if /i "%AGREEDVERSION%" NEQ "%CURRENTVERSION%" @ping 127.0.0.1 -n 7 -w 1000> nul
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 	 	    AUCH NICHT ALS TEIL EINES "PAKETES"
if /i "%AGREEDVERSION%" NEQ "%CURRENTVERSION%" @ping 127.0.0.1 -n 3 -w 1000> nul
echo.
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 		   WENN DU F?R DIESE SOFTWARE GEZAHLT HAST ODER
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 		   SIE ALS TEIL EINES PAKETES MIT BEZAHLUNG ERHALTEN HAST,
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 		   	   DANN WURDEST DU BETROGEN!
if /i "%AGREEDVERSION%" NEQ "%CURRENTVERSION%" @ping 127.0.0.1 -n 7 -w 1000> nul
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 		 UND SOLLTEST DEIN GELD SCHNELL ZUR?CKFORDERN!
echo. 
if /i "%AGREEDVERSION%" NEQ "%CURRENTVERSION%" @ping 127.0.0.1 -n 2 -w 1000> nul
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Green] 			Fr mehr Infos siehe
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Cyan] 		      http://hbc.hackmii.com/scam
if /i "%AGREEDVERSION%" NEQ "%CURRENTVERSION%" @ping 127.0.0.1 -n 7 -w 1000> nul
echo.
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] BENUTZUNG AUF EIGENE GEFAHR!
echo.
if /i "%AGREEDVERSION%" NEQ "%CURRENTVERSION%" @ping 127.0.0.1 -n 7 -w 1000> nul
Support\sfk echo -spat \x20 \x20 \x20 \x20  DIESE SOFTWARE KOMMT MIT KEINER GARANTIE, DASS SIE FUNKTIONIERT!
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20  NIEMAND AUáER DIR KANN ZUR VERANTWORTUNG GEZOGEN WERDEN
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 WENN DEINE WII KONSOLE BESCH?DIGT!!!
if /i "%AGREEDVERSION%" NEQ "%CURRENTVERSION%" @ping 127.0.0.1 -n 7 -w 1000> nul
echo.
echo.
if /i "%AGREEDVERSION%" EQU "%CURRENTVERSION%" echo 				Bitte warte...
if /i "%AGREEDVERSION%" EQU "%CURRENTVERSION%" @ping 127.0.0.1 -n 3 -w 1000> nul
if /i "%AGREEDVERSION%" EQU "%CURRENTVERSION%" goto:Autoupdate
echo Bitte schreibe "Ich" und "akzeptiere" mit einem Leerzeichen zwischen diesen Wörtern!

set /p warning=     Eingabe:			


if /i "%warning%" EQU "Ich akzeptiere" goto:skip
echo.
echo                                Schlieáe NUSL...
@ping 127.0.0.1 -n 2 -w 1000> nul
Exit


:skip
::Save version agreed to
if exist Support\settings.bat support\sfk filter -quiet Support\settings.bat -ls!"set AGREEDVERSION=" -write -yes
echo set AGREEDVERSION=%currentversion%>> Support\settings.bat

:Autoupdate
if /i "%AUTOUPDATE%" EQU "on" goto:UpdateNUSL

:a
:menu
TITLE NUSL
if not exist temp mkdir temp
if not exist temp\firststart.txt goto:firststart
if not exist %DRIVE% mkdir %DRIVE%
if not exist %DRIVEU% mkdir %DRIVEU%
if exist %UPDATENAME%-%U2%.txt del %UPDATENAME%-%U2%.txt
if exist NUSLautoupdate.bat del NUSLautoupdate.bat
set BC=
set casper=
set boot2=
set EULA=
set Mii=
set M=
set N=
set O=
set F=
set F1=
set DML=
set S=
set W=
set YAWMM=
set HMI=
set Bootmii=
set MENU=
set SH=
set Letter=
set viernull=
set viereins=
set vierzwei=
set vierdrei=
set Kanale=
set PDE=
set Menui=
set DLTOTAL=
set BB=
set BB2=
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
if /i "%DLQUEUE%" EQU "L" Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Green] Listen erfolgreich gel?scht!
set DLQUEUE=
if /i "%baseappfailed%" EQU "yes" Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] Download fehlgeschlagen!
if /i "%baseappfailed%" EQU "no" Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Green] Download abgeschlossen!
echo.
if exist temp\settings.txt Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] Lade NUSL erneut!
if exist temp\settings.txt Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] WiiDatabase.de/Nusl
echo.
echo            1 = Download Seite 1 (Apps)
echo.
if not exist temp\settings.txt echo            2 = Download Seite 2 (Kan?le)
echo.
::echo		   3 = Download Seite 3 (PC Programme)
echo.
echo.
if not exist temp\settings.txt echo		   CF = Bootmii.ini erstellen
echo.
if not exist temp\settings.txt echo		   T  = Theme Builder
echo.
echo.
echo.
if exist temp\DownloadQueue\*.bat echo               L = Lade Download Liste
if exist temp\DownloadQueue\*.bat echo.
echo.
if not exist temp\settings.txt echo            O = Optionen
echo.
if not exist temp\settings.txt echo     C = Changelog (Internet)     CR = Credits     B = Beenden
if exist temp\settings.txt echo B = Beenden
echo.
set /p MENU=     Eingabe: 


if /i "%MENU%" EQU "1" goto:Apps
if /i "%MENU%" EQU "2" goto:System
::if /i "%MENU%" EQU "3" goto:PC
if /i "%MENU%" EQU "IOS" goto:IOSData
if /i "%MENU%" EQU "O" goto:options
if /i "%MENU%" EQU "CR" goto:Credits
if /i "%MENU%" EQU "C" goto:Changes
if /i "%MENU%" EQU "B" exit
if /i "%MENU%" EQU "CF" goto:Config
if /i "%MENU%" EQU "L" goto:Loadqueue
if /i "%MENU%" EQU "T" goto:Themebuilder
::if /i "%MENU%" EQU "P" goto:problembehandlung



echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:a


:Changes
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo Changelog wird geöffnet...
start http://wiidatabase.de/nusl/changelog.html
echo.
echo.
echo.
@ping 127.0.0.1 -n 4 -w 1000> nul
goto:a

:Credits
CLS
set CREDIT1=
echo Û²²		   	             NUSL                               %CURRENTVERSION%
echo                              by the WiiDatabase Team   
echo.
echo                                   CREDITS
echo                                 ===========
echo.
echo.
echo   NUSL wurde nur von mir geschrieben: iCON
echo   Aber ohne die Hilfe von anderen w?re NUSL jetzt nicht das was es jetzt ist!
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
echo.		Drcke Enter zum fortfahren!
echo.									
set /p CREDIT1=		Eingabe:	


if /i "%CREDIT1%" EQU "$" start https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick^&hosted_button_id=DDHSQJPHDDXVW
if /i "%CREDIT1%" EQU "$" goto:Credit1

if /i "%CREDIT1%" EQU "B" goto:a
if /i "%CREDIT1%" EQU "M" goto:a

:Credit2
CLS
set CREDIT2=
echo ÛÛ²		   	             NUSL                               %CURRENTVERSION%
echo                              by the WiiDatabase Team   
echo.
echo                                   CREDITS
echo                                 ===========
echo.
echo   Ich m?chte danken:
echo.
support\sfk echo -spat \x20 [Red]Team Twiizers
echo   =============
echo   Danke an Team Twiizers, die den Hackmii Installer erfunden haben und nie aufgeben,
echo   falls Nintendo mal wieder ein Update rausbringt :D
echo.
support\sfk echo -spat \x20 [Red]Wii-Homebrew.com
echo   =============
echo   Eines der besten Foren der Welt! Hier habe ich wirklich viel ber Homebrew
echo   und anderes gelernt!
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.									
set /p CREDIT2=		Drcke Enter um fortzufahren!

:Credit3
CLS
set CREDIT3=
echo ÛÛÛ		   	             NUSL                               %CURRENTVERSION%
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
echo.
echo   SD Sachen sind gespeichert in:
echo.
echo   %DRIVE%
echo.
echo   USB Sachen sind gespeichert in:
echo.
echo   %DRIVEU%
echo.
if exist Support\Update.txt echo   Auto Update ist eingeschaltet
if not exist Support\Update.txt echo   Auto Update ist ausgeschaltet
::if exist Support\Scam.txt echo   Die Scammeldung ist ausgeschaltet
::if not exist Support\Scam.txt echo   Die Scammeldung ist angeschaltet
::if exist Support\CREDITS.txt echo Die Credits sind abgeschaltet - Moment, wie hast du das gefunden?
::if not exist Support\CREDITS.txt echo   Die Credits sind angeschalten - Ergibt auch Sinn!
echo.
echo.
support\sfk echo -spat \x20 [Red]Danke!
echo   =============
echo   Z = Zurck zum Start
echo.
echo.									
set /p CREDIT3=		Eingabe: 

if /i "%CREDIT3%" EQU "Z" goto:a

echo Zurck zum Start...
@ping 127.0.0.1 -n 4 -w 1000> nul
goto:a

::-----------------------------------Optionen-----------------------------------------------

:options
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo Version %CURRENTVERSION%
echo.
if /i "%OPTIONS%" EQU "S" Support\sfk echo -spat \x20 \x20 [Green] Deine Einstellungen wurden gespeichert!
set options=
echo.
echo.
echo SD = Dateipfad fr SD ?ndern (Eingestellt auf %Drive%)
echo.
echo USB = Dateipfad fr USB ?ndern (Eingestellt auf %Driveu%)
echo.
echo NA = Name ändern
echo.
if /i "%AUTOUPDATE%" EQU "OFF" echo           A = Auto-Update NUSL beim Programmstart (Aus)
if /i "%AUTOUPDATE%" EQU "ON" echo           A = Auto-Update NUSL beim Programmstart (An)
echo.
echo           V = Erstelle custom.md5 um alle Dateien in %DRIVE% zu verifizieren
if exist Custom.md5 echo           V2 = Verifiziere Dateien in %DRIVE% mit der Custom.md5
if exist Custom.md5 echo           V3 = L?sche Custom.md5
echo.
echo.          VU = Erstelle customusb.md5 um alle Dateien in %DRIVEU% zu verifizieren
if exist Customusb.md5 echo           VU2 = Verifiziere Dateien in %DRIVEU% mit der Customusb.md5
if exist Customusb.md5 echo           VU3 = L?sche Customusb.md5
echo.
echo.
echo.           
echo.
echo  R = NUSL neustarten       N = Suche nach Updates fr NUSL
echo.
support\sfk echo -spat \x20 \x20 \x20 \x20 [Green]S = Speichere Einstellungen
echo.
echo Z = Zurck
echo.
set /p options=     Eingabe: 

if /i "%options%" EQU "SD" goto:DRIVECHANGE
if /i "%options%" EQU "USB" goto:DRIVEUCHANGE
if /i "%OPTIONS%" EQU "N" goto:UpdateNUSL
if /i "%options%" EQU "Z" goto:a
if /i "%options%" EQU "NA" goto:name
if /i "%Options%" EQU "V" goto:verifysd
if /i "%Options%" EQU "V2" goto:verifysd2
if /i "%Options%" EQU "V3" goto:delverifysd
if /i "%Options%" EQU "VU" goto:verifyusb
if /i "%Options%" EQU "R" goto:RestartNUSL
if /i "%Options%" EQU "VU2" goto:verifyusb2
if /i "%Options%" EQU "VU3" goto:delverifyusb
if /i "%OPTIONS%" EQU "A" goto:AUTOUPDATE
if /i "%OPTIONS%" EQU "S" goto:Speichereeinstellungen
::if /i "%OPTIONS%" EQU "SC" goto:Skipscam
if /i "%OPTIONS%" EQU "F" goto:COLOR

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:options

:RestartNUSL
if exist temp\Restart.bat del temp\Restart.bat
echo @echo off >> temp\Restart.bat
echo COLOR 1F >> temp\Restart.bat
echo TITLE NUSL Neustart >> temp\Restart.bat
echo echo Bitte warte! >> temp\Restart.bat
echo. >> temp\Restart.bat
echo echo Startet NUSL nicht gleich neu, starte NUSL bitte manuell! >> temp\Restart.bat
echo @ping 127.0.0.1 -n 4 -w 1000> nul >> temp\Restart.bat
echo start NUSL.bat >> temp\Restart.bat
echo exit >> temp\Restart.bat
start temp\Restart.bat
exit

:name
cls
set name=
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo					Wie heißt du?
echo.
echo.
echo.
echo.
echo.
echo				   NONE = Kein Name (User)
echo.
echo.
echo.
echo.
echo.
set /p name= 	Eingabe:	



if /i "%name%" EQU "NONE" set name=User
if /i "%name%" EQU "NONE" goto:options

:name2
cls
set nameright=
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo				Ist der Name "%name%" richtig?
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo			J = Ja
echo			N = Nein
echo.
echo.
echo.
echo.
echo.
echo.
set /p nameright=	Eingabe:	

if /i "%nameright%" EQU "j" goto:options
if /i "%nameright%" EQU "n" goto:firststart

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:name2


:Skipscam
if /i "%Skipscam%" EQU "ON" goto:Skipscamoff
Set Skipscam=ON
goto:OPTIONS

:Skipscamoff
Set Skipscam=OFF
goto:OPTIONS

:AUTOUPDATE
if /i "%AUTOUPDATE%" EQU "ON" goto:AUTOUPDATEoff
Set AUTOUPDATE=ON
goto:OPTIONS

:AUTOUPDATEoff
Set AUTOUPDATE=OFF
goto:OPTIONS


:colored
if exist temp\Color.txt goto:skip
echo Dies ?ndert die Farbe >> temp\Color.txt
echo Starte NUSL neu, damit die ?nderungen wirksam werden!
@ping 127.0.0.1 -n 4 -w 1000> nul
goto:Options
:skip
del temp\color.txt
echo Starte NUSL neu, damit die ?nderungen wirksam werden!
@ping 127.0.0.1 -n 4 -w 1000> nul
goto:Options



:delverifysd
if not exist Custom.md5 goto:nocustomMD5
if /i "%OPTIONS%" EQU "V3" del Custom.md5
if /i "%OPTIONS%" EQU "V3" goto:options

:delverifyusb
if not exist Customusb.md5 goto:nocustomMD5
if /i "%OPTIONS%" EQU "VU3" del Customusb.md5
if /i "%OPTIONS%" EQU "VU3" goto:options

:nocustomMD5

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:options


:Creditsan
echo Dies blendet den CREDITS Menpunkt aus im NUSL, Version %CURRENTVERSION% >> Support\CREDITS.txt
goto :options


:Creditsaus
del Support\CREDITS.txt
goto :options


:COLOR
if /i "%COLOR%" EQU "on" goto:COLORoff
set COLOR=ON
echo Starte NUSL neu, damit die ?nderungen wirksam werden! Speichern nicht vergessen!
@ping 127.0.0.1 -n 5 -w 1000> nul
GOTO:OPTIONS

:COLORoff
set COLOR=OFF
echo Starte NUSL neu, damit die ?nderungen wirksam werden! Speichern nicht vergessen!
@ping 127.0.0.1 -n 5 -w 1000> nul
GOTO:OPTIONS



:Speichereeinstellungen
echo Set AUTOUPDATE=%AUTOUPDATE%>> Support\settings.bat
echo Set COLOR=%COLOR%>> Support\settings.bat
echo Set Skipscam=%SKIPSCAM%>> Support\settings.bat
echo Set name=%name%>> Support\settings.bat
goto:Options



:DRIVEUCHANGE
set driveUtemp=%DRIVEU%
cls
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
echo.
echo	   W?hle bitte aus, wo Sachen gespeichert werden sollen, die auf USB mssen!
echo.
echo		Aktuelle Einstellung: %DRIVEU%
echo.
echo.
echo		Bitte w?hle NICHT das gleiche Verzeichnis wie die SD! 
echo				Bspsw. zweimal I:\NUSL!
echo.
echo.
echo.
echo.
echo         Beispiele:
echo.
echo.
echo            I:\NUSL\USB
echo.
echo		C:\Programme\NUSL\COPY_TO_USB
echo.
echo		F:\NUSL\USB
echo.
echo.
echo.
echo.
echo.	S = Standardeinstellung (COPY_TO_USB)
echo.
echo         Z = Zurck
echo.
echo         M = Men
echo.
echo.
set /p DriveUtemp=     Eingabe:		


::remove quotes from variable (if applicable)
echo "set DRIVEUTEMP=%DRIVEUTEMP%">temp.txt
support\sfk filter -quiet temp.txt -rep _""""__>temp.bat
call temp.bat
del temp.bat>nul
del temp.txt>nul


if /i "%DRIVEUTEMP%" EQU "M" goto:a

if /i "%DRIVEUTEMP%" EQU "Z" goto:options

if /i "%DRIVEUTEMP%" EQU "S" set DRIVEUTEMP=COPY_TO_USB

:doublecheckU
set fixslash=
if /i "%DRIVEUTEMP:~-1%" EQU "\" set fixslash=yes
if /i "%DRIVEUTEMP:~-1%" EQU "/" set fixslash=yes
if /i "%fixslash%" EQU "yes" set DRIVEUTEMP=%DRIVEUTEMP:~0,-1%
if /i "%fixslash%" EQU "yes" goto:doublecheckU



::if second char is ":" check if drive exists
if /i "%DRIVEUTEMP:~1,1%" NEQ ":" goto:skipcheck
if exist "%DRIVEUTEMP:~0,2%" (goto:skipcheck) else (echo.)
echo %DRIVEUTEMP:~0,2% existiert nicht! Versuche es nochmal...
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:DRIVEUCHANGE
:skipcheck



set DRIVEU=%DRIVEUTEMP%

::autosave drive setting to settings.bat
support\sfk filter Support\settings.bat -!"Set DriveU=" -write -yes>nul
echo Set DriveU=%DRIVEU%>>Support\settings.bat

if /i "%USBCONFIG%" EQU "USB" set DRIVE=%DRIVEU%
if /i "%USBCONFIG%" EQU "USB" set BACKB4QUEUE=DRIVEUCHANGE
if /i "%USBCONFIG%" EQU "USB" goto:DownloadQueue
:skip
if /i "%USBCONFIG%" EQU "USB" set BACKB4QUEUE=DRIVEUCHANGE
if /i "%USBCONFIG%" EQU "USB" goto:Download


if /i "%CREDIT3%" EQU "USB" goto:CREDIT3
goto:Options




:DRIVECHANGE
set drivetemp=%DRIVE%
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
echo.
echo.
echo      W?hle bitte aus, wo Sachen gespeichert werden sollen, die auf die SD mssen!
echo.
echo		Aktuelle Einstellung: %DRIVE%
echo.
echo.
echo		Bitte w?hle NICHT das gleiche Verzeichnis wie bei USB! 
echo				Bspsw. zweimal I:\NUSL!
echo.
echo.
echo         Beispiele:
echo.
echo.
echo            I:\NUSL\SD
echo.
echo		%userprofile%\Desktop\COPY_TO_SD
echo.
echo.
echo.
echo.
echo.	S = Standardeinstellung (COPY_TO_SD)
echo.
echo         Z = Zurck
echo.
echo         M = Men
echo.
echo.
set /p Drivetemp=     Eingabe:	

::remove quotes from variable (if applicable)
echo "set DRIVETEMP=%DRIVETEMP%">temp.txt
support\sfk filter -quiet temp.txt -rep _""""__>temp.bat
call temp.bat
del temp.bat>nul
del temp.txt>nul


if /i "%DRIVETEMP%" EQU "Z" goto:Options
if /i "%DRIVETEMP%" EQU "M" goto:a
if /i "%DRIVETEMP%" EQU "S" set DRIVETEMP=COPY_TO_SD

:doublecheck
set fixslash=
if /i "%DRIVETEMP:~-1%" EQU "\" set fixslash=yes
if /i "%DRIVETEMP:~-1%" EQU "/" set fixslash=yes
if /i "%fixslash%" EQU "yes" set DRIVETEMP=%DRIVETEMP:~0,-1%
if /i "%fixslash%" EQU "yes" goto:doublecheck


::if second char is ":" check if drive exists
if /i "%DRIVETEMP:~1,1%" NEQ ":" goto:skipcheck
if exist "%DRIVETEMP:~0,2%" (goto:skipcheck) else (echo.)
echo %DRIVETEMP:~0,2% existiert nicht! Versuche es nochmal...
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

if /i "%CREDIT3%" EQU "SD" goto:CREDIT3
goto:Options


::----------------------------OptionenEnde--------------------------------------------------

:framework
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo       NUSL ben?tigt Microsoft .NET Framework 3.5!
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

:NUS
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
set NUS=
echo Willkommen im Nintendo Update Server!
echo.
echo.
echo   S = System
echo.
echo.
echo   Z = Zurck
echo.
set /P NUS=     Eingabe: 

if /i "%NUS%" EQU "S" goto:System
if /i "%NUS%" EQU "Z" goto:a


echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:NUS

:PC
CLS
set PC=
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo			D =	Downloade ausgew?hlte
echo.
echo.
echo.
echo.
echo				Z = Zurck
echo.
set /p PC=     Eingabe:	

if /i "%PC%" EQU "D" goto:queue
if /i "%PC%" EQU "Z" goto:a

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:PC


:downloadPC
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo					Downloade...
echo.
echo	Alle Dateien werden in das gleiche Verzeichnis wie der NUSL gedownloadet!
echo.
echo.
echo.
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Green] Alle Downloads abgeschlossen!
echo.
echo				Drcke eine Taste!
pause >NUL
goto:PCqueuezusammenfassung

:PCqueuezusammenfassung
CLS
set PCque=
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo				Hier ist dein Log:
echo.
echo.
echo					Drcke eine Taste!
pause >NUL
goto:a



:System
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo			D =	Downloade ausgew?hlte
echo			1 =	Seite 1
echo.
echo.
echo   %BC% BC		=	BC
echo.
echo   %boot2% B		=	Boot2
echo.
echo   %EULA% E		=	EULA
echo.
echo   %F% F		=	Fotokanal
echo.
echo   %F1% F1		=	Fotokanal 1.1
echo.
echo   %Mii% Mii		=	Mii-Kanal
echo.
echo   %M% M		=	MIOS
echo.
echo   %N% N		=	Newskanal
echo.
echo   %O% O		=	Opera Internet Kanal
echo.
echo   %S% S		=	Wii-Shop Kanal
echo.
echo   %W% W		=	WetterKanal
echo.
echo.
echo   Sy		=	Systemmen (mit dem SystemIOS)
if /i "%Kanale%" EQU "Sy" echo		%viernull% 4.0     = 	4.0E
if /i "%Kanale%" EQU "Sy" echo		%viereins% 4.1     = 	4.1E
if /i "%Kanale%" EQU "Sy" echo		%vierzwei% 4.2     = 	4.2E
if /i "%Kanale%" EQU "Sy" echo		%vierdrei% 4.3     = 	4.3E
echo.
echo.
echo				Z = Zurck
echo.
echo.
set Kanal=
set /p Kanal=     Eingabe:		

if /i "%Kanal%" EQU "4.0" goto:switchviernull
if /i "%Kanal%" EQU "4.1" goto:switchviereins
if /i "%Kanal%" EQU "4.2" goto:switchvierzwei
if /i "%Kanal%" EQU "4.3" goto:switchvierdrei
if /i "%Kanal%" EQU "O" goto:switchopera
if /i "%Kanal%" EQU "BC" goto:switchBC
if /i "%Kanal%" EQU "B" goto:switchBoot2
if /i "%Kanal%" EQU "E" goto:switchEULA
if /i "%Kanal%" EQU "F" goto:switchFotokanal
if /i "%Kanal%" EQU "F1" goto:switchFotokanal11
if /i "%Kanal%" EQU "N" goto:switchNewskanal
if /i "%Kanal%" EQU "M" goto:switchMIOS
if /i "%Kanal%" EQU "W" goto:switchWetterkanal
if /i "%Kanal%" EQU "Mii" goto:switchMii
if /i "%Kanal%" EQU "Sy" goto:switchSystem
if /i "%Kanal%" EQU "S" goto:switchShop
if /i "%Kanal%" EQU "Z" goto:a
if /i "%Kanal%" EQU "D" goto:queue
if /i "%Kanal%" EQU "1" goto:Apps

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:System

:switchviernull
if /i "%viernull%" EQU "*" (set viernull=) else (set viernull=*)
goto:System

:switchviereins
if /i "%viereins%" EQU "*" (set viereins=) else (set viereins=*)
goto:System

:switchvierzwei
if /i "%vierzwei%" EQU "*" (set vierzwei=) else (set vierzwei=*)
goto:System

:switchvierdrei
if /i "%vierdrei%" EQU "*" (set vierdrei=) else (set vierdrei=*)
goto:System

:switchSystem
if /i "%Kanale%" NEQ "Sy" goto:switchonsys
set Kanale=
goto:System
:switchonsys
set Kanale=Sy
goto:System

:switchBC
if /i "%BC%" EQU "*" (set BC=) else (set BC=*)
goto:System

:switchopera
if /i "%O%" EQU "*" (set O=) else (set O=*)
goto:System

:switchBoot2
if /i "%boot2%" EQU "*" (set boot2=) else (set boot2=*)
goto:System

:switchEULA
if /i "%EULA%" EQU "*" (set EULA=) else (set EULA=*)
goto:System

:switchFotokanal
if /i "%F%" EQU "*" (set F=) else (set F=*)
goto:System

:switchFotokanal11
if /i "%F1%" EQU "*" (set F1=) else (set F1=*)
goto:System

:switchNewskanal
if /i "%N%" EQU "*" (set N=) else (set N=*)
goto:System

:switchMIOS
if /i "%M%" EQU "*" (set M=) else (set M=*)
goto:System

:switchWetterkanal
if /i "%W%" EQU "*" (set W=) else (set W=*)
goto:System

:switchMii
if /i "%Mii%" EQU "*" (set Mii=) else (set Mii=*)
goto:System

:switchShop
if /i "%S%" EQU "*" (set S=) else (set S=*)
goto:System



:queue
:COUNTDLS
if exist temp\DLnames.txt del temp\DLnames.txt>nul
if exist temp\DLgotos.txt del temp\DLgotos.txt>nul
setlocal ENABLEDELAYEDEXPANSION
SET DLTOTAL=0
set CURRENTDL=0
if /i "%Bootmii%" EQU "*" echo		Bootmii Ordner>> temp\DLnames.txt
if /i "%BB%" EQU "*" echo		BannerBomb>> temp\DLnames.txt
if /i "%BB2%" EQU "*" echo		BannerBomb v2>> temp\DLnames.txt
if /i "%HMI%" EQU "*" echo		Hackmii Installer>> temp\DLnames.txt
if /i "%Letter%" EQU "*" echo		Letterbomb>> temp\DLnames.txt
if /i "%Menui%" EQU "*" echo		MyMenuify Mod>> temp\DLnames.txt
if /i "%PDE%" EQU "*" echo		PriiLoader German Mod>> temp\DLnames.txt
if /i "%YAWMM%" EQU "*" echo		Yet another Wad Manager>> temp\DLnames.txt
if /i "%BC%" EQU "*" echo		BC>> temp\DLnames.txt
if /i "%boot2%" EQU "*" echo		Boot2>> temp\DLnames.txt
if /i "%EULA%" EQU "*" echo		EULA>> temp\DLnames.txt
if /i "%Mii%" EQU "*" echo		Mii-Kanal>> temp\DLnames.txt
if /i "%M%" EQU "*" echo		MIOS>> temp\DLnames.txt
if /i "%N%" EQU "*" echo		Nachrichtenkanal>> temp\DLnames.txt
if /i "%O%" EQU "*" echo		Opera Internet Kanal>> temp\DLnames.txt
if /i "%F%" EQU "*" echo		Fotokanal>> temp\DLnames.txt
if /i "%F1%" EQU "*" echo		Fotokanal 1.1>> temp\DLnames.txt
if /i "%S%" EQU "*" echo		Shop Kanal>> temp\DLnames.txt
if /i "%Sh%" EQU "*" echo		IOS 56>> temp\DLnames.txt
if /i "%viernull%" EQU "*" echo		Firmware 4.0E>> temp\DLnames.txt
if /i "%viernull%" EQU "*" echo		IOS 60 v6174>> temp\DLnames.txt
if /i "%viereins%" EQU "*" echo		Firmware 4.1E>> temp\DLnames.txt
if /i "%viereins%" EQU "*" echo		IOS 60 v6174>> temp\DLnames.txt
if /i "%vierzwei%" EQU "*" echo		Firmware 4.2E>> temp\DLnames.txt
if /i "%vierzwei%" EQU "*" echo		IOS 60 v6400>> temp\DLnames.txt
if /i "%vierdrei%" EQU "*" echo		Firmware 4.3E>> temp\DLnames.txt
if /i "%vierdrei%" EQU "*" echo		IOS 80 v6943>> temp\DLnames.txt
if /i "%W%" EQU "*" echo		Wetterkanal>> temp\DLnames.txt
for /f "delims=" %%i in (temp\DLnames.txt) do set /a DLTOTAL=!DLTOTAL!+1
setlocal DISABLEDELAYEDEXPANSION
:miniskip
CLS
set Sysque=
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
echo	Folgende %DLTOTAL% Dateien werden gedownloadet:
echo.
if /i "%DLTOTAL%" EQU "0" goto:skipall
echo.				          Apps:
echo.
if /i "%BB%" EQU "*" echo		BannerBomb
if /i "%BB2%" EQU "*" echo		BannerBomb v2
if /i "%Bootmii%" EQU "*" echo		Bootmii Ordner
if /i "%Casper%" EQU "*" echo		Casper
if /i "%DML%" EQU "*" echo		DIOS-MIOS Lite
if /i "%HMI%" EQU "*" echo		Hackmii Installer
if /i "%Letter%" EQU "*" echo		Letterbomb
if /i "%Menui%" EQU "*" echo		MyMenuify Mod
if /i "%PDE%" EQU "*" echo		PriiLoader German Mod
if /i "%YAWMM%" EQU "*" echo		Yet another Wad Manager
echo.
echo.
echo				          WADs:
echo.
if /i "%BC%" EQU "*" echo		BC
if /i "%boot2%" EQU "*" echo		Boot2
if /i "%EULA%" EQU "*" echo		EULA
if /i "%Mii%" EQU "*" echo		Mii-Kanal	
if /i "%M%" EQU "*" echo		MIOS
if /i "%N%" EQU "*" echo		Nachrichtenkanal
if /i "%O%" EQU "*" echo		Opera Internet Kanal
if /i "%F%" EQU "*" echo		Fotokanal
if /i "%F1%" EQU "*" echo		Fotokanal 1.1
if /i "%S%" EQU "*" echo		Shop Kanal
if /i "%Sh%" EQU "*" echo		IOS 56
if /i "%viernull%" EQU "*" echo		Firmware 4.0E
if /i "%viernull%" EQU "*" echo		IOS 60 v6174
if /i "%viereins%" EQU "*" echo		Firmware 4.1E
if /i "%viereins%" EQU "*" echo		IOS 60 v6174
if /i "%vierzwei%" EQU "*" echo		Firmware 4.2E
if /i "%vierzwei%" EQU "*" echo		IOS 60 v6400
if /i "%vierdrei%" EQU "*" echo		Firmware 4.3E
if /i "%vierdrei%" EQU "*" echo		IOS 80 v6943
if /i "%W%" EQU "*" echo		Wetterkanal
echo.
:skipall
if /i "%DLTOTAL%" EQU "0" echo	 Nichts!
echo.
if /i "%DLTOTAL%" NEQ "0" echo.				Stimmt das?
echo.
if /i "%DLTOTAL%" NEQ "0" echo		J	=	Ja, Downloade!
if /i "%DLTOTAL%" NEQ "0" echo		S	=	Speichere Downloadliste
if /i "%DLTOTAL%" NEQ "0" echo		N	=	Nein
if /i "%DLTOTAL%" EQU "0" echo		N	=	Zurck zur Auswahl!
echo.
set /p Sysque=     Eingabe: 

if /i "%Sysque%" EQU "J" goto:downloadqueue

if /i "%Sysque%" EQU "N" goto:Apps

if /i "%Sysque%" EQU "S" goto:Savedl


echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:queue


:downloadqueue
if /i "%DLTOTAL%" EQU "0" goto:badkeydl
if /i "%DLTOTAL%" NEQ "0" goto:Download
:badkeydl
echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:queue

:Download
set Sysque=
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
if /i "%DML%" EQU "*" set dmlfail=0
if /i "%BB%" NEQ "*" goto:BB2
set /a CURRENTDL=%CURRENTDL%+1
Support\sfk echo -spat \x20 \x20 \x20 [Magenta]%CURRENTDL% von %DLTOTAL%: BannerBomb für 3.2 - 4.1
start %NUSLmin%/wait support\wget -t 3 "http://bannerbomb.qoid.us/aads/aad1f_v108.zip"

:BB2



if /i "%Bootmii%" EQU "*" set /a CURRENTDL=%CURRENTDL%+1
if /i "%Bootmii%" EQU "*" Support\sfk echo -spat \x20 \x20 \x20 [Magenta]%CURRENTDL% von %DLTOTAL%: Bootmii
if /i "%Bootmii%" EQU "*" start %NUSLmin%/wait support\wget -t 3 "http://consolearea.square7.de/down/nusl/files/Bootmii.zip"
if /i "%Bootmii%" EQU "*" start %NUSLmin%/wait Support\7za x -aoa Bootmii.zip -otemp -r >NUL
if /i "%Bootmii%" EQU "*" if not exist "%DRIVE%\Bootmii" mkdir "%DRIVE%\Bootmii"
if /i "%Bootmii%" EQU "*" if exist temp\Bootmii\armboot.bin move /Y temp\Bootmii\armboot.bin "%DRIVE%\Bootmii"
if /i "%Bootmii%" EQU "*" if exist "temp\Bootmii\ppcboot.elf" move /Y "temp\Bootmii\ppcboot.elf" "%DRIVE%\Bootmii"
if /i "%Bootmii%" EQU "*" if exist temp\Bootmii rmdir /s /q temp\Bootmii
if /i "%Bootmii%" EQU "*" if exist Bootmii.zip del Bootmii.zip
if /i "%Bootmii%" EQU "*" echo.
if /i "%Bootmii%" EQU "*" Support\sfk echo -spat \x20 \x20 \x20 [Green] Download abgeschlossen!
if /i "%Bootmii%" EQU "*" echo.
if /i "%Bootmii%" EQU "*" echo.





:HMI
if /i "%dmlfail%" NEQ "2" if /i "%DML%" EQU "*" CLS
if /i "%HMI%" EQU "*" set /a CURRENTDL=%CURRENTDL%+1
if /i "%HMI%" EQU "*" Support\sfk echo -spat \x20 \x20 \x20 [Magenta]%CURRENTDL% von %DLTOTAL%:  Hackmii Installer
if /i "%HMI%" EQU "*" start %NUSLmin%/wait support\wget -t 3 "http://consolearea.square7.de/down/nusl/files/Hackmii.zip"
if /i "%HMI%" EQU "*" start %NUSLmin%/wait Support\7za x -aoa Hackmii.zip -otemp -r >NUL
if /i "%HMI%" EQU "*" if not exist "%DRIVE%\Apps\Hackmii Installer" mkdir "%DRIVE%\Apps\Hackmii Installer"
if /i "%HMI%" EQU "*" if exist temp\boot.elf move /Y temp\boot.elf "%DRIVE%\Apps\Hackmii Installer"
if /i "%HMI%" EQU "*" if exist temp\icon.png move /Y temp\icon.png "%DRIVE%\Apps\Hackmii Installer"
if /i "%HMI%" EQU "*" if exist temp\meta.xml move /Y temp\meta.xml "%DRIVE%\Apps\Hackmii Installer"
if /i "%HMI%" EQU "*" if exist Hackmii.zip del Hackmii.zip
if /i "%HMI%" EQU "*" Support\sfk echo -spat \x20 \x20 \x20 [Green] Download abgeschlossen!
if /i "%HMI%" EQU "*" echo.
if /i "%HMI%" EQU "*" echo.
if /i "%Letter%" EQU "*" set /a CURRENTDL=%CURRENTDL%+1
if /i "%Letter%" EQU "*" Support\sfk echo -spat \x20 \x20 \x20 [Magenta]%CURRENTDL% von %DLTOTAL%:  Letterbomb
if /i "%Letter%" EQU "*" echo.
if /i "%Letter%" EQU "*" echo Letterbomb funktioniert nur auf 4.3!
if /i "%Letter%" EQU "*" echo.
if /i "%Letter%" EQU "*" echo Warte...
if /i "%Letter%" EQU "*" start http://please.hackmii.com
if /i "%Letter%" EQU "*" start explorer.exe "%cd%"
if /i "%Letter%" EQU "*" echo.
if /i "%Letter%" EQU "*" echo Hier musst du deine MAC Adresse der Wii eintragen
if /i "%Letter%" EQU "*" echo und dann den Haken bei "Bundle the Hackmii Installer" wegmachen!
if /i "%Letter%" EQU "*" echo.
if /i "%Letter%" EQU "*" echo Kopiere dann Letterbomb in das Explorer Fenster!
if /i "%Letter%" EQU "*" echo.
if /i "%Letter%" EQU "*" echo Drcke dann eine Taste!
if /i "%Letter%" EQU "*" pause >NUL
if /i "%Letter%" EQU "*" if not exist "Letterbomb.zip" goto:Letterbombredownload
if /i "%Letter%" EQU "*" if exist "Letterbomb.zip" goto:Letter2
:Letterbombredownload
if /i "%Letter%" EQU "*" Support\sfk echo -spat \x20 \x20 \x20 [Red] Fehler! Letterbomb existiert nicht!
if /i "%Letter%" EQU "*" echo Warte...
if /i "%Letter%" EQU "*" start http://please.hackmii.com
if /i "%Letter%" EQU "*" start explorer.exe "%cd%"
if /i "%Letter%" EQU "*" echo.
if /i "%Letter%" EQU "*" echo Hier musst du deine MAC Adresse der Wii eintragen
if /i "%Letter%" EQU "*" echo und dann den Haken bei "Bundle the Hackmii Installer" wegmachen!
if /i "%Letter%" EQU "*" echo.
if /i "%Letter%" EQU "*" echo Kopiere dann Letterbomb in das Explorer Fenster!
if /i "%Letter%" EQU "*" echo.
if /i "%Letter%" EQU "*" echo Drcke dann eine Taste!
if /i "%Letter%" EQU "*" pause >NUL
if /i "%Letter%" EQU "*" if not exist "Letterbomb.zip" goto:Letterbombredownload2
if /i "%Letter%" EQU "*" if exist "Letterbomb.zip" goto:Letter2

:Letterbombredownload2
if /i "%Letter%" EQU "*" echo.
if /i "%Letter%" EQU "*" Support\sfk echo -spat \x20 \x20 \x20 [Red] Letterbomb konnte nicht gefunden werden! ?berspringe Download...
if /i "%Letter%" EQU "*" echo.
if /i "%Letter%" EQU "*" goto:TheNext


:Letter2
if /i "%Letter%" EQU "*" echo.
if /i "%Letter%" EQU "*" if not exist temp\Letterbomb mkdir temp\Letterbomb
if /i "%Letter%" EQU "*" start %NUSLmin%/wait Support\7za x -aoa Letterbomb.zip -otemp\Letterbomb -r >NUL
if /i "%Letter%" EQU "*" move /y temp\Letterbomb\private "%DRIVE%"
if /i "%Letter%" EQU "*" if exist temp\Letterbomb\boot.elf move /y temp\Letterbomb\boot.elf "%DRIVE%"
if /i "%Letter%" EQU "*" rmdir /s /q temp\Letterbomb
if /i "%Letter%" EQU "*" del Letterbomb.zip
if /i "%Letter%" EQU "*" Support\sfk echo -spat \x20 \x20 \x20 [Green] Download abgeschlossen!
if /i "%Letter%" EQU "*" echo.
if /i "%Letter%" EQU "*" echo.
:TheNext
if /i "%Menui%" NEQ "*" goto:Thenextnext
set /a CURRENTDL=%CURRENTDL%+1
Support\sfk echo -spat \x20 \x20 \x20 [Magenta]%CURRENTDL% von %DLTOTAL%:  MyMenuify Mod
start %NUSLmin%/wait support\wget -t 3 "http://consolearea.square7.ch/down/Wii/My-Menuify-Mod.zip"
start %NUSLmin%/wait Support\7za x -aoa My-Menuify-Mod.zip -otemp -r >NUL
if not exist "%DRIVE%\Apps\MyMenuifyMod" mkdir "%DRIVE%\Apps\MyMenuifyMod"
if exist temp\MyMenuifyMod\boot.dol move /Y temp\MyMenuifyMod\boot.dol %DRIVE%\Apps\MyMenuifyMod
if exist temp\MyMenuifyMod\icon.png move /Y temp\MyMenuifyMod\icon.png %DRIVE%\Apps\MyMenuifyMod
if exist temp\MyMenuifyMod\meta.xml move /Y temp\MyMenuifyMod\meta.xml %DRIVE%\Apps\MyMenuifyMod
::if exist temp\MyMenuifyMod rmdir /s /q temp\MyMenuifyMod
if exist My-Menuify-Mod.zip del My-Menuify-Mod.zip
echo.
Support\sfk echo -spat \x20 \x20 \x20 [Green] Download abgeschlossen!
echo.
:Thenextnext
if /i "%PDE%" NEQ "*" goto:YAWMM
set /a CURRENTDL=%CURRENTDL%+1
Support\sfk echo -spat \x20 \x20 \x20 [Magenta]%CURRENTDL% von %DLTOTAL%:  PriiLoader German Mod
start %NUSLmin%/wait support\wget -t 3 "http://priiloader.baduncles.de/priiloader_de_apps.zip"
start %NUSLmin%/wait Support\7za x -aoa priiloader_de_apps.zip -otemp -r >NUL
if not exist "%DRIVE%\Apps\PriiLoader_DE" mkdir "%DRIVE%\Apps\PriiLoader_DE"
if exist "temp\apps\PriiLoader DE\boot.dol" move /Y "temp\apps\PriiLoader DE\boot.dol" "%DRIVE%\Apps\PriiLoader_DE"
if exist "temp\apps\PriiLoader DE\icon.png" move /Y "temp\apps\PriiLoader DE\icon.png" "%DRIVE%\Apps\PriiLoader_DE"
if exist "temp\apps\PriiLoader DE\meta.xml" move /Y "temp\apps\PriiLoader DE\meta.xml" "%DRIVE%\Apps\PriiLoader_DE"
if exist "temp\apps\PriiLoader DE\priiloader" move "temp\apps\PriiLoader DE\priiloader" "%DRIVE%"
if exist priiloader_de_apps.zip del priiloader_de_apps.zip
if exist "temp\apps" rmdir /s /q ""temp\apps"
echo.
support\sfk echo [Green]Download abgeschlossen!
echo.
:YAWMM
if /i "%YAWMM%" EQU "*" set /a CURRENTDL=%CURRENTDL%+1
if /i "%YAWMM%" EQU "*" Support\sfk echo -spat \x20 \x20 \x20 [Magenta]%CURRENTDL% von %DLTOTAL%:  YAWMM
if /i "%YAWMM%" EQU "*" start %NUSLmin%/wait support\wget -t 3 "http://consolearea.square7.de/down/nusl/files/YAWMM.zip"
if /i "%YAWMM%" EQU "*" start %NUSLmin%/wait Support\7za x -aoa YAWMM.zip -otemp -r >NUL
if /i "%YAWMM%" EQU "*" if not exist "%DRIVE%\Apps\YAWMM" mkdir %DRIVE%\Apps\YAWMM
if /i "%YAWMM%" EQU "*" if exist temp\YAWMM\boot.dol move /Y temp\YAWMM\boot.dol "%DRIVE%\Apps\YAWMM"
if /i "%YAWMM%" EQU "*" if exist temp\YAWMM\icon.png move /Y temp\YAWMM\icon.png "%DRIVE%\Apps\YAWMM"
if /i "%YAWMM%" EQU "*" if exist temp\YAWMM\meta.xml move /Y temp\YAWMM\meta.xml "%DRIVE%\Apps\YAWMM"
if /i "%YAWMM%" EQU "*" if exist temp\YAWMM rmdir /s /q TEMP\YAWMM
if /i "%YAWMM%" EQU "*" if exist YAWMM.zip del YAWMM.zip
if /i "%YAWMM%" EQU "*" echo.
if /i "%YAWMM%" EQU "*" Support\sfk echo -spat \x20 \x20 \x20 [Green] Download abgeschlossen!
if /i "%YAWMM%" EQU "*" echo.
if /i "%YAWMM%" EQU "*" echo.
:BC
if /i "%BC%" NEQ "*" goto:NEXT
set /a CURRENTDL=%CURRENTDL%+1
if /i "%BC%" EQU "*" set md5=d1593a77e24ecc95af2b393abe5d92f0
if /i "%BC%" EQU "*" set wadname=BCv6
if /i "%BC%" EQU "*" set code1=0000000100000100
if /i "%BC%" EQU "*" Support\sfk echo -spat \x20 \x20 \x20 [Magenta]%CURRENTDL% von %DLTOTAL%:  BC
if /i "%BC%" EQU "*" echo.

::----if exist and fails md5 check, delete and redownload----
if not exist %Drive%\WAD\%wadname%.wad goto:nocheckexisting
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passBC

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:pass

:failBC
echo.
support\sfk echo [Yellow] Diese Datei existiert bereits, hat aber den MD5 Test nicht bestanden
support\sfk echo [Yellow] Die aktuelle Version der Datei wird gel?scht und die Datei wird erneut gedownloadet
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
set /a CURRENTDL=%CURRENTDL%-1 >NUL
goto:BC

:passBC
support\sfk echo [Green]Diese Datei existiert bereits und hat den MD5 Test bestanden! ?berspringe Download...
echo.
set alreadyexists=yes
goto:NEXT


:nocheckexisting
if /i "%BC%" EQU "*"  echo     Wenn NUSL sehr lange stillsteht, drcke "C", w?hrend du "Ctrl" h?lst
if /i "%BC%" EQU "*" echo     dann drcke  "N", dann "Enter" (Also: Ctrl+C = N = Enter)
if /i "%BC%" EQU "*" echo.
if /i "%BC%" EQU "*" Support\nusd 0000000100000100 6 packwad
if /i "%BC%" EQU "*" Rename Support\0000000100000100\0000000100000100.wad BCv6.wad
if /i "%BC%" EQU "*" if not exist %DRIVE%\wad mkdir %DRIVE%\wad
if /i "%BC%" EQU "*" move /y Support\0000000100000100\BCv6.wad %DRIVE%\wad
if /i "%BC%" EQU "*" rmdir /s /q Support\0000000100000100
if /i "%BC%" EQU "*" echo.
if /i "%BC%" EQU "*" echo.

::----check md5 after it downloaded----
if not exist %Drive%\WAD\%wadname%.wad goto:nocheckexisting
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passBC2

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:passBC2

:failBC2
echo.
support\sfk echo [Yellow] Die Datei hat den MD5 Test nicht bestanden
support\sfk echo [Yellow] Die aktuelle Version der Datei wird gel?scht und die Datei wird erneut gedownloadet
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
goto:BCredownload2

:passBC2
support\sfk echo [Green]Download abgeschlossen!
echo.
set alreadyexists=yes
goto:NEXT

:BCredownload2

if /i "%BC%" EQU "*" Support\nusd 0000000100000100 6 packwad
if /i "%BC%" EQU "*" Rename Support\0000000100000100\0000000100000100.wad BCv6.wad
if /i "%BC%" EQU "*" if not exist %DRIVE%\wad mkdir %DRIVE%\wad
if /i "%BC%" EQU "*" move /y Support\0000000100000100\BCv6.wad %DRIVE%\wad
if /i "%BC%" EQU "*" rmdir /s /q Support\0000000100000100
if /i "%BC%" EQU "*" echo.
if /i "%BC%" EQU "*" echo.

::----check md5 after it second downloaded----
if not exist %Drive%\WAD\%wadname%.wad goto:nocheckexisting
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passBC3

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:pass

:failBC3
echo.
support\sfk echo [Magenta] Diese Datei ist zu oft durch den MD5 Test gefallen. ?berspringe Download.
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
goto:NEXT

:passBC3
support\sfk echo [Green]Download abgeschlossen!
echo.
set alreadyexists=yes
goto:NEXT

:NEXT
:Boot2


if /i "%boot2%" NEQ "*" goto:NEXTtwo
set /a CURRENTDL=%CURRENTDL%+1
if /i "%boot2%" EQU "*" set md5=2a7cb0d37ea39be1c7161a0c5acd3026
if /i "%boot2%" EQU "*" set wadname=Boot2v4
if /i "%boot2%" EQU "*" set code1=0000000100000001
if /i "%boot2%" EQU "*" Support\sfk echo -spat \x20 \x20 \x20 [Magenta]%CURRENTDL% von %DLTOTAL%:  Boot2
if /i "%boot2%" EQU "*" echo.

::----if exist and fails md5 check, delete and redownload----
if not exist "%Drive%\WAD\%wadname%.wad" goto:nocheckexistingboot
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passboot2

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:pass

:failboot2
echo.
support\sfk echo [Yellow] Diese Datei existiert bereits, hat aber den MD5 Test nicht bestanden
support\sfk echo [Yellow] Die aktuelle Version der Datei wird gel?scht und die Datei wird erneut gedownloadet
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
set /a CURRENTDL=%CURRENTDL%-1 >NUL
goto:Boot2

:passboot2
support\sfk echo [Green]Diese Datei existiert bereits und hat den MD5 Test bestanden! ?berspringe Download...
echo.
set alreadyexists=yes
goto:NEXTtwo

:nocheckexistingboot

if /i "%boot2%" EQU "*" echo Boot2 is a critical part of the Wii boot sequence.
@ping 127.0.0.1 -n 3 -w 1000> nul
if /i "%boot2%" EQU "*" echo The only safe way to mess with boot2 is to install BootMii if possible.
if /i "%boot2%" EQU "*" echo.
if /i "%boot2%" EQU "*" echo.
if /i "%boot2%" EQU "*"  echo     Wenn NUSL sehr lange stillsteht, drcke "C", w?hrend du "Ctrl" h?lst
if /i "%boot2%" EQU "*" echo     dann drcke  "N", dann "Enter" (Also: Ctrl+C = N = Enter)
if /i "%boot2%" EQU "*" echo.
if /i "%boot2%" EQU "*" Support\nusd 0000000100000001 4 packwad
if /i "%boot2%" EQU "*" if not exist %DRIVE%\wad mkdir %DRIVE%\wad
if /i "%boot2%" EQU "*" RENAME Support\0000000100000001\0000000100000001.wad Boot2v4.wad
if /i "%boot2%" EQU "*" Move /y Support\0000000100000001\Boot2v4.wad %DRIVE%\wad
if /i "%boot2%" EQU "*" rmdir /s /q Support\0000000100000001
if /i "%boot2%" EQU "*" echo.
if /i "%boot2%" EQU "*" echo.

::----check md5 after it downloaded----
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passboot21

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:pass

:failboot21
echo.
support\sfk echo [Yellow] Die Datei hat den MD5 Test nicht bestanden
support\sfk echo [Yellow] Die aktuelle Version der Datei wird gel?scht und die Datei wird erneut gedownloadet
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
goto:Boot2redownload

:passboot21
support\sfk echo [Green]Download abgeschlossen!
echo.
set alreadyexists=yes
goto:NEXTtwo

:Boot2redownload
if /i "%boot2%" EQU "*" Support\nusd 0000000100000001 4 packwad
if /i "%boot2%" EQU "*" if not exist %DRIVE%\wad mkdir %DRIVE%\wad
if /i "%boot2%" EQU "*" RENAME Support\0000000100000001\0000000100000001.wad Boot2v4.wad
if /i "%boot2%" EQU "*" Move /y Support\0000000100000001\Boot2v4.wad %DRIVE%\wad
if /i "%boot2%" EQU "*" rmdir /s /q Support\0000000100000001

::----check md5 after it second downloaded----
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passboot23

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:pass

:failboot23
echo.
support\sfk echo [Magenta] Diese Datei ist zu oft durch den MD5 Test gefallen. ?berspringe Download.
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
goto:NEXTtwo

:passboot23
support\sfk echo [Green]Download abgeschlossen!
echo.
set alreadyexists=yes
goto:NEXTtwo



















:NEXTtwo
:EULA
if /i "%EULA%" EQU "*" set md5=e835877a6460beeb0d6756c43a800465
if /i "%EULA%" EQU "*" set wadname=EULAv3
if /i "%EULA%" EQU "*" set code1=0001000848414B50
if /i "%EULA%" NEQ "*" goto:NEXTthree
set /a CURRENTDL=%CURRENTDL%+1
if /i "%EULA%" EQU "*" Support\sfk echo -spat \x20 \x20 \x20 [Magenta]%CURRENTDL% von %DLTOTAL%:  EULA
if /i "%EULA%" EQU "*" echo.

::----if exist and fails md5 check, delete and redownload----
if not exist %Drive%\WAD\%wadname%.wad goto:nocheckexistingEULA
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passEULA

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:pass

:failEULA
echo.
support\sfk echo [Yellow] Diese Datei existiert bereits, hat aber den MD5 Test nicht bestanden
support\sfk echo [Yellow] Die aktuelle Version der Datei wird gel?scht und die Datei wird erneut gedownloadet
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
set /a CURRENTDL=%CURRENTDL%-1 >NUL
goto:EULA

:passEULA
support\sfk echo [Green]Diese Datei existiert bereits und hat den MD5 Test bestanden! ?berspringe Download...
echo.
set alreadyexists=yes
goto:NEXTthree

:nocheckexistingEULA

if /i "%EULA%" EQU "*" echo This is the 'channel' for EULA acceptance.
if /i "%EULA%" EQU "*" echo It is wise not to mess with it!
if /i "%EULA%" EQU "*" echo.
if /i "%EULA%" EQU "*"  echo     Wenn NUSL sehr lange stillsteht, drcke "C", w?hrend du "Ctrl" h?lst
if /i "%EULA%" EQU "*" echo     dann drcke  "N", dann "Enter" (Also: Ctrl+C = N = Enter)
if /i "%EULA%" EQU "*" echo.
if /i "%EULA%" EQU "*" Support\nusd 0001000848414B50 3 packwad
if /i "%EULA%" EQU "*" if not exist %DRIVE%\wad mkdir %DRIVE%\wad
if /i "%EULA%" EQU "*" RENAME Support\0001000848414B50\0001000848414B50.wad EULAv3.wad
if /i "%EULA%" EQU "*" Move /y Support\0001000848414B50\EULAv3.wad %DRIVE%\wad
if /i "%EULA%" EQU "*" rmdir /s /q Support\0001000848414B50
if /i "%EULA%" EQU "*" echo.
if /i "%EULA%" EQU "*" echo.

::----check md5 after it downloaded----
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passEULA2

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:pass

:failEULA2
echo.
support\sfk echo [Yellow] Die Datei hat den MD5 Test nicht bestanden
support\sfk echo [Yellow] Die aktuelle Version der Datei wird gel?scht und die Datei wird erneut gedownloadet
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
goto:EULAredownload

:passEULA2
support\sfk echo [Green]Download abgeschlossen!
echo.
set alreadyexists=yes
goto:NEXTthree


:EULAredownload
if /i "%EULA%" EQU "*" Support\nusd 0001000848414B50 3 packwad
if /i "%EULA%" EQU "*" if not exist %DRIVE%\wad mkdir %DRIVE%\wad
if /i "%EULA%" EQU "*" RENAME Support\0001000848414B50\0001000848414B50.wad EULAv3.wad
if /i "%EULA%" EQU "*" Move /y Support\0001000848414B50\EULAv3.wad %DRIVE%\wad
if /i "%EULA%" EQU "*" rmdir /s /q Support\0001000848414B50
if /i "%EULA%" EQU "*" Support\sfk echo -spat \x20 \x20 \x20 [Green] Download 


::----check md5 after it second downloaded----
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passEULA3

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:pass

:failEULA3
echo.
support\sfk echo [Magenta] Diese Datei ist zu oft durch den MD5 Test gefallen. ?berspringe Download.
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
goto:NEXTthree

:passEULA3
support\sfk echo [Green]Download abgeschlossen!
echo.
set alreadyexists=yes
goto:NEXTthree








:NEXTthree
:Mii


if /i "%Mii%" EQU "*" set md5=5f03c5970ecf064bc520f4a11a0d3a34
if /i "%Mii%" EQU "*" set wadname=Mii-Kanalv6
if /i "%Mii%" EQU "*" set code1=0001000248414341
if /i "%Mii%" NEQ "*" goto:NEXTfour
set /a CURRENTDL=%CURRENTDL%+1
if /i "%Mii%" EQU "*" Support\sfk echo -spat \x20 \x20 \x20 [Magenta]%CURRENTDL% von %DLTOTAL%:  Mii-Kanal
if /i "%Mii%" EQU "*" echo.

::----if exist and fails md5 check, delete and redownload----
if not exist %Drive%\WAD\%wadname%.wad goto:nocheckexistingmii
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passMii

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:pass

:failMii
echo.
support\sfk echo [Yellow] Diese Datei existiert bereits, hat aber den MD5 Test nicht bestanden
support\sfk echo [Yellow] Die aktuelle Version der Datei wird gel?scht und die Datei wird erneut gedownloadet
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
set /a CURRENTDL=%CURRENTDL%-1 >NUL
goto:Mii

:passMii
support\sfk echo [Green]Diese Datei existiert bereits und hat den MD5 Test bestanden! ?berspringe Download...
echo.
set alreadyexists=yes
goto:NEXTfour


:nocheckexistingmii
if /i "%Mii%" EQU "*"  echo     Wenn NUSL sehr lange stillsteht, drcke "C", w?hrend du "Ctrl" h?lst
if /i "%Mii%" EQU "*" echo     dann drcke  "N", dann "Enter" (Also: Ctrl+C = N = Enter)
if /i "%Mii%" EQU "*" echo.
if /i "%Mii%" EQU "*" Support\nusd 0001000248414341 6 packwad
if /i "%Mii%" EQU "*" if not exist %DRIVE%\wad mkdir %DRIVE%\wad
if /i "%Mii%" EQU "*" RENAME Support\0001000248414341\0001000248414341.wad Mii-Kanalv6.wad
if /i "%Mii%" EQU "*" Move /y Support\0001000248414341\Mii-Kanalv6.wad %DRIVE%\wad
if /i "%Mii%" EQU "*" rmdir /s /q Support\0001000248414341
if /i "%Mii%" EQU "*" echo.
if /i "%Mii%" EQU "*" echo.


::----check md5 after it downloaded----
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passMii2

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:pass

:failMii2
echo.
support\sfk echo [Yellow] Die Datei hat den MD5 Test nicht bestanden
support\sfk echo [Yellow] Die aktuelle Version der Datei wird gel?scht und die Datei wird erneut gedownloadet
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
goto:Miiredownload

:passMii2
support\sfk echo [Green]Download abgeschlossen!
echo.
set alreadyexists=yes
goto:NEXTfour



:Miiredownload
if /i "%Mii%" EQU "*" Support\nusd 0001000248414341 6 packwad
if /i "%Mii%" EQU "*" if not exist %DRIVE%\wad mkdir %DRIVE%\wad
if /i "%Mii%" EQU "*" RENAME Support\0001000248414341\0001000248414341.wad Mii-Kanalv6.wad
if /i "%Mii%" EQU "*" Move /y Support\0001000248414341\Mii-Kanalv6.wad %DRIVE%\wad
if /i "%Mii%" EQU "*" rmdir /s /q Support\0001000248414341


::----check md5 after it second downloaded----
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passMii3

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:pass

:failMii3
echo.
support\sfk echo [Magenta] Diese Datei ist zu oft durch den MD5 Test gefallen. ?berspringe Download.
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
goto:NEXTfour

:passMii3
support\sfk echo [Green]Download abgeschlossen!
echo.
set alreadyexists=yes
goto:NEXTfour













:NEXTfour
:MIOS

if /i "%M%" EQU "*" set md5=851c27dae82bc1c758be07fa964d17cb
if /i "%M%" EQU "*" set wadname=MIOSv10
if /i "%M%" EQU "*" set code1=0000000100000101
if /i "%M%" NEQ "*" goto:NEXTfive
set /a CURRENTDL=%CURRENTDL%+1
if /i "%M%" EQU "*" Support\sfk echo -spat \x20 \x20 \x20 [Magenta]%CURRENTDL% von %DLTOTAL%:  MIOS
if /i "%M%" EQU "*" echo.

::----if exist and fails md5 check, delete and redownload----
if not exist %Drive%\WAD\%wadname%.wad goto:nocheckexistingmios
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passMIOS

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:pass

:failMIOS
echo.
support\sfk echo [Yellow] Diese Datei existiert bereits, hat aber den MD5 Test nicht bestanden
support\sfk echo [Yellow] Die aktuelle Version der Datei wird gel?scht und die Datei wird erneut gedownloadet
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
set /a CURRENTDL=%CURRENTDL%-1 >NUL
goto:MIOS

:passMIOS
support\sfk echo [Green]Diese Datei existiert bereits und hat den MD5 Test bestanden! ?berspringe Download...
echo.
set alreadyexists=yes
goto:NEXTfive




:nocheckexistingmios

if /i "%M%" EQU "*"  echo     Wenn NUSL sehr lange stillsteht, drcke "C", w?hrend du "Ctrl" h?lst
if /i "%M%" EQU "*" echo     dann drcke  "N", dann "Enter" (Also: Ctrl+C = N = Enter)
if /i "%M%" EQU "*" echo.
if /i "%M%" EQU "*" Support\nusd 0000000100000101 10 packwad
if /i "%M%" EQU "*" if not exist %DRIVE%\wad mkdir %DRIVE%\wad
if /i "%M%" EQU "*" RENAME Support\0000000100000101\0000000100000101.wad MIOSv10.wad
if /i "%M%" EQU "*" Move /y Support\0000000100000101\MIOSv10.wad %DRIVE%\wad
if /i "%M%" EQU "*" rmdir /s /q Support\0000000100000101
if /i "%M%" EQU "*" echo.
if /i "%M%" EQU "*" echo.


::----check md5 after it downloaded----
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passMIOS2

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:MIOS2

:failMIOS2
echo.
support\sfk echo [Yellow] Die Datei hat den MD5 Test nicht bestanden
support\sfk echo [Yellow] Die aktuelle Version der Datei wird gel?scht und die Datei wird erneut gedownloadet
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
goto:MIOSredownload

:passMIOS2
support\sfk echo [Green]Download abgeschlossen!
echo.
set alreadyexists=yes
goto:NEXTfive


:MIOSredownload
if /i "%M%" EQU "*" Support\nusd 0000000100000101 10 packwad
if /i "%M%" EQU "*" if not exist %DRIVE%\wad mkdir %DRIVE%\wad
if /i "%M%" EQU "*" RENAME Support\0000000100000101\0000000100000101.wad MIOSv10.wad
if /i "%M%" EQU "*" Move /y Support\0000000100000101\MIOSv10.wad %DRIVE%\wad
if /i "%M%" EQU "*" rmdir /s /q Support\0000000100000101


::----check md5 after it second downloaded---
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passMIOS3

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:pass

:failMIOS3
echo.
support\sfk echo [Magenta] Diese Datei ist zu oft durch den MD5 Test gefallen. ?berspringe Download.
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
goto:NEXTfive

:passMIOS3
support\sfk echo [Green]Download abgeschlossen!
echo.
set alreadyexists=yes
goto:NEXTfive









:NEXTfive
:News

if /i "%N%" EQU "*" set md5=11c713ff825f918bfe2c1065e5ab9827
if /i "%N%" EQU "*" set wadname=Newskanalv7
if /i "%N%" EQU "*" set code1=0001000248414750
if /i "%N%" NEQ "*" goto:NEXTsix
set /a CURRENTDL=%CURRENTDL%+1
if /i "%N%" EQU "*" Support\sfk echo -spat \x20 \x20 \x20 [Magenta]%CURRENTDL% von %DLTOTAL%:  Nachrichtenkanal
if /i "%N%" EQU "*" echo.

::----if exist and fails md5 check, delete and redownload----
if not exist %Drive%\WAD\%wadname%.wad goto:nocheckexistingnews
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passNews

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:pass

:failNews
echo.
support\sfk echo [Yellow] Diese Datei existiert bereits, hat aber den MD5 Test nicht bestanden
support\sfk echo [Yellow] Die aktuelle Version der Datei wird gel?scht und die Datei wird erneut gedownloadet
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
set /a CURRENTDL=%CURRENTDL%-1 >NUL
goto:News

:passNews
support\sfk echo [Green]Diese Datei existiert bereits und hat den MD5 Test bestanden! ?berspringe Download...
echo.
set alreadyexists=yes
goto:NEXTsix


:nocheckexistingnews
if /i "%N%" EQU "*"  echo     Wenn NUSL sehr lange stillsteht, drcke "C", w?hrend du "Ctrl" h?lst
if /i "%N%" EQU "*" echo     dann drcke  "N", dann "Enter" (Also: Ctrl+C = N = Enter)
if /i "%N%" EQU "*" echo.
if /i "%N%" EQU "*" Support\nusd 0001000248414750 7 packwad
if /i "%N%" EQU "*" if not exist %DRIVE%\wad mkdir %DRIVE%\wad
if /i "%N%" EQU "*" RENAME Support\0001000248414750\0001000248414750.wad Newskanalv7.wad
if /i "%N%" EQU "*" Move /y Support\0001000248414750\Newskanalv7.wad %DRIVE%\wad
if /i "%N%" EQU "*" rmdir /s /q Support\0001000248414750
if /i "%N%" EQU "*" echo.
if /i "%N%" EQU "*" echo.


::----check md5 after it downloaded----
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passNews2

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:News2

:failNews2
echo.
support\sfk echo [Yellow] Die Datei hat den MD5 Test nicht bestanden
support\sfk echo [Yellow] Die aktuelle Version der Datei wird gel?scht und die Datei wird erneut gedownloadet
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
goto:Newsredownload

:passNews2
support\sfk echo [Green]Download abgeschlossen!
echo.
set alreadyexists=yes
goto:NEXTsix



:Newsredownload
if /i "%N%" EQU "*" Support\nusd 0001000248414750 7 packwad
if /i "%N%" EQU "*" if not exist %DRIVE%\wad mkdir %DRIVE%\wad
if /i "%N%" EQU "*" RENAME Support\0001000248414750\0001000248414750.wad Newskanalv7.wad
if /i "%N%" EQU "*" Move /y Support\0001000248414750\Newskanalv7.wad %DRIVE%\wad
if /i "%N%" EQU "*" rmdir /s /q Support\0001000248414750

::----check md5 after it second downloaded----
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passNews3

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:pass

:failNews3
echo.
support\sfk echo [Magenta] Diese Datei ist zu oft durch den MD5 Test gefallen. ?berspringe Download.
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
goto:NEXTsix

:passNews3
support\sfk echo [Green]Download abgeschlossen!
echo.
set alreadyexists=yes
goto:NEXTsix









:NEXTsix
:opera

if /i "%O%" EQU "*" set md5=da20d4d1aedcd4dfa281423f2152ef6e
if /i "%O%" EQU "*" set wadname=Opera_Kanal
if /i "%O%" EQU "*" set code1=0001000148414450
if /i "%O%" NEQ "*" goto:NEXTseven
set /a CURRENTDL=%CURRENTDL%+1
if /i "%O%" EQU "*" Support\sfk echo -spat \x20 \x20 \x20 [Magenta]%CURRENTDL% von %DLTOTAL%:  Opera Internet Kanal
if /i "%O%" EQU "*" echo.

::----if exist and fails md5 check, delete and redownload----
if not exist %Drive%\WAD\%wadname%.wad goto:nocheckexistingopera
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passOpera

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:passopera

:failopera
echo.
support\sfk echo [Yellow] Diese Datei existiert bereits, hat aber den MD5 Test nicht bestanden
support\sfk echo [Yellow] Die aktuelle Version der Datei wird gel?scht und die Datei wird erneut gedownloadet
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
set /a CURRENTDL=%CURRENTDL%-1 >NUL
goto:Opera

:passopera
support\sfk echo [Green]Diese Datei existiert bereits und hat den MD5 Test bestanden! ?berspringe Download...
echo.
set alreadyexists=yes
goto:NEXTseven



:nocheckexistingopera
if /i "%O%" EQU "*"  echo     Wenn NUSL sehr lange stillsteht, drcke "C", w?hrend du "Ctrl" h?lst
if /i "%O%" EQU "*" echo     dann drcke  "N", dann "Enter" (Also: Ctrl+C = N = Enter)
if /i "%O%" EQU "*" echo.
if /i "%O%" EQU "*" Support\nusd 0001000148414450 1024 packwad
if /i "%O%" EQU "*" if not exist %DRIVE%\wad mkdir %DRIVE%\wad
if /i "%O%" EQU "*" RENAME Support\0001000148414450\0001000148414450.wad Opera_Kanal.wad
if /i "%O%" EQU "*" Move /y Support\0001000148414450\Opera_Kanal.wad %DRIVE%\wad
if /i "%O%" EQU "*" rmdir /s /q Support\0001000148414450
if /i "%O%" EQU "*" echo.
if /i "%O%" EQU "*" echo.


::----check md5 after it downloaded----
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passOpera2
::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:PassOpera2

:failOpera2
echo.
support\sfk echo [Yellow] Die Datei hat den MD5 Test nicht bestanden
support\sfk echo [Yellow] Die aktuelle Version der Datei wird gel?scht und die Datei wird erneut gedownloadet
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
goto:Operaredownload

:passOpera2
support\sfk echo [Green]Download abgeschlossen!
echo.
set alreadyexists=yes
goto:NEXTseven

:Operaredownload
if /i "%O%" EQU "*" Support\nusd 0001000148414450 1024 packwad
if /i "%O%" EQU "*" if not exist %DRIVE%\wad mkdir %DRIVE%\wad
if /i "%O%" EQU "*" RENAME Support\0001000148414450\0001000148414450.wad Opera_Kanal.wad
if /i "%O%" EQU "*" Move /y Support\0001000148414450\Opera_Kanal.wad %DRIVE%\wad
if /i "%O%" EQU "*" rmdir /s /q Support\0001000148414450


::----check md5 after it second downloaded----
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passOpera3

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:pass

:failOpera3
echo.
support\sfk echo [Magenta] Diese Datei ist zu oft durch den MD5 Test gefallen. ?berspringe Download.
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
goto:NEXTseven

:passOpera3
support\sfk echo [Green]Download abgeschlossen!
echo.
set alreadyexists=yes
goto:NEXTseven










:NEXTseven
:Foto

if /i "%F%" EQU "*" set md5=574e6939fe6b0f0bf11b10e6e75ad192
if /i "%F%" EQU "*" set wadname=Fotokanalv2
if /i "%F%" EQU "*" set code1=0001000248414141
if /i "%F%" NEQ "*" goto:NEXTeight
set /a CURRENTDL=%CURRENTDL%+1
if /i "%F%" EQU "*" Support\sfk echo -spat \x20 \x20 \x20 [Magenta]%CURRENTDL% von %DLTOTAL%:  Fotokanal
if /i "%F%" EQU "*" echo.


::----if exist and fails md5 check, delete and redownload----
if not exist %Drive%\WAD\%wadname%.wad goto:nocheckexistingFotok
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passFotok

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:passFotok

:failFotok
echo.
support\sfk echo [Yellow] Diese Datei existiert bereits, hat aber den MD5 Test nicht bestanden
support\sfk echo [Yellow] Die aktuelle Version der Datei wird gel?scht und die Datei wird erneut gedownloadet
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
set /a CURRENTDL=%CURRENTDL%-1 >NUL
goto:Foto

:passFotok
support\sfk echo [Green]Diese Datei existiert bereits und hat den MD5 Test bestanden! ?berspringe Download...
echo.
set alreadyexists=yes
goto:NEXTeight


:nocheckexistingFotok
if /i "%F%" EQU "*"  echo     Wenn NUSL sehr lange stillsteht, drcke "C", w?hrend du "Ctrl" h?lst
if /i "%F%" EQU "*" echo     dann drcke  "N", dann "Enter" (Also: Ctrl+C = N = Enter)
if /i "%F%" EQU "*" echo.
if /i "%F%" EQU "*" Support\nusd 0001000248414141 2 packwad
if /i "%F%" EQU "*" if not exist %DRIVE%\wad mkdir %DRIVE%\wad
if /i "%F%" EQU "*" RENAME Support\0001000248414141\0001000248414141.wad Fotokanalv2.wad
if /i "%F%" EQU "*" Move /y Support\0001000248414141\Fotokanalv2.wad %DRIVE%\wad
if /i "%F%" EQU "*" rmdir /s /q Support\0001000248414141
if /i "%F%" EQU "*" echo.
if /i "%F%" EQU "*" echo.


::----check md5 after it downloaded----
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passFotok2
::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:PassFotok2

:failFotok2
echo.
support\sfk echo [Yellow] Die Datei hat den MD5 Test nicht bestanden
support\sfk echo [Yellow] Die aktuelle Version der Datei wird gel?scht und die Datei wird erneut gedownloadet
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
goto:Fotokredownload

:passFotok2
support\sfk echo [Green]Download abgeschlossen!
echo.
set alreadyexists=yes
goto:NEXTeight

:Fotokredownload
if /i "%F%" EQU "*" Support\nusd 0001000248414141 2 packwad
if /i "%F%" EQU "*" if not exist %DRIVE%\wad mkdir %DRIVE%\wad
if /i "%F%" EQU "*" RENAME Support\0001000248414141\0001000248414141.wad Fotokanalv2.wad
if /i "%F%" EQU "*" Move /y Support\0001000248414141\Fotokanalv2.wad %DRIVE%\wad
if /i "%F%" EQU "*" rmdir /s /q Support\0001000248414141


::----check md5 after it second downloaded----
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passFotok3

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:pass

:failFotok3
echo.
support\sfk echo [Magenta] Diese Datei ist zu oft durch den MD5 Test gefallen. ?berspringe Download.
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
goto:NEXTeight

:passFotok3
support\sfk echo [Green]Download abgeschlossen!
echo.
set alreadyexists=yes
goto:NEXTeight








:NEXTeight
:Foto1

if /i "%F1%" EQU "*" set md5=ba88843d7d5d8090c6cce2c822965299
if /i "%F1%" EQU "*" set wadname=Fotokanal1.1v3.wad
if /i "%F1%" EQU "*" set code1=0001000248415941
if /i "%F1%" NEQ "*" goto:NEXTten
set /a CURRENTDL=%CURRENTDL%+1
if /i "%F1%" EQU "*" Support\sfk echo -spat \x20 \x20 \x20 [Magenta]%CURRENTDL% von %DLTOTAL%:  Fotokanal 1.1
if /i "%F1%" EQU "*" echo.

::----if exist and fails md5 check, delete and redownload----
if not exist %Drive%\WAD\Fotokanal1.1v3.wad goto:nocheckexistingFoto1
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\Fotokanal1.1v3.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passFoto

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\Fotokanal1.1v3.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:passFoto

:failFoto
echo.
support\sfk echo [Yellow] Diese Datei existiert bereits, hat aber den MD5 Test nicht bestanden
support\sfk echo [Yellow] Die aktuelle Version der Datei wird gel?scht und die Datei wird erneut gedownloadet
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
set /a CURRENTDL=%CURRENTDL%-1 >NUL
goto:Foto1

:passFoto
support\sfk echo [Green]Diese Datei existiert bereits und hat den MD5 Test bestanden! ?berspringe Download...
echo.
set alreadyexists=yes
goto:NEXTten


:nocheckexistingFoto1
if /i "%F1%" EQU "*"  echo     Wenn NUSL sehr lange stillsteht, drcke "C", w?hrend du "Ctrl" h?lst
if /i "%F1%" EQU "*" echo     dann drcke  "N", dann "Enter" (Also: Ctrl+C = N = Enter)
if /i "%F1%" EQU "*" echo.
if /i "%F1%" EQU "*" Support\nusd 0001000248415941 3 packwad
if /i "%F1%" EQU "*" if not exist %DRIVE%\wad mkdir %DRIVE%\wad
if /i "%F1%" EQU "*" RENAME Support\0001000248415941\0001000248415941.wad Fotokanal1.1v3.wad
if /i "%F1%" EQU "*" Move /y Support\0001000248415941\Fotokanal1.1v3.wad %DRIVE%\wad
if /i "%F1%" EQU "*" rmdir /s /q Support\0001000248415941
if /i "%F1%" EQU "*" echo.
if /i "%F1%" EQU "*" echo.


::----check md5 after it downloaded----
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\Fotokanal1.1v3.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passFoto2
::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\Fotokanal1.1v3.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:PassFotok2

:failFoto2
echo.
support\sfk echo [Yellow] Die Datei hat den MD5 Test nicht bestanden
support\sfk echo [Yellow] Die aktuelle Version der Datei wird gel?scht und die Datei wird erneut gedownloadet
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
goto:Fotoredownload

:passFoto2
support\sfk echo [Green]Download abgeschlossen!
echo.
set alreadyexists=yes
goto:NEXTten

:Fotoredownload
if /i "%F1%" EQU "*" Support\nusd 0001000248415941 3 packwad
if /i "%F1%" EQU "*" if not exist %DRIVE%\wad mkdir %DRIVE%\wad
if /i "%F1%" EQU "*" RENAME Support\0001000248415941\0001000248415941.wad Fotokanal1.1v3.wad
if /i "%F1%" EQU "*" Move /y Support\0001000248415941\Fotokanal1.1v3.wad %DRIVE%\wad
if /i "%F1%" EQU "*" rmdir /s /q Support\0001000248415941


::----check md5 after it second downloaded----
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\Fotokanal1.1v3.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passFoto3

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\Fotokanal1.1v3.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:pass

:failFoto3
echo.
support\sfk echo [Magenta] Diese Datei ist zu oft durch den MD5 Test gefallen. ?berspringe Download.
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
goto:NEXTten

:passFoto3
support\sfk echo [Green]Download abgeschlossen!
echo.
set alreadyexists=yes
goto:NEXTten












:NEXTten
:Shop

if /i "%S%" EQU "*" set md5=9eaa1e599829d59a724673349268ca60
if /i "%S%" EQU "*" set wadname=Shopv20
if /i "%S%" EQU "*" set code1=0001000248414241
if /i "%S%" NEQ "*" goto:NEXTeleven
set /a CURRENTDL=%CURRENTDL%+1
if /i "%S%" EQU "*" Support\sfk echo -spat \x20 \x20 \x20 [Magenta]%CURRENTDL% von %DLTOTAL%:  Wii-Shop Kanal
if /i "%S%" EQU "*" echo.

::----if exist and fails md5 check, delete and redownload----
if not exist %Drive%\WAD\%wadname%.wad goto:nocheckexistingShop
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passShop

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:passFoto

:failShop
echo.
support\sfk echo [Yellow] Diese Datei existiert bereits, hat aber den MD5 Test nicht bestanden
support\sfk echo [Yellow] Die aktuelle Version der Datei wird gel?scht und die Datei wird erneut gedownloadet
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
set /a CURRENTDL=%CURRENTDL%-1 >NUL
goto:Shop

:passShop
support\sfk echo [Green]Diese Datei existiert bereits und hat den MD5 Test bestanden! ?berspringe Download...
echo.
set alreadyexists=yes
goto:IOSsechsundfunfzig


:nocheckexistingShop
if /i "%S%" EQU "*"  echo     Wenn NUSL sehr lange stillsteht, drcke "C", w?hrend du "Ctrl" h?lst
if /i "%S%" EQU "*" echo     dann drcke  "N", dann "Enter" (Also: Ctrl+C = N = Enter)
if /i "%S%" EQU "*" echo.
if /i "%S%" EQU "*" Support\nusd 0001000248414241 20 packwad
if /i "%S%" EQU "*" if not exist %DRIVE%\wad mkdir %DRIVE%\wad
if /i "%S%" EQU "*" RENAME Support\0001000248414241\0001000248414241.wad Shopv20.wad
if /i "%S%" EQU "*" Move /y Support\0001000248414241\Shopv20.wad %DRIVE%\wad
if /i "%S%" EQU "*" rmdir /s /q Support\0001000248414241
if /i "%S%" EQU "*" echo.


::----check md5 after it downloaded----
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passShop2
::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:PassFotok2

:failShop2
echo.
support\sfk echo [Yellow] Die Datei hat den MD5 Test nicht bestanden
support\sfk echo [Yellow] Die aktuelle Version der Datei wird gel?scht und die Datei wird erneut gedownloadet
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
goto:Shopredownload

:passShop2
support\sfk echo [Green]Download abgeschlossen!
echo.
set alreadyexists=yes
goto:IOSsechsundfunfzig

:Shopredownload
if /i "%S%" EQU "*" Support\nusd 0001000248414241 20 packwad
if /i "%S%" EQU "*" if not exist %DRIVE%\wad mkdir %DRIVE%\wad
if /i "%S%" EQU "*" RENAME Support\0001000248414241\0001000248414241.wad Shopv20.wad
if /i "%S%" EQU "*" Move /y Support\0001000248414241\Shopv20.wad %DRIVE%\wad
if /i "%S%" EQU "*" rmdir /s /q Support\0001000248414241


::----check md5 after it second downloaded----
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passShop3

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:pass

:failShop3
echo.
support\sfk echo [Magenta] Diese Datei ist zu oft durch den MD5 Test gefallen. ?berspringe Download.
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
goto:IOSsechsundfunfzig

:passShop3
support\sfk echo [Green]Download abgeschlossen!
echo.
set alreadyexists=yes
goto:IOSsechsundfunfzig







:IOSsechsundfunfzig
if /i "%S%" EQU "*" set md5=1f6487d137fcd494cb2c35986ad6b490
if /i "%S%" EQU "*" set wadname=IOS56v5662
if /i "%S%" EQU "*" set code1=0000000100000038
if /i "%S%" EQU "*" Support\sfk echo -spat \x20 \x20 \x20 [Magenta]%CURRENTDL% von %DLTOTAL%:  IOS 56
if /i "%S%" EQU "*" echo.

::----if exist and fails md5 check, delete and redownload----
if not exist %Drive%\WAD\%wadname%.wad goto:nocheckexistingIOS
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passIOS

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:passFoto

:failIOS
echo.
support\sfk echo [Yellow] Diese Datei existiert bereits, hat aber den MD5 Test nicht bestanden
support\sfk echo [Yellow] Die aktuelle Version der Datei wird gel?scht und die Datei wird erneut gedownloadet
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
goto:IOSsechsundfunfzig

:passIOS
support\sfk echo [Green]Diese Datei existiert bereits und hat den MD5 Test bestanden! ?berspringe Download...
echo.
set alreadyexists=yes
goto:NEXTeleven


:nocheckexistingIOS
if /i "%S%" EQU "*" echo    Wenn NUSL sehr lange stillsteht, drcke "C", w?hrend du "Ctrl" h?lst
if /i "%S%" EQU "*" echo     dann drcke  "N", dann "Enter" (Also: Ctrl+C = N = Enter)
if /i "%S%" EQU "*" echo.
if /i "%S%" EQU "*" Support\nusd 0000000100000038 5662 packwad
if /i "%S%" EQU "*" RENAME Support\0000000100000038\0000000100000038.wad IOS56v5662.wad
if /i "%S%" EQU "*" Move /y Support\0000000100000038\IOS56v5662.wad %DRIVE%\wad
if /i "%S%" EQU "*" rmdir /s /q Support\0000000100000038
if /i "%S%" EQU "*" echo.
if /i "%S%" EQU "*" echo.


::----check md5 after it downloaded----
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passIOS2
::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:PassFotok2

:failIOS2
echo.
support\sfk echo [Yellow] Die Datei hat den MD5 Test nicht bestanden
support\sfk echo [Yellow] Die aktuelle Version der Datei wird gel?scht und die Datei wird erneut gedownloadet
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
goto:IOSredownload

:passIOS2
support\sfk echo [Green]Download abgeschlossen!
echo.
set alreadyexists=yes
goto:NEXTeleven

:IOSredownload
if /i "%S%" EQU "*" Support\nusd 0000000100000038 5662 packwad
if /i "%S%" EQU "*" RENAME Support\0000000100000038\0000000100000038.wad IOS56v5662.wad
if /i "%S%" EQU "*" Move /y Support\0000000100000038\IOS56v5662.wad %DRIVE%\wad
if /i "%S%" EQU "*" rmdir /s /q Support\0000000100000038


::----check md5 after it second downloaded----
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passIOS3

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:pass

:failIOS3
echo.
support\sfk echo [Magenta] Diese Datei ist zu oft durch den MD5 Test gefallen. ?berspringe Download.
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
goto:NEXTeleven

:passIOS3
support\sfk echo [Green]Download abgeschlossen!
echo.
set alreadyexists=yes
goto:NEXTeleven











:NEXTeleven
:Wetter

if /i "%W%" EQU "*" set md5=56dd7a5a34cf4ee4ac222eb6bd01c0d9
if /i "%W%" EQU "*" set wadname=Wetterkanalv7
if /i "%W%" EQU "*" set code1=0001000248414650
if /i "%W%" NEQ "*" goto:ENDOFSYSTEMDOWNLOAD
set /a CURRENTDL=%CURRENTDL%+1
if /i "%W%" EQU "*" Support\sfk echo -spat \x20 \x20 \x20 [Magenta]%CURRENTDL% von %DLTOTAL%:  Wetterkanal
if /i "%W%" EQU "*" echo.

::----if exist and fails md5 check, delete and redownload----
if not exist %Drive%\WAD\%wadname%.wad goto:nocheckexistingwetter
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passwetter

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:passFoto

:failwetter
echo.
support\sfk echo [Yellow] Diese Datei existiert bereits, hat aber den MD5 Test nicht bestanden
support\sfk echo [Yellow] Die aktuelle Version der Datei wird gel?scht und die Datei wird erneut gedownloadet
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
set /a CURRENTDL=%CURRENTDL%-1 >NUL
goto:Wetter

:passwetter
support\sfk echo [Green]Diese Datei existiert bereits und hat den MD5 Test bestanden! ?berspringe Download...
echo.
set alreadyexists=yes
goto:ENDOFSYSTEMDOWNLOAD


:nocheckexistingwetter
if /i "%W%" EQU "*" echo     Wenn NUSL sehr lange stillsteht, drcke "C", w?hrend du "Ctrl" h?lst
if /i "%W%" EQU "*" echo     dann drcke  "N", dann "Enter" (Also: Ctrl+C = N = Enter)
if /i "%W%" EQU "*" echo.
if /i "%W%" EQU "*" Support\nusd 0001000248414650 7 packwad
if /i "%W%" EQU "*" Rename Support\0001000248414650\0001000248414650.wad Wetterkanalv7.wad
if /i "%W%" EQU "*" if not exist %DRIVE%\wad mkdir %DRIVE%\wad
if /i "%W%" EQU "*" move /y Support\0001000248414650\Wetterkanalv7.wad "%DRIVE%\wad"
if /i "%W%" EQU "*" rmdir /s /q Support\nusd\0001000248414650
if /i "%W%" EQU "*" echo.
if /i "%W%" EQU "*" echo.


::----check md5 after it downloaded----
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passwetter2
::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:PassFotok2

:failwetter2
echo.
support\sfk echo [Yellow] Die Datei hat den MD5 Test nicht bestanden
support\sfk echo [Yellow] Die aktuelle Version der Datei wird gel?scht und die Datei wird erneut gedownloadet
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
goto:wetterredownload

:passwetter2
support\sfk echo [Green]Download abgeschlossen!
echo.
set alreadyexists=yes
goto:ENDOFSYSTEMDOWNLOAD

:wetterredownload
if /i "%W%" EQU "*" Support\nusd 0001000248414650 7 packwad
if /i "%W%" EQU "*" Rename Support\0001000248414650\0001000248414650.wad Wetterkanalv7.wad
if /i "%W%" EQU "*" if not exist %DRIVE%\wad mkdir %DRIVE%\wad
if /i "%W%" EQU "*" move /y Support\0001000248414650\Wetterkanalv7.wad "%DRIVE%\wad"
if /i "%W%" EQU "*" rmdir /s /q Support\nusd\0001000248414650



::----check md5 after it second downloaded----
set md5check=
set md5altcheck=
support\sfk md5 -quiet -verify %md5% "%Drive%"\WAD\%wadname%.wad
if errorlevel 1 set md5check=fail
IF "%md5check%"=="" set md5check=pass
if /i "%md5check%" NEQ "fail" goto:passwetter3

::support\sfk md5 -quiet -verify %md5alt% "%Drive%"\WAD\%wadname%.wad
::if errorlevel 1 set md5altcheck=fail
::IF "%md5altcheck%"=="" set md5altcheck=pass
::if /i "%md5altcheck%" NEQ "fail" goto:pass

:failwetter3
echo.
support\sfk echo [Magenta] Diese Datei ist zu oft durch den MD5 Test gefallen. ?berspringe Download.
echo.
SET /a retry=%retry%+1
SET /a attempt=%attempt%+1
del %Drive%\WAD\%wadname%.wad>nul
if exist Support\nusd\%code1% rd /s /q Support\nusd\%code1%
goto:ENDOFSYSTEMDOWNLOAD

:passwetter3
support\sfk echo [Green]Download abgeschlossen!
echo.
set alreadyexists=yes
goto:ENDOFSYSTEMDOWNLOAD







:ENDOFSYSTEMDOWNLOAD
echo.
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Green] Alle Downloads abgeschlossen!
echo.
echo				Drcke eine Taste!
pause >NUL
goto:Sysqueuezusammenfassung

::--------------------------------------Download Queue Zusammenfassung---------------------
:Sysqueuezusammenfassung
CLS
set md5=
set Sysque=
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo				Hier ist dein Log:
echo.
if exist Verify.log del Verify.log
Support\fvc -x -v custom.md5 >> Verify.log
echo. >> Verify.log
echo Diesen Log findest du im TEMP Ordner des NUSLs %Currentversion% >> Verify.log
move /y Verify.log Temp
type Temp\Verify.log
echo.
echo					Drcke eine Taste!
pause >NUL
:endofdlsy
if /i "%savetheme%" EQU "P+" set themesave=%DRIVE%\priiloader\systemmenu
if /i "%savetheme%" EQU "P+" goto:checktheme

if /i "%savetheme%" EQU "M+" set themesave=%DRIVE%\modthemes
if /i "%savetheme%" EQU "M+" goto:checktheme
set Verifysy=
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo				Was m?chtest du als n?chstes tun?
echo.
echo			V = Dateien verifizieren
echo.
echo			W = Download wiederholen
echo.
echo			O = Downloadordner ?ffnen
echo.
echo			Z = Zurck zum Start
echo.
set /p Verifysy=     Eingabe: 	

if /i "%Verifysy%" EQU "V" echo Dies kann vielleicht etwas dauern...
if /i "%Verifysy%" EQU "V" goto:verifysy

if /i "%Verifysy%" EQU "W" set CURRENTDL=0
if /i "%Verifysy%" EQU "W" goto:downloadqueue

if /i "%Verifysy%" EQU "O" start explorer.exe "%DRIVE%"
if /i "%Verifysy%" EQU "O" goto:endofdlsy

if /i "%Verifysy%" EQU "Z" goto:a


echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:endofdlsy

:Sy
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] Systemmen
echo.
echo.
set Sysmenu=
echo W?hle dein Systemmen! [Das Passende IOS wird mitgedownloadet!]
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
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
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
echo 4.3v2		IOS 80 rev 6944  [Wird nicht von NUSL untersttzt!] >> System.rtf
echo. >> System.rtf
echo Diese Liste findest du im TEMP Ordner des NUSLs! >> System.rtf
echo Erfolgreich!
move System.rtf temp\System.rtf
start temp\System.rtf
goto:Sy

:40
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] Wii Firmware 4.0E
echo.
echo.
echo Downloade Systemmen...
Support\nusd 0000000100000002 418 packwad
if exist Support\0000000100000002\0000000100000002.wad echo Download erfolgreich!
Rename Support\0000000100000002\0000000100000002.wad System_4.0.wad
if not exist %DRIVE% mkdir %DRIVE%
if not exist %DRIVE%\wad mkdir %DRIVE%\wad
move Support\0000000100000002\System_4.0.wad %DRIVE%\wad
rmdir /s /q Support\0000000100000002
echo.
echo Downloade IOS 60 rev 6174
Support\nusd 000000010000003C 6174 packwad
if exist Support\000000010000003C\000000010000003C.wad echo Download abgeschlossen!
rename Support\000000010000003C\000000010000003C.wad IOS60_sys_4.0_und_4.1.wad
move Support\000000010000003C\IOS60_sys_4.0_und_4.1.wad %DRIVE%\wad
rmdir /s /q Support\000000010000003C
goto :Sy

:41
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] Wii Firmware 4.1E
echo.
echo.
echo Downloade Systemmen...
Support\nusd 0000000100000002 450 packwad
if exist Support\0000000100000002\0000000100000002.wad echo Download erfolgreich!
Rename Support\0000000100000002\0000000100000002.wad System_4.1.wad
if not exist %DRIVE% mkdir %DRIVE%
if not exist %DRIVE%\wad mkdir %DRIVE%\wad
move Support\0000000100000002\System_4.1.wad %DRIVE%\wad
rmdir /s /q Support\0000000100000002
echo.
echo Downloade IOS 60 rev 6174
Support\nusd 000000010000003C 6174 packwad
if exist Support\000000010000003C\000000010000003C.wad echo Download abgeschlossen!
rename Support\000000010000003C\000000010000003C.wad IOS60_sys_4.0_und_4.1.wad
move Support\000000010000003C\IOS60_sys_4.0_und_4.1.wad %DRIVE%\wad
rmdir /s /q Support\000000010000003C
goto :Sy

:42
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] Wii Firmware 4.2E
echo.
echo.
echo Downloade Systemmen...
Support\nusd 0000000100000002 482 packwad
if exist Support\0000000100000002\0000000100000002.wad echo Download erfolgreich!
Rename Support\0000000100000002\0000000100000002.wad System_4.2.wad
if not exist %DRIVE% mkdir %DRIVE%
if not exist %DRIVE%\wad mkdir %DRIVE%\wad
move Support\0000000100000002\System_4.2.wad %DRIVE%\wad
rmdir /s /q Support\0000000100000002
echo.
echo Downloade IOS 70 rev 6687
Support\nusd 0000000100000046 6687 packwad
if exist Support\0000000100000046\0000000100000046.wad echo Download abgeschlossen!
rename Support\0000000100000046\0000000100000046.wad IOS70_sys_4.2.wad
move Support\0000000100000046\IOS70_sys_4.2.wad %DRIVE%\wad
rmdir /s /q Support\0000000100000046
goto :Sy

:43
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
Support\sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] Wii Firmware 4.3E
echo.
echo.
echo Downloade Systemmen...
Support\nusd 0000000100000002 514 packwad
if exist Support\0000000100000002\0000000100000002.wad echo Download erfolgreich!
Rename Support\0000000100000002\0000000100000002.wad System_4.3.wad
if not exist %DRIVE% mkdir %DRIVE%
if not exist %DRIVE%\wad mkdir %DRIVE%\wad
move Support\0000000100000002\System_4.3.wad %DRIVE%\wad
rmdir /s /q Support\0000000100000002
echo.
echo Downloade IOS 80 rev 6943
Support\nusd 0000000100000050 6943 packwad
if exist Support\0000000100000050\0000000100000050.wad echo Download abgeschlossen!
rename Support\0000000100000050\0000000100000050.wad IOS80_sys_4.3.wad
move Support\0000000100000050\IOS80_sys_4.3.wad %DRIVE%\wad
rmdir /s /q Support\0000000100000050
goto :Sy



:Apps
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo			D =	Downloade ausgew?hlte
echo			2 =	Seite 2
echo.
echo.
set Apps=
echo   %Bootmii% B =		Bootmii Ordner
echo.
echo   %HMI% H =		Hackmii Installer
echo.
echo   %Letter% L =		Letterbomb
echo.
echo   %Menui% M =		MyMenuify Mod
echo.
echo   %PDE% P =		PriiLoader German Mod
echo.
echo   %YAWMM% Y =		Yet Another Wad Manager
echo.
echo.
support\sfk echo -spat \x20 \x20 [RED] Exploits
echo.
echo   %BB% B1 =		BannerBomb (3.2 - 4.1)
echo.
echo   %BB2% B2 =		BannerBomb (4.2)
echo.
echo.
echo 				Z = Zurck
echo.
set /p Apps=		Eingabe: 


if /i "%Apps%" EQU "Z" goto:a
if /i "%Apps%" EQU "Y" goto:switchYAWMM
if /i "%Apps%" EQU "B1" goto:switchbannerbomb1
if /i "%Apps%" EQU "B2" goto:switchbannerbomb2
if /i "%Apps%" EQU "H" goto:switchHMI
if /i "%Apps%" EQU "P" goto:switchpriiloaderde
if /i "%Apps%" EQU "M" goto:switchmymenuifymod
if /i "%Apps%" EQU "B" goto:switchBootmii
if /i "%Apps%" EQU "D" goto:queue
if /i "%Apps%" EQU "2" goto:System
if /i "%Apps%" EQU "L" goto:switchLetter

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:Apps

:switchbannerbomb1
if /i "%BB%" EQU "*" (set BB=) else (set BB=*)
goto:Apps

:switchbannerbomb2
if /i "%BB2%" EQU "*" (set BB2=) else (set BB2=*)
goto:Apps

:switchcasper
if /i "%casper%" EQU "*" (set casper=) else (set casper=*)
goto:Apps

:switchpriiloaderde
if /i "%PDE%" EQU "*" (set PDE=) else (set PDE=*)
goto:Apps

:switchmymenuifymod
if /i "%Menui%" EQU "*" (set Menui=) else (set Menui=*)
goto:Apps

:switchYAWMM
if /i "%YAWMM%" EQU "*" (set YAWMM=) else (set YAWMM=*)
goto:Apps

:switchLetter
if /i "%Letter%" EQU "*" (set Letter=) else (set Letter=*)
goto:Apps

:switchDML
if /i "%DML%" EQU "*" (set DML=) else (set DML=*)
goto:Apps

:switchHMI
if /i "%HMI%" EQU "*" (set HMI=) else (set HMI=*)
goto:Apps

:switchBootmii
if /i "%Bootmii%" EQU "*" (set Bootmii=) else (set Bootmii=*)
goto:Apps






:appqueuezusammenfassung
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo				Hier ist dein Log:
echo.
if /i "%Bootmii%" EQU "*" if exist "%DRIVE%\Bootmii\armboot.bin" Support\sfk echo -spat \x20 \x20 \x20 [Green] Bootmii - armboot.bin existiert!
if /i "%Bootmii%" EQU "*" if not exist "%DRIVE%\Bootmii\armboot.bin" Support\sfk echo -spat \x20 \x20 \x20 [Yellow] Bootmii - armboot.bin existiert nicht!
if /i "%Bootmii%" EQU "*" if exist "%DRIVE%\Bootmii\ppcboot.elf" Support\sfk echo -spat \x20 \x20 \x20 [Green] Bootmii - ppcboot.elf existiert!
if /i "%Bootmii%" EQU "*" if not exist "%DRIVE%\Bootmii\ppcboot.elf" Support\sfk echo -spat \x20 \x20 \x20 [Yellow] Bootmii - ppcboot.elf existiert nicht!
if /i "%HMI%" EQU "*" if exist "%DRIVE%\Apps\Hackmii Installer\Boot.elf" Support\sfk echo -spat \x20 \x20 \x20 [Green] Hackmii Installer - Boot.elf existiert!
if /i "%HMI%" EQU "*" if not exist "%DRIVE%\Apps\Hackmii Installer\Boot.elf" Support\sfk echo -spat \x20 \x20 \x20 [Yellow] Hackmii Installer - Boot.elf existiert nicht!
if /i "%HMI%" EQU "*" if exist "%DRIVE%\Apps\Hackmii Installer\icon.png" Support\sfk echo -spat \x20 \x20 \x20 [Green] Hackmii Installer - icon.png existiert!
if /i "%HMI%" EQU "*" if not exist "%DRIVE%\Apps\Hackmii Installer\icon.png" Support\sfk echo -spat \x20 \x20 \x20 [Yellow] Hackmii Installer - icon.png existiert nicht!
if /i "%HMI%" EQU "*" if exist "%DRIVE%\Apps\Hackmii Installer\meta.xml" Support\sfk echo -spat \x20 \x20 \x20 [Green] Hackmii Installer - meta.xml existiert!
if /i "%HMI%" EQU "*" if not exist "%DRIVE%\Apps\Hackmii Installer\meta.xml" Support\sfk echo -spat \x20 \x20 \x20 [Yellow] Hackmii Installer - meta.xml existiert nicht!
if /i "%YAWMM%" EQU "*" if exist %DRIVE%\Apps\YAWMM\Boot.dol Support\sfk echo -spat \x20 \x20 \x20 [Green] YAWMM - Boot.dol existiert!
if /i "%YAWMM%" EQU "*" if not exist %DRIVE%\Apps\YAWMM\Boot.dol Support\sfk echo -spat \x20 \x20 \x20 [Yellow] YAWMM - Boot.dol existiert nicht!
if /i "%YAWMM%" EQU "*" if exist %DRIVE%\Apps\YAWMM\icon.png Support\sfk echo -spat \x20 \x20 \x20 [Green] YAWMM - icon.png existiert!
if /i "%YAWMM%" EQU "*" if not exist %DRIVE%\Apps\YAWMM\icon.png Support\sfk echo -spat \x20 \x20 \x20 [Yellow] YAWMM - icon.png existiert nicht!
if /i "%YAWMM%" EQU "*" if exist %DRIVE%\Apps\YAWMM\meta.xml Support\sfk echo -spat \x20 \x20 \x20 [Green] YAWMM - meta.xml existiert!
if /i "%YAWMM%" EQU "*" if not exist %DRIVE%\Apps\YAWMM\meta.xml Support\sfk echo -spat \x20 \x20 \x20 [Yellow] YAWMM - meta.xml existiert nicht!
echo.
echo					Drcke eine Taste!
pause >NUL
:endofdlapp
set Verifyapp=
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo				Sollen alle Dateien verifizert werden?
echo.
if /i "%Bootmii%" EQU "*" echo Beachte dass der Bootmii Ordner nicht verifiziert wird!
echo.
echo			J = Ja
echo			N = Nein
echo.
set /p Verifyapp=     Eingabe: 	


if /i "%Verifyapp%" EQU "J" goto:verifyapp
if /i "%Verifyapp%" EQU "N" goto:a


echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:endofdlapp


:Scamoff
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
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
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
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

:firststart
cls
set name=
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
if /i "%Endsettings%" NEQ "NA" echo                    Danke, dass du NUSL heruntergeladen hast!
echo.
if /i "%Endsettings%" NEQ "NA" echo		Vorher mssen wir aber noch ein paar Einstellungen festlegen!
echo.
echo					Wie heißt du?
echo.
echo.
echo		     Dies kannst du jederzeit in den Optionen ?ndern!
echo.
echo.
echo.
echo				   NONE = Kein Name (User)
echo.
echo.
echo.
echo.
echo.
set /p name= 	Eingabe:	



if /i "%name%" EQU "NONE" set name=User
if /i "%name%" EQU "NONE" goto:DRIVECHANGE2

:firststart2
cls
set nameright=
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo				Ist der Name "%name%" richtig?
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo			J = Ja
echo			N = Nein
echo.
echo.
echo.
echo.
echo.
echo.
set /p nameright=	Eingabe:	

if /i "%nameright%" EQU "j" goto:DRIVECHANGE2
if /i "%nameright%" EQU "n" goto:firststart

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:firststart2

:DRIVECHANGE2
support\sfk filter Support\settings.bat -!"Set name=" -write -yes>nul
echo Set name=%name%>>Support\settings.bat
set drivetemp=%DRIVE%
if /i "%Endsettings%" EQU "NA" goto:Endsettings
cls
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
echo				   Okay %name%! Weiter geht's!
echo.
echo	   W?hle bitte aus, wo Sachen gespeichert werden sollen, die auf die SD mssen!
echo.
echo		     Dies kannst du jederzeit in den Optionen ?ndern!
echo.
echo.
echo.
echo.
echo         Beispiele:
echo.
echo.
echo            I:\NUSL
echo.
echo		C:\Programme\NUSL\COPY_TO_SD
echo.
echo		F:\NUSL\SD
echo.
echo.
echo.
echo.
echo.	S = Standardeinstellung (COPY_TO_SD)
echo.
echo		Z = Zurück
echo.
echo.
set /p Drivetemp=     Eingabe:		

::remove quotes from variable (if applicable)
echo "set DRIVETEMP=%DRIVETEMP%">temp.txt
support\sfk filter -quiet temp.txt -rep _""""__>temp.bat
call temp.bat
del temp.bat>nul
del temp.txt>nul


if /i "%DRIVETEMP%" EQU "Z" goto:firststart

if /i "%DRIVETEMP%" EQU "S" set DRIVETEMP=COPY_TO_SD

:doublecheck
set fixslash=
if /i "%DRIVETEMP:~-1%" EQU "\" set fixslash=yes
if /i "%DRIVETEMP:~-1%" EQU "/" set fixslash=yes
if /i "%fixslash%" EQU "yes" set DRIVETEMP=%DRIVETEMP:~0,-1%
if /i "%fixslash%" EQU "yes" goto:doublecheck


::if second char is ":" check if drive exists
if /i "%DRIVETEMP:~1,1%" NEQ ":" goto:skipcheck
if exist "%DRIVETEMP:~0,2%" (goto:skipcheck) else (echo.)
echo %DRIVETEMP:~0,2% existiert nicht! Versuche es nochmal...
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:DRIVECHANGE2
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

if /i "%Endsettings%" EQU "SD" goto:Endsettings

if not exist temp\Drive.txt echo Einstellungen gew?hlt! Bitte nicht l?schen! >> temp\Drive.txt
goto:DRIVEUCHANGE2


:DRIVEUCHANGE2
set driveUtemp=%DRIVEU%
cls
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
echo.
echo.
echo	   W?hle bitte aus, wo Sachen gespeichert werden sollen, die auf USB mssen!
echo.
echo		     Dies kannst du jederzeit in den Optionen ?ndern!
echo.
echo		Bitte w?hle NICHT das gleiche Verzeichnis wie die SD! 
echo				Bspsw. zweimal C:\NUSL !
echo.
echo.
echo.
echo.
echo         Beispiele:
echo.
echo.
echo            I:\NUSL\USB
echo.
echo		C:\Programme\NUSL\COPY_TO_USB
echo.
echo		F:\NUSL\USB
echo.
echo.
echo.
echo.
echo.	S = Standardeinstellung (COPY_TO_USB)
echo.
echo         Z = Zurck
echo.
echo.
echo.
set /p DriveUtemp=     Eingabe:		


::remove quotes from variable (if applicable)
echo "set DRIVEUTEMP=%DRIVEUTEMP%">temp.txt
support\sfk filter -quiet temp.txt -rep _""""__>temp.bat
call temp.bat
del temp.bat>nul
del temp.txt>nul


if /i "%DRIVETEMP%" EQU "Z" goto:DRIVECHANGE2

if /i "%DRIVEUTEMP%" EQU "B" goto:%BACKB4DRIVEU%

if /i "%DRIVEUTEMP%" EQU "S" set DRIVEUTEMP=COPY_TO_USB

:doublecheckU
set fixslash=
if /i "%DRIVEUTEMP:~-1%" EQU "\" set fixslash=yes
if /i "%DRIVEUTEMP:~-1%" EQU "/" set fixslash=yes
if /i "%fixslash%" EQU "yes" set DRIVEUTEMP=%DRIVEUTEMP:~0,-1%
if /i "%fixslash%" EQU "yes" goto:doublecheckU



::if second char is ":" check if drive exists
if /i "%DRIVEUTEMP:~1,1%" NEQ ":" goto:skipcheck
if exist "%DRIVEUTEMP:~0,2%" (goto:skipcheck) else (echo.)
echo %DRIVEUTEMP:~0,2% existiert nicht! Versuche es nochmal...
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:DRIVEUCHANGE2
:skipcheck



set DRIVEU=%DRIVEUTEMP%

::autosave drive setting to settings.bat
support\sfk filter Support\settings.bat -!"Set DriveU=" -write -yes>nul
echo Set DriveU=%DRIVEU%>>Support\settings.bat

if /i "%USBCONFIG%" EQU "USB" set DRIVE=%DRIVEU%
if /i "%USBCONFIG%" EQU "USB" set BACKB4QUEUE=DRIVEUCHANGE
if /i "%USBCONFIG%" EQU "USB" goto:DownloadQueue
:skip
if /i "%USBCONFIG%" EQU "USB" set BACKB4QUEUE=DRIVEUCHANGE
if /i "%USBCONFIG%" EQU "USB" goto:Download

if /i "%Endsettings%" EQU "USB" goto:Endsettings

if not exist temp\Driveu.txt echo Einstellungen gew?hlt! Bitte nicht l?schen! >> temp\Driveu.txt
goto :Endsettings

:Endsettings
set Endsettings=
cls
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
echo.
echo					This is it!
echo.
echo				berprfe deine Einstellungen!
echo.
echo		SD Sachen werden gespeichert in:
echo			- %DRIVE%
echo.
echo		USB Sachen werden gespeichert in:
echo			- %DRIVEU%
echo.
echo		Dein Name ist:
echo.			- %name%
echo.
echo.
echo.		J = Ja dies stimmt!
echo.
echo		N = Nein alles stimmt nicht!
echo.
echo			SD = Der Speicherort fr SD stimmt nicht!
echo.
echo			USB = Der Speicherort fr USB stimmt nicht!
echo.
echo			NA = Der Name stimmt nicht!
echo.
echo.
set /p Endsettings=     Eingabe:	


if /i "%Endsettings%" EQU "SD" goto:DRIVECHANGE2
if /i "%Endsettings%" EQU "USB" goto:DRIVEUCHANGE2
if /i "%Endsettings%" EQU "J" goto:thx
if /i "%Endsettings%" EQU "N" goto:DRIVECHANGE2
if /i "%Endsettings%" EQU "NA" goto:firststart

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:Endsettings

:thx
cls
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
echo.
echo					This is it!
echo.
echo				Vielen Dank frs konfigurieren!
echo.
echo		      Alle Einstellungen kannst du in den Optionen ?ndern!
echo.
echo				Drcke eine Taste, um zu beginnen!
pause >NUL
goto:piracyverify


:piracyverify
cls
set verifypiracy=
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo				    Eine Sache doch noch...
echo.
echo.
echo		     Wovon hast du NUSL v%currentversion% heruntergeladen?
echo.
echo.
echo				U = Durch ein Update
echo.
echo				W = Von der WiiDatabase (WiiDatabase.de/nusl)
echo.
echo				G = Von Googlecode      (nusl.googlecode.com)
echo.
echo				A = Von einer anderen Webseite
echo.
echo.
set /p verifypiracy=	Eingabe:	

if /i "%verifypiracy%" EQU "U" goto:piracydetected

if /i "%verifypiracy%" EQU "W" goto:nopiracy

if /i "%verifypiracy%" EQU "G" goto:nopiracy

if /i "%verifypiracy%" EQU "A" goto:piracydetected

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:piracyverify

:piracydetected
cls
echo                                        NUSL                                v%currentversion%
echo                               by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo				   NUSL VERWEIGERT DEN DIENST!
echo.
echo			Du hast NUSL nicht von der offiziellen Website geladen!
echo.
echo				   Bitte lösche diese Version
echo				  und lade NUSL erneut herunter!
echo.
echo					wiidatabase.de
echo				      nusl.googlecode.com
echo.
echo.
echo					    DANKE!
echo					    WARTE...
@ping 127.0.0.1 -n 6 -w 1000> nul
LADE NUSL ERNEUT>temp\firststart.txt
pirat>temp\settings.txt
goto:a

:nopiracy
cls
echo                                        NUSL                                v%currentversion%
echo                               by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo				       	   DANKE!
echo					Bitte warte...
echo.
@ping 127.0.0.1 -n 3 -w 1000> nul
Danke! >>temp\firststart.txt
goto:a

:updatenusl
cls
echo                                        NUSL                                v%currentversion%
echo                               by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo                               Deine Version ist %CurrentVersion%
echo.
echo                                 Suche nach Updates...
echo.

if exist Autoupdate.bat del Autoupdate.bat>nul
if exist Autoupdate.txt del Autoupdate.txt>nul
start %NUSLmin%/wait support\wget -N "http://wiidatabase.de/nusl/Autoupdate.txt"
REN "Autoupdate.txt" "Autoupdate.bat"
call Autoupdate.bat


if /i "%currentversion%" EQU "%newversion%" goto:a
if /i "%currentversion%" GEQ "%newversion%" goto:a

:updatefail
echo   Die Suche nach Updates ist fehlgeschlagen!
echo   berprfe deine Internet Verbindung und deine Firewall
echo.
echo.
echo   Oder prfe ob du
echo   http://bit.ly/nuslupdate
echo   aufrufen kannst!
@ping 127.0.0.1 -n 7 -w 1000> nul
set currentversion=%currentversioncopy%
goto:a

:Config
CLS
set Videomode2=
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo		Dies wird dir eine Config Datei fr Bootmii erstellen!
echo.
echo		W?hle einen Videomode:
echo.
echo		50 = PAL 50
echo		60 = PAL 60
echo		N   = NTSC
echo		P   = PROGRESSIVE
echo.
echo			Z = Zurck
echo.
set /p Videomode2=     Eingabe:		

if /i "%Videomode2%" EQU "50" goto:switchp50
if /i "%Videomode2%" EQU "60" goto:switchp60
if /i "%Videomode2%" EQU "N" goto:switchntsc
if /i "%Videomode2%" EQU "P" goto:switchpr
if /i "%Videomode2%" EQU "Z" goto:a

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:Config

:switchp50
set Videomode=PAL50
if /i "%proceedcfg%" EQU "V" goto:proceedcfg
goto:Autoboot

:switchp60
set Videomode=PAL60
if /i "%proceedcfg%" EQU "V" goto:proceedcfg
goto:Autoboot

:switchntsc
set Videomode=NTSC
if /i "%proceedcfg%" EQU "V" goto:proceedcfg
goto:Autoboot

:switchpr
set Videomode=PROGRESSIVE
if /i "%proceedcfg%" EQU "V" goto:proceedcfg
goto:Autoboot

:Autoboot
CLS
set Autoboot2=
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo		Wohin soll autogebootet werden?
echo.
echo		S   =   Systemmen
echo		H   =   Homebrewkanal
echo		N   =   Autoboot aus
echo.
echo			Z   =   Zurck
echo.
set /p Autoboot2=     Eingabe:		

if /i "%Autoboot2%" EQU "S" goto:switchsys
if /i "%Autoboot2%" EQU "H" goto:switchhbc
if /i "%Autoboot2%" EQU "N" set bootdelay=0
if /i "%Autoboot2%" EQU "N" set Autoboot=
if /i "%Autoboot2%" EQU "N" set Autobootsh=
if /i "%Autoboot2%" EQU "N" goto:proceedcfg
if /i "%Autoboot2%" EQU "Z" goto:Config

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:Autoboot

:switchsys
set Autoboot=SYSMENU
if /i "%proceedcfg%" EQU "A" goto:proceedcfg
goto:bootdelay

:switchhbc
set Autoboot=HBC
if /i "%proceedcfg%" EQU "A" goto:proceedcfg
goto:bootdelay

:bootdelay
if /i "%Autoboot2%" EQU "N" goto :notdelay
CLS
set Bootdelay2=
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo		Wieviele Sekunden sollen vergehen, bis autogebootet wird?
echo.
echo		W?hle eine Zahl von 1 bis 10!
echo.
echo			Z   =   Zurck
echo.
set /p Bootdelay2=     Eingabe:		


if /i "%Bootdelay2%" EQU "1" goto:switchone
if /i "%Bootdelay2%" EQU "2" goto:switchtwo
if /i "%Bootdelay2%" EQU "3" goto:switchthree
if /i "%Bootdelay2%" EQU "4" goto:switchfour
if /i "%Bootdelay2%" EQU "5" goto:switchfive
if /i "%Bootdelay2%" EQU "6" goto:switchsix
if /i "%Bootdelay2%" EQU "7" goto:switchseven
if /i "%Bootdelay2%" EQU "8" goto:switcheight
if /i "%Bootdelay2%" EQU "9" goto:switchnine
if /i "%Bootdelay2%" EQU "10" goto:switchten
if /i "%Bootdelay2%" EQU "Z" goto:Autoboot

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:bootdelay

:notdelay
Support\sfk echo -spat [Red] Du hast Autoboot auf AUS gestellt! Stelle Autoboot wieder an um die Option "Bootdelay" zu ver?ndern!
@ping 127.0.0.1 -n 5 -w 1000> nul
goto:proceedcfg


:switchone
set Bootdelay=1
if /i "%proceedcfg%" EQU "B" goto:proceedcfg
goto:proceedcfg

:switchtwo
set Bootdelay=2
if /i "%proceedcfg%" EQU "B" goto:proceedcfg
goto:proceedcfg

:switchthree
set Bootdelay=3
if /i "%proceedcfg%" EQU "B" goto:proceedcfg
goto:proceedcfg

:switchfour
set Bootdelay=4
if /i "%proceedcfg%" EQU "B" goto:proceedcfg
goto:proceedcfg

:switchfive
set Bootdelay=5
if /i "%proceedcfg%" EQU "B" goto:proceedcfg
goto:proceedcfg

:switchsix
set Bootdelay=6
if /i "%proceedcfg%" EQU "B" goto:proceedcfg
goto:proceedcfg

:switchseven
set Bootdelay=7
if /i "%proceedcfg%" EQU "B" goto:proceedcfg
goto:proceedcfg

:switcheight
set Bootdelay=8
if /i "%proceedcfg%" EQU "B" goto:proceedcfg
goto:proceedcfg

:switchnine
set Bootdelay=9
if /i "%proceedcfg%" EQU "B" goto:proceedcfg
goto:proceedcfg

:switchten
set Bootdelay=10
if /i "%proceedcfg%" EQU "B" goto:proceedcfg
goto:proceedcfg


:proceedcfg
CLS
set proceedcfg=
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo			Dies sind deine Eingaben:
echo.
echo		Videomode   =   %Videomode%
echo.
if /i "%AUTOBOOT%" NEQ "" echo		Autoboot    =   %Autoboot%
if /i "%AUTOBOOT%" EQU "" echo		Autoboot    =   Ausgeschaltet
echo.
echo		Bootdelay   =   %Bootdelay%
echo.
echo.
echo				Stimmt alles?
echo.
echo			J   =   Ja, erstelle Bootmii.ini!
echo.
echo.
echo			N   =   Nein, nichts stimmt
echo			V   =   Videomode stimmt nicht
echo			A   =   Autoboot stimmt nicht
echo			B   =   Bootdelay stimmt nicht
echo.
echo				Z   =  Zurck ins Hauptmen
echo.
set /p proceedcfg=     Eingabe:		

if /i "%proceedcfg%" EQU "J" goto:buildbootmii
if /i "%proceedcfg%" EQU "N" goto:Config
if /i "%proceedcfg%" EQU "V" goto:Config
if /i "%proceedcfg%" EQU "B" goto:bootdelay
if /i "%proceedcfg%" EQU "A" goto:Autoboot
if /i "%proceedcfg%" EQU "Z" goto:a

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:proceedcfg

:buildbootmii
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo					Erstelle Bootmii.ini...
echo.
echo.
echo VIDEO=%Videomode% >> Bootmii.ini
echo AUTOBOOT=%Autoboot% >> Bootmii.ini
echo BOOTDELAY=%Bootdelay% >> Bootmii.ini
@ping 127.0.0.1 -n 2 -w 1000> nul
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo					Bootmii.ini erfolgreich erstellt!
echo.
echo		Bootmii.ini:
echo.
type Bootmii.ini
echo.
echo.
echo	Verschiebe Bootmii.ini
if not exist %DRIVE%\Bootmii mkdir %DRIVE%\Bootmii
move /y Bootmii.ini %DRIVE%\Bootmii
echo.
echo.
echo.		 Erfolgreich! Drcke eine Taste, um zurckzukehren!
pause >NUL
goto:a

:verifysd
Support\fvc -c -a MD5 -r -o custom.md5 %DRIVE%
goto:options

:verifysd2
if not exist custom.md5 goto:nocustomMD5
set verifylog=
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
Support\fvc -x custom.md5
echo.
echo 				M?chtest du einen detailierten Log sehen?
echo.
echo		J = Ja
echo.
echo		N = Nein
echo.
set /p verifylog=     Eingabe:		


if /i "%verifylog%" EQU "J" goto:verifysdlog

if /i "%verifylog%" EQU "N" goto:Options


echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:verifysd2

:verifysdlog
if exist Verify.log del Verify.log
Support\fvc -x -v custom.md5 >> Verify.log
echo. >> Verify.log
echo Diesen Log findest du im TEMP Ordner des NUSLs %Currentversion% >> Verify.log
move /y Verify.log Temp
start Temp\Verify.log
goto:Options

:verifyusb
Support\fvc -c -a MD5 -r -o customusb.md5 %DRIVEU%
goto:options

:verifyusb2
if not exist custom.md5 goto:nocustomMD5
set verifyulog=
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
Support\fvc -x customusb.md5
echo.
echo 				M?chtest du einen detailierten Log sehen?
echo.
echo		J = Ja
echo.
echo		N = Nein
echo.
set /p verifyulog=     Eingabe:		


if /i "%verifylog%" EQU "J" goto:verifyusblog

if /i "%verifylog%" EQU "N" goto:Options


echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:verifyusb2

:verifyusblog
if exist Verifyusb.log del Verifyusb.log
Support\fvc -x -v customusb.md5 >> Verifyusb.log
echo. >> Verifyusb.log
echo Diesen Log findest du im TEMP Ordner des NUSLs %Currentversion% >> Verifyusb.log
move /y Verifyusb.log Temp
start Temp\Verifyusb.log
goto:Options

:verifysy
Support\fvc -c -a MD5 -r -o custom.md5 %DRIVE%
goto:verifysy2

:verifysy2
set verifysylog=
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
Support\fvc -x -v custom.md5
echo.
echo.
echo.					Drcke eine Taste!
pause >NUL
goto:endofdlsy


:Savedl
CLS
set Name=
set exist=
set overwritequeue=
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo			    Wie soll die Liste heiáen?
echo		Kann nicht enthalten: \ / : * ? " < > | & %% und auch Leerzeichen!
echo.
set /p Name= Eingabe:	

if not exist temp\downloadqueue\%name%.bat goto:right
:queueexist
CLS
set exist=
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo		   Es existiert bereits eine Liste mit demselbem Namen!
echo					  Was tun?
echo.
echo				U = ?berschreiben
echo				A = Anderen Namen geben
echo				Z = Abbrechen und zurck
echo.
set /p exist= Eingabe:	

if /i "%exist%" EQU "U" set overwritequeue=on
if /i "%exist%" EQU "U" goto:right
if /i "%exist%" EQU "A" goto:savedl
if /i "%exist%" EQU "Z" goto:queue

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:queueexist

:right
if /i "%exist%" EQU "U" goto:saveit
CLS
set right=
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo				Ist der Name "%name%" richtig?
echo.
echo			J = Ja
echo			N = Nein				
echo.
echo.
set /p right= Eingabe:		

if /i "%right%" EQU "J" goto:saveit
if /i "%right%" EQU "N" goto:savedl

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:right

:saveit
if not exist temp\Downloadqueue mkdir temp\Downloadqueue
if /i "%overwritequeue%" EQU "on" del temp\downloadqueue\%name%.bat

if /i "%BB%" EQU "*" echo set BB=*>> "temp\Downloadqueue\%name%.bat"
if /i "%BB2%" EQU "*" echo set BB2=*>> "temp\Downloadqueue\%name%.bat"
if /i "%BC%" EQU "*" echo set BC=*>> "temp\Downloadqueue\%name%.bat"
if /i "%boot2%" EQU "*" echo set boot2=*>> "temp\Downloadqueue\%name%.bat"
if /i "%Bootmii%" EQU "*" echo set Bootmii=*>> "temp\Downloadqueue\%name%.bat"
if /i "%Casper%" EQU "*" echo set Casper=*>> "temp\Downloadqueue\%name%.bat"
if /i "%DML%" EQU "*" echo set DML=*>> "temp\Downloadqueue\%name%.bat"
if /i "%EULA%" EQU "*" echo set EULA=*>> "temp\Downloadqueue\%name%.bat"
if /i "%HMI%" EQU "*" echo set HMI=*>> "temp\Downloadqueue\%name%.bat"
if /i "%Letter%" EQU "*" echo set Letter=*>> "temp\Downloadqueue\%name%.bat"
if /i "%Mii%" EQU "*" echo set Mii=*>> "temp\Downloadqueue\%name%.bat"
if /i "%M%" EQU "*" echo set M=*>> "temp\Downloadqueue\%name%.bat"
if /i "%N%" EQU "*" echo set N=*>> "temp\Downloadqueue\%name%.bat"
if /i "%O%" EQU "*" echo set O=*>> "temp\Downloadqueue\%name%.bat"
if /i "%F%" EQU "*" echo set F=*>> "temp\Downloadqueue\%name%.bat"
if /i "%F1%" EQU "*" echo set F1=*>> "temp\Downloadqueue\%name%.bat"
if /i "%S%" EQU "*" echo set S=*>> "temp\Downloadqueue\%name%.bat"
if /i "%Sh%" EQU "*" echo set Sh=*>> "temp\Downloadqueue\%name%.bat"
if /i "%W%" EQU "*" echo set W=*>> "temp\Downloadqueue\%name%.bat"
if /i "%YAWMM%" EQU "*" echo set YAWMM=*>> "temp\Downloadqueue\%name%.bat"
if /i "%PDE%" EQU "*" echo set PDE=*>> "temp\Downloadqueue\%name%.bat"
if /i "%Menui%" EQU "*" echo set Menui=*>> "temp\Downloadqueue\%name%.bat"
if /i "%viernull%" EQU "*" echo set viernull=*>> "temp\Downloadqueue\%name%.bat"
if /i "%viereins%" EQU "*" echo set viereins=*>> "temp\Downloadqueue\%name%.bat"
if /i "%vierzwei%" EQU "*" echo set vierzwei=*>> "temp\Downloadqueue\%name%.bat"
if /i "%vierdrei%" EQU "*" echo set vierdrei=*>> "temp\Downloadqueue\%name%.bat"
echo.
Support\sfk echo -spat \x20 \x20 \x20 [Green] Liste gespeichert! Bitte warte...
@ping 127.0.0.1 -n 3 -w 1000> nul
goto:queue

:Loadqueue
if not exist temp\DownloadQueue\*.bat goto:noload
::...................................PICK Download Queue...............................
:PICKDOWNLOADQUEUE

dir temp\DownloadQueue /a:-d /b>temp\list.txt

::support\sfk filter -quiet temp\list.txt -le+".bat" -rep _".bat"__ -write -yes
support\sfk filter -quiet temp\list.txt -le+".bat" -write -yes

::count # of folders in advance to set "mode"
setlocal ENABLEDELAYEDEXPANSION
SET DLQUEUEtotal=0
for /f "delims=" %%i in (temp\list.txt) do set /a DLQUEUEtotal=!DLQUEUEtotal!+1
setlocal DISABLEDELAYEDEXPANSION

SET /a LINES=%DLQUEUEtotal%+27
if %LINES% LEQ 54 goto:noresize
mode con cols=85 lines=%LINES%
:noresize


set DLQUEUE=
cls
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
echo                    W?hle die Downloadliste, die du laden willst:
echo.
echo.


if /i "%DLQUEUEtotal%" EQU "0" (echo                 Es wurden keine Downloadlisten gefunden, kehre zum Men zurck...) & (@ping 127.0.0.1 -n 2 -w 1000> nul) & (goto:a)
echo.

set DLQUEUEnum=0

::Loop through the the following once for EACH line in *.txt
for /F "tokens=*" %%A in (temp\list.txt) do call :processlist %%A
goto:quickskip
:processlist
set /a DLQUEUEnum=%DLQUEUEnum%+1
set whatev=%*
echo       %DLQUEUEnum% = %whatev:~0,-4%
goto:EOF
:quickskip

echo.
echo.
echo           Beachte: Downloadlisten werden in "temp\DownloadQueue"
echo                gespeichert, Wenn du eine Liste l?schen willst,
echo                l?sche sie einfach aus "temp\Downloadqueue""
echo                Die Listen kannst du auch mit anderen NUSL Usern austauschen!
echo.
echo.
echo		    L = Alle Listen l?schen
echo.
echo                Z = Zurck
echo.
echo.
echo.
set /p DLQUEUE=     Eingabe:

if /i "%DLQUEUE%" EQU "Z" (mode con cols=85 lines=54) & (goto:a)
if /i "%DLQUEUE%" EQU "B" (mode con cols=85 lines=54) & (goto:a)
if /i "%DLQUEUE%" EQU "L" (rmdir /s /q temp\Downloadqueue) & (goto:a)

if "%DLQUEUE%"=="" goto:badkey

if %DLQUEUE% LSS 1 goto:badkey
if /i %DLQUEUE% GTR %DLQUEUEnum% goto:badkey


set DLQUEUEnum2=0
::Loop through the the following once for EACH line in *.txt
for /F "tokens=*" %%A in (temp\list.txt) do call :processlist2 %%A
goto:quickskip
:processlist2
set CurrentQueue=%*
set /a DLQUEUEnum2=%DLQUEUEnum2%+1
if not exist "temp\Downloadqueue\%CurrentQueue%" goto:EOF
if /i "%DLQUEUEnum2%" EQU "%DLQUEUE%" goto:quickskip
goto:EOF

:quickskip
del temp\list.txt>nul
mode con cols=85 lines=54
:forcmdlineL
call "temp\Downloadqueue\%CurrentQueue%"
goto:Queue


:badkey
echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:PICKDOWNLOADQUEUE


:noload
echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:a


:problembehandlung
set problem=
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo				Was hast du fr ein Problem?






:Themebuilder
if not exist temp\themebuilder mkdir temp\themebuilder
set MYMNAMED=
cls
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
echo                    Ziehe deine .mym Datei in dieses Fenster
echo			      oder schreibe den Pfad hierrein!
echo.
echo.
echo.
echo				Z = Zurck
echo				D = Downloade Base .app
echo.
echo.
set /p MYMNAMED=     Eingabe:	


echo "set MYMNAMED=%MYMNAMED%">temp\temp.txt
support\sfk filter -quiet temp\temp.txt -rep _""""__>temp\temp.bat
call temp\temp.bat
del temp\temp.bat>nul
del temp\temp.txt>nul

if "%MYMNAMED%"=="" goto:badkey

if /i "%MYMNAMED%" EQU "Z" goto:a
if /i "%MYMNAMED%" EQU "D" goto:downloadingbaseapponly

if /i "%MYMNAMED:~-4%" NEQ ".mym" goto:badkey

if not exist "%MYMNAMED%" goto:badkey

::findStr /I /C:"MYMNAMED" "%MYMNAMED%" >nul
::IF ERRORLEVEL 1 (echo Dies ist keine richtige .mym Datei!) & (@ping 127.0.0.1 -n 2 -w ::1000> nul) & (goto:Themebuilder)

goto:pickapp

:badkey
echo Dies ist keine gltige Eingabe
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:Themebuilder


:pickapp
if /i "%right%" EQU "M" goto:checktheme
if not exist temp\Themebuilder mkdir temp\Themebuilder
copy /y "%MYMNAMED%" temp\Themebuilder> NUL
set firmware=
set NFG=
cls
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
echo                         Welche Firmware besitzt du?
Support\sfk echo -spat \x20 \x20 \x20 [Yellow]Eine .mym fr eine falsche Firmware fhrt zu einem Themebrick 
Support\sfk echo -spat \x20 \x20 \x20 [Yellow]und ohne BootMii in boot2 ist deine Wii schrott!
echo.
echo			3.2	=	3.2E
echo			4.0	=	4.0E
echo			4.1	=	4.1E
echo			4.2	=	4.2E
echo			4.3	=	4.3E
echo.
echo.
echo				Z = Zurck
echo.
set /p firmware= 	Eingabe:		

if /i "%firmware%" EQU "3.2" set NFG=45
if /i "%firmware%" EQU "3.2" goto:themename

if /i "%firmware%" EQU "4.0" set NFG=75
if /i "%firmware%" EQU "4.0" goto:themename

if /i "%firmware%" EQU "4.1" set NFG=7e
if /i "%firmware%" EQU "4.1" goto:themename

if /i "%firmware%" EQU "4.2" set NFG=8a
if /i "%firmware%" EQU "4.2" goto:themename

if /i "%firmware%" EQU "4.3" set NFG=9a
if /i "%firmware%" EQU "4.3" goto:themename

if /i "%firmware%" EQU "Z" goto:themebuilder

echo Dies ist keine gltige Eingabe
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:pickapp

:themename
CLS
set realtheme=
set notinstall=
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
Support\sfk echo -spat \x20 \x20 \x20 [Yellow]Eine .mym fr eine falsche Firmware fhrt zu einem Themebrick 
Support\sfk echo -spat \x20 \x20 \x20 [Yellow]und ohne BootMii in boot2 ist deine Wii schrott!
echo.
if /i "%NFG%" EQU "45" echo				Du hast Firmware 3.2 gew?hlt.
if /i "%NFG%" EQU "75" echo				Du hast Firmware 4.0 gew?hlt.
if /i "%NFG%" EQU "7e" echo				Du hast Firmware 4.1 gew?hlt.
if /i "%NFG%" EQU "8a" echo				Du hast Firmware 4.2 gew?hlt.
if /i "%NFG%" EQU "9a" echo				Du hast Firmware 4.3 gew?hlt.
echo.
echo			Ist das gew?hlte Theme auch f?r diese Firmware?
echo.
echo				J = Ja
echo				N = Nein
echo				Z = Zurck
set /p realtheme= Eingabe:		

if /i "%realtheme%" EQU "J" goto:realthemename

if /i "%realtheme%" EQU "N" set notinstall=yes
if /i "%realtheme%" EQU "N" goto:realthemename

if /i "%realtheme%" EQU "Z" goto:pickapp

echo Dies ist keine gltige Eingabe
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:themename

:realthemename
if /i "%right%" EQU "A" goto:checktheme
set themename=
CLS
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
if /i "%notinstall%" NEQ "yes" goto:miniskipwarnung
Support\sfk echo -spat \x20 \x20 \x20 [Red]!!!ACHTUNG!!! !!!ACHTUNG!!!
Support\sfk echo -spat \x20 \x20 \x20 [Red]INSTALLIERE DIESES THEME NICHT AUF DEINER WII!
Support\sfk echo -spat \x20 \x20 \x20 [Red]DU BEKOMMST EINEN BRICK!!
echo.
:miniskipwarnung 
echo				  Wie soll das Theme heiáen?
echo		Kann nicht enthalten: \ / : * ? " < > | & %% und auch Leerzeichen!
echo.
echo.
echo				ZURUCK = Zurck
echo.
set /p themename= Eingabe:	

if /i "%themename%" EQU "ZURUCK" goto:themename


if not exist temp\Themebuilder\%themename%.csm goto:savetheme
:themeexist
CLS
set exist=
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
if /i "%notinstall%" NEQ "yes" goto:miniskipwarnung
Support\sfk echo -spat \x20 \x20 \x20 [Red]!!!ACHTUNG!!! !!!ACHTUNG!!!
Support\sfk echo -spat \x20 \x20 \x20 [Red]INSTALLIERE DIESES THEME NICHT AUF DEINER WII!
Support\sfk echo -spat \x20 \x20 \x20 [Red]DU BEKOMMST EINEN BRICK!!
echo.
:miniskipwarnung 
echo.
echo		   Es existiert bereits ein Theme mit demselbem Namen!
echo					  Was tun?
echo.
echo				U = ?berschreiben
echo				A = Anderen Namen geben
echo				Z = Zurck
echo.
set /p exist= Eingabe:	

if /i "%exist%" EQU "U" goto:savetheme
if /i "%exist%" EQU "A" goto:themename
if /i "%exist%" EQU "Z" goto:pickapp

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:queueexist

:savetheme
if /i "%right%" EQU "F" goto:checktheme
set Themesave=
set PDE=
set Menui=
cls
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
if /i "%notinstall%" NEQ "yes" goto:miniskipwarnung
Support\sfk echo -spat \x20 \x20 \x20 [Red]!!!ACHTUNG!!! !!!ACHTUNG!!!
Support\sfk echo -spat \x20 \x20 \x20 [Red]INSTALLIERE DIESES THEME NICHT AUF DEINER WII!
Support\sfk echo -spat \x20 \x20 \x20 [Red]DU BEKOMMST EINEN BRICK!!
echo.
:miniskipwarnung 
echo			 Was benutzt du, um das Theme zu installieren?
echo.
echo				P   =   PriiLoader German Mod
if not exist "%DRIVE%\Apps\PriiLoader_DE\boot.dol" echo				P+  =   PriiLoader German Mod herunterladen
echo.
echo				M   =   My Menuify MOD
if not exist "%DRIVE%\Apps\MyMenuifymod\boot.dol" echo				M+  =   My Menuify MOD herunterladen
echo.
echo				N   =   Nichts, speichere einfach in %DRIVE%
echo.
echo.
echo				Z   =   Zurck
echo.
echo				M   =   Men
echo.
echo.
set /p savetheme=		Eingabe:			


if /i "%savetheme%" EQU "P" set themesave=%DRIVE%\priiloader\systemmenu
if /i "%savetheme%" EQU "P" goto:checktheme

if /i "%savetheme%" EQU "P+" if exist "%DRIVE%\Apps\PriiLoader_DE\boot.dol" goto:badkey
if /i "%savetheme%" EQU "P+" set PDE=*
if /i "%savetheme%" EQU "P+" goto:downloadqueue


if /i "%savetheme%" EQU "M" set themesave=%DRIVE%\modthemes
if /i "%savetheme%" EQU "M" goto:checktheme

if /i "%savetheme%" EQU "M+" if exist "%DRIVE%\Apps\mymenuifymod\boot.dol" goto:badkey
if /i "%savetheme%" EQU "M+" set Menui=*
if /i "%savetheme%" EQU "M+" goto:downloadqueue

if /i "%savetheme%" EQU "N" set themesave=%DRIVE%
if /i "%savetheme%" EQU "N" goto:checktheme

if /i "%savetheme%" EQU "Z" goto:realthemename

if /i "%savetheme%" EQU "M" goto:a

:badkey
echo Dies ist keine gltige Eingabe
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:savetheme

:checktheme
set right=
cls
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
if /i "%notinstall%" NEQ "yes" goto:miniskipwarnung
Support\sfk echo -spat \x20 \x20 \x20 [Red]!!!ACHTUNG!!! !!!ACHTUNG!!!
Support\sfk echo -spat \x20 \x20 \x20 [Red]INSTALLIERE DIESES THEME NICHT AUF DEINER WII!
Support\sfk echo -spat \x20 \x20 \x20 [Red]DU BEKOMMST EINEN BRICK!!
echo.
:miniskipwarnung 
echo.
echo				  Sind diese Informationen korrekt?
echo.
echo			MYM Datei:
echo			  - %MYMNAMED%
echo.
echo.
echo			APP Datei:
echo			  - 000000%NFG%  
if /i "%firmware%" EQU "3.2" echo				fr Firmware 3.2E
if /i "%firmware%" EQU "4.0" echo				fr Firmware 4.0E
if /i "%firmware%" EQU "4.1" echo				fr Firmware 4.1E
if /i "%firmware%" EQU "4.2" echo				fr Firmware 4.2E
if /i "%firmware%" EQU "4.3" echo				fr Firmware 4.3E
echo.
echo.
echo			Name des Themes:
echo			  - %themename%
echo.
echo.
echo			Speicherort des Themes:
echo			  - %Themesave%
echo.
Support\sfk echo -spat \x20 \x20 \x20 [Green]			J = Ja, erstelle Theme!
echo.
echo			N = Nein, nichts stimmt!
echo.
echo			M = Nein, die MYM Datei ist falsch!
echo.
echo			A = Nein, die APP Datei ist falsch!
echo.
echo			F = Nein, der Name ist falsch!
echo.
echo			S = Nein, der Speicherort ist falsch!
echo.
echo			Z = Zurck zum Men
echo.
echo.
echo.
set /p right=	Eingabe:	

if /i "%right%" EQU "J" goto:buildtheme

if /i "%right%" EQU "N" goto:themebuilder

if /i "%right%" EQU "M" goto:themebuilder

if /i "%right%" EQU "A" goto:pickapp

if /i "%right%" EQU "F" goto:themename

if /i "%right%" EQU "S" goto:savetheme

if /i "%right%" EQU "Z" goto:a

echo Dies ist keine gltige Eingabe
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:checktheme

:buildtheme
if not exist "%Themesave%" mkdir "%Themesave%"
cls
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
if /i "%notinstall%" NEQ "yes" goto:miniskipwarnung
Support\sfk echo -spat \x20 \x20 \x20 [Red]!!!ACHTUNG!!! !!!ACHTUNG!!!
Support\sfk echo -spat \x20 \x20 \x20 [Red]INSTALLIERE DIESES THEME NICHT AUF DEINER WII!
Support\sfk echo -spat \x20 \x20 \x20 [Red]DU BEKOMMST EINEN BRICK!!
echo.
:miniskipwarnung 
echo				  Downloade Base .app...
if exist temp\Themebuilder\000000%NFG%.app goto:miniskipt
if exist 000000%NFG%.app goto:mminiskipt
start %NUSLmin%/wait Support\NFG %NFG%
if not exist 000000%NFG%.app goto:baseappfailed1
:mminiskipt
move /y 000000%NFG%.app temp\Themebuilder
:miniskipt
Support\sfk echo -spat \x20 \x20 \x20 [Green]Download abgeschlossen!
cls
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
if /i "%notinstall%" NEQ "yes" goto:miniskipwarnung
Support\sfk echo -spat \x20 \x20 \x20 [Red]!!!ACHTUNG!!! !!!ACHTUNG!!!
Support\sfk echo -spat \x20 \x20 \x20 [Red]INSTALLIERE DIESES THEME NICHT AUF DEINER WII!
Support\sfk echo -spat \x20 \x20 \x20 [Red]DU BEKOMMST EINEN BRICK!!
echo.
:miniskipwarnung 
echo				  Erstelle Theme %Themename%...
echo.
echo.
move /y Support\tw.exe "%NUSLpath%"
move /y Support\ASH.exe "%NUSLpath%"
move /y Support\ICSharpCode.SharpZipLib.dll "%NUSLpath%"
tw "%MYMNAMED%" -A "%NUSLpath%\temp\Themebuilder\000000%NFG%.app" -o "%NUSLpath%\%Themename%.csm"
if not exist %Themename%.csm goto:builtfailed
move /y %Themename%.csm "%Themesave%"
echo.
echo.
echo.
Support\sfk echo -spat \x20 \x20 \x20 [Green]Erstellen abgeschlossen!
@ping 127.0.0.1 -n 4 -w 1000> nul
:themebuildsuccess
move /y tw.exe Support
move /y ASH.exe Support
move /y ICSharpCode.SharpZipLib.dll Support
rmdir /s /q tmp
CLS
set next=
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
if /i "%notinstall%" NEQ "yes" goto:miniskipwarnung
Support\sfk echo -spat \x20 \x20 \x20 [Red]!!!ACHTUNG!!! !!!ACHTUNG!!!
Support\sfk echo -spat \x20 \x20 \x20 [Red]INSTALLIERE DIESES THEME NICHT AUF DEINER WII!
Support\sfk echo -spat \x20 \x20 \x20 [Red]DU BEKOMMST EINEN BRICK!!
echo.
:miniskipwarnung 
echo.
echo				  Was m?chtest du als n?chstes tun?
echo.
echo.
echo				O = ?ffne %Themesave%
echo.
echo				W = Wiederhole Theme Builder
echo.
echo				Z = Zurck ins Men
echo.
echo.
set /p next=	Eingabe:	

if /i "%next%" EQU "O" explorer.exe "%Themesave%"
if /i "%next%" EQU "O" goto:themebuildsuccess

if /i "%next%" EQU "W" goto:checktheme

if /i "%next%" EQU "Z" goto:a

echo Dies ist keine gltige Eingabe
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:themebuildsuccess

:baseappfailed1
cls
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
Support\sfk echo -spat \x20 \x20 \x20 [Red]Download fehlgeschlagen! Redownload...
start %NUSLmin%/wait Support\NFG %NFG%
if not exist 000000%NFG%.app goto:baseappfailed2
if exist 000000%NFG%.app move /y 000000%NFG%.app temp\Themebuilder
goto:miniskipt


:baseappfailed2
cls
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
Support\sfk echo -spat \x20 \x20 \x20 [Red]Download zum zweiten mal fehlgeschlagen! Redownload...
start %NUSLmin%/wait Support\NFG %NFG%
if not exist 000000%NFG% goto:baseappfailed
if exist 000000%NFG%.app move /y 000000%NFG%.app temp\Themebuilder
goto:miniskipt

:baseappfailed
cls
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
Support\sfk echo -spat \x20 \x20 \x20 [Red]Download zu oft fehlgeschlagen! Kehre zum Men zurck...
@ping 127.0.0.1 -n 4 -w 1000> nul
goto:a

cls
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
Support\sfk echo -spat \x20 \x20 \x20 [Red]Das Theme konnte nicht erstellt werden,
Support\sfk echo -spat \x20 \x20 \x20 [Red]die .MYM ging m?glicherweise verloren.
echo.
Support\sfk echo -spat \x20 \x20 \x20 [Red]Eine Sicherheitskopie findest du unter
Support\sfk echo -spat \x20 \x20 \x20 [Red]temp\Themebuilder
echo.
echo				    Drcke eine Taste!
pause >NUL
goto:a

:downloadingbaseapponly
set firmware=
set NFG=
cls
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
echo.
echo                         Welche Firmware besitzt du?
echo.
echo			3.2	=	3.2E
echo			4.0	=	4.0E
echo			4.1	=	4.1E
echo			4.2	=	4.2E
echo			4.3	=	4.3E
echo.
echo.
echo				Z = Zurck
echo.
set /p firmware= 	Eingabe:		

if /i "%firmware%" EQU "3.2" set NFG=45
if /i "%firmware%" EQU "3.2" goto:dlbaseapp

if /i "%firmware%" EQU "4.0" set NFG=75
if /i "%firmware%" EQU "4.0" goto:dlbaseapp

if /i "%firmware%" EQU "4.1" set NFG=7e
if /i "%firmware%" EQU "4.1" goto:dlbaseapp

if /i "%firmware%" EQU "4.2" set NFG=8a
if /i "%firmware%" EQU "4.2" goto:dlbaseapp

if /i "%firmware%" EQU "4.3" set NFG=9a
if /i "%firmware%" EQU "4.3" goto:dlbaseapp

if /i "%firmware%" EQU "Z" goto:themebuilder

echo Dies ist keine gltige Eingabe
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:downloadingbaseapponly

:dlbaseapp
cls
echo                                        NUSL                                v%currentversion%
echo                                by the WiiDatabase Team
echo.
echo					   %DATE%
echo.
start %NUSLmin%/wait Support\NFG %NFG%
if not exist 000000%NFG%.app set baseappfailed=yes
if not exist 000000%NFG%.app goto:a
if exist 000000%NFG%.app move /y 000000%NFG%.app "%DRIVE%\ModThemes"
set baseappfailed=no
goto:a



:::::::::::::::::::::::::::::----------------------------AN DICH!------
Wenn du NUSL umschreibst, oder Teile der Source benutzt, erwähne doch bitte
"iCON" als Dev und "WiiDatabase.de/nusl" als Projektseite! Vielen Dank!