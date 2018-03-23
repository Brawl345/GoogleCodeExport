@echo off
COLOR 1F
TITLE NUSL Installer
mode con cols=85 lines=25
set ver=1.0b
set NUSLmin=/min 
set updatelink=http://nusl.googlecode.com/files/
set nuslver=v0.1beta4.zip
set nuslvers=0.1 beta4
set dl=%updatelink%%nuslver%
set DESKTOPDIR="%userprofile%\Desktop\NUSL"
:top
CLS
set Loc=
echo					NUSL Installer				        v%ver%
echo			  	    by the WiiDatabase Team
echo.
echo			      Wo m”chtest du NUSL hininstallieren?
echo.
echo.
echo	    L = Lokale Installation
echo	 	* Installiert in %homedrive%\NUSL
echo.
echo.
echo	    D = Desktop Instalaltion
echo	 	* Installiert in %DESKTOPDIR%
echo.
echo.
echo	    P = Portable Installation
echo 	        * Installiert in selbstausgew„hltem Verzeichnis
echo.
echo.
echo			 E = Beenden ohne NUSL zu installieren
echo.
echo.
set /p Loc=	Eingabe: 	


if /i "%Loc%" EQU "L" set InstallPath=%homedrive%\NUSL
if /i "%Loc%" EQU "L" goto:updaterpage3

if /i "%Loc%" EQU "D" set InstallPath=%DESKTOPDIR%
if /i "%Loc%" EQU "D" goto:updaterpage3

if /i "%Loc%" EQU "P" goto:Portable
if /i "%Loc%" EQU "E" exit


echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:top

:Portable
set InstallPathTemp=
cls
echo					NUSL Installer				        v%ver%
echo			  	    by the WiiDatabase Team
echo.
echo.
echo               Gebe den Laufwerksbuchstaben oder den Pfad fr die Installation an:
echo.
echo.
echo         Beispiele:
echo         ==========
echo.
echo            E:\NUSL
echo.
echo            F:
echo.
echo            G:\PortableApps\NUSL
echo.
echo.
echo                            Z = Zurck
echo.
echo                            B = Beenden ohne NUSL zu installieren
echo.
echo.
set /p InstallPathTemp=     Enter Selection Here: 

IF "%InstallPathTemp%"=="" echo You Have Entered an Incorrect Key
IF "%InstallPathTemp%"=="" goto:Portable

if /i "%InstallPathTemp%" EQU "Z" goto:top
if /i "%InstallPathTemp%" EQU "B" exit

::remove quotes from variable (if applicable)
echo "set InstallPathTemp=%InstallPathTemp%">temp.txt
sfk filter -quiet temp.txt -rep _""""__>temp.bat
call temp.bat
del temp.bat>nul
del temp.txt>nul

:doublecheck
set fixslash=
if /i "%InstallPathTemp:~-1%" EQU "\" set fixslash=yes
if /i "%InstallPathTemp:~-1%" EQU "/" set fixslash=yes
if /i "%fixslash%" EQU "yes" set InstallPathTemp=%InstallPathTemp:~0,-1%
if /i "%fixslash%" EQU "yes" goto:doublecheck


::if second char is ":" check if drive exists
if /i "%InstallPathTemp:~1,1%" NEQ ":" goto:skipcheck
if exist "%InstallPathTemp:~0,2%" (goto:skipcheck) else (echo.)
echo %InstallPathTemp:~0,2% existiert nicht, versuche es erneut...
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:Portable
:skipcheck


set InstallPath=%InstallPathTemp%
goto:updaterpage3

:updaterpage3
set shortcut=
cls
echo					NUSL Installer				        v%ver%
echo			  	    by the WiiDatabase Team
echo.
echo.
echo                   M”chtest du NUSL Shortcuts installieren?
echo.
echo.
echo.
echo                 D = Desktop
echo.
echo                 K = Keine
echo.
echo.
echo                            Z = Zurck
echo.
echo                            B = Beenden ohne NUSL zu installieren
echo.
echo.
set /p shortcut=     Enter Selection Here: 

if /i "%shortcut%" EQU "B" exit
if /i "%shortcut%" EQU "D" goto:updaterpageconfirm
if /i "%shortcut%" EQU "K" goto:updaterpageconfirm

if /i "%proceed%" EQU "L" goto:backto1
if /i "%proceed%" EQU "D" goto:backto1
if /i "%shortcut%" EQU "Z" goto:top
:backto1
if /i "%shortcut%" EQU "Z" goto:updaterpage

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:updaterpage3

:updaterpageconfirm
set updateconfirm=
cls
echo					NUSL Installer				        v%ver%
echo			  	    by the WiiDatabase Team
echo.
echo.
echo                      Installiere NUSL mit diesen Einstellungen?
echo.
echo.
echo      * Installiere NUSL in:
echo        - %InstallPath%
echo.
if /i "%shortcut%" EQU "D" echo      * Installiere NUSL Shortcut
if /i "%shortcut%" EQU "K" echo      * Installiere keinen NUSL Shortcut

echo.
echo.
echo.
echo.
echo                            J = Ja!
echo.
echo                            Z = Zurck
echo.
echo                            B = Beenden ohne NUSL zu installieren
echo.
echo.
set /p updateconfirm=     Enter Selection Here: 

if /i "%updateconfirm%" EQU "B" exit
if /i "%updateconfirm%" EQU "J" goto:proceed
if /i "%updateconfirm%" EQU "Z" goto:updaterpage3


echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:updaterpageconfirm

:proceed
if exist %nuslver% goto :entpacke
CLS
echo					NUSL Installer				        v%ver%
echo			  	    by the WiiDatabase Team
echo.
echo.
echo				Downloade NUSL v%nuslvers%
mkdir temp
if not exist %InstallPath% mkdir %InstallPath%
start %NUSLmin%/wait wget -t 3 %dl%
:entpacke
CLS
if not exist temp mkdir temp
if not exist %InstallPath% mkdir %InstallPath%
echo					NUSL Installer				        v%ver%
echo			  	    by the WiiDatabase Team
echo.
echo.
echo				Entpacke NUSL v%nuslvers%
echo.
start %NUSLmin%/wait 7za e %nuslver% -otemp
::---------------------------------------------Ab hier wird verschoben! Immer anpassen!----
move /y temp\NUSL.bat %InstallPath%
mkdir %InstallPath%\Support
move /y temp\7za.exe %InstallPath%\Support
move /y temp\nusd.exe %InstallPath%\Support
move /y temp\settings.bat %InstallPath%\Support
move /y temp\settings.exe %InstallPath%\Support
move /y temp\sfk.exe %InstallPath%\Support
move /y temp\wget.exe %InstallPath%\Support
move /y temp\wit.exe %InstallPath%\Support
move /y temp\wwt.exe %InstallPath%\Support
rmdir /s /q temp
if exist Support rmdir /s /q Support
if /i "%shortcut%" EQU "D" nircmd.exe shortcut "%InstallPath%\NUSL.bat" "~$folder.desktop$" "NUSL" "" "%cd%\icon.ico"
del %nuslver%
CLS
echo					NUSL Installer				        v%ver%
echo.
echo.
echo			  	    NUSL wurde instaliert!
start %InstallPath%
@ping 127.0.0.1 -n 5 -w 1000> nul
exit