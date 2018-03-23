@echo off
set currentversion=1.0
TITLE Ocarina Cheat Downloader v%currentversion%
set min=/min
set OCDpfad=%cd%
:top
COLOR 1F
CLS
set menu=
if exist updater.bat del updater.bat
echo				Diese Software ist gratis!
echo				    WiiDatabase.de 2012
echo.
echo.
echo.
echo		[1] Downloade Accio-Hacks
echo		[2] Downloade alle Cheats (Gecko OS Format)
echo		[3] Downloade alle Cheats (Accio Hacks Format)
echo		[4] Downloade alle Cheats (Beides)
echo.
echo		[U] Update
echo		[B] Beenden
echo.
set /p menu= 		Eingabe: 

if /i "%menu%" EQU "1" goto:acciohacks

if /i "%menu%" EQU "2" goto:geckocheats

if /i "%menu%" EQU "3" goto:acciohackscheats

if /i "%menu%" EQU "4" goto:bothcheats

if /i "%menu%" EQU "u" goto:update

if /i "%menu%" EQU "B" exit

echo Dies ist keine gltige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto:top

:acciohacks
CLS
if exist COPY-TO-SD\apps\AccioHacks\boot.dol echo				Accio-Hacks existiert bereits und deshalb ist der
if exist COPY-TO-SD\apps\AccioHacks\boot.dol goto:accioexist
echo				Downloade Accio-Hacks...
start  %min%/wait wget -t 3 "http://www.wiidatabase.de/files/accio/boot.dol"
start  %min%/wait wget -t 3 "http://www.wiidatabase.de/files/accio/icon.png"
start  %min%/wait wget -t 3 "http://www.wiidatabase.de/files/accio/meta.xml"
if not exist COPY-TO-SD\apps\acciohacks mkdir COPY-TO-SD\apps\acciohacks
move boot.dol COPY-TO-SD\apps\acciohacks\ >NUL
move icon.png COPY-TO-SD\apps\acciohacks\ >NUL
move meta.xml COPY-TO-SD\apps\acciohacks\ >NUL
echo.
if exist COPY-TO-SD\apps\AccioHacks\boot.dol goto:accioexist
echo.
echo				Download fehlgeschlagen!
echo				Downloade ein letztes Mal...
start  %min%/wait wget -t 3 "http://www.wiidatabase.de/files/accio/boot.dol"
start  %min%/wait wget -t 3 "http://www.wiidatabase.de/files/accio/icon.png"
start  %min%/wait wget -t 3 "http://www.wiidatabase.de/files/accio/meta.xml"
if not exist COPY-TO-SD\apps\acciohacks mkdir COPY-TO-SD\apps\acciohacks
move boot.dol COPY-TO-SD\apps\acciohacks
move icon.png COPY-TO-SD\apps\acciohacks
move meta.xml COPY-TO-SD\apps\acciohacks
echo.
if exist COPY-TO-SD\apps\AccioHacks\boot.dol goto:accioexist
echo				Download fehlgeschlagen!
echo			   ueberpruefe deine Internetverbindung!
@ping 127.0.0.1 -n 3 -w 1000> nul
goto:top
:accioexist
echo				Download abgeschlossen!
explorer.exe COPY-TO-SD
@ping 127.0.0.1 -n 3 -w 1000> nul
goto:top

:geckocheats
CLS
if exist ModMii%modmii%.zip del ModMii%modmii%.zip
echo				Erhalte aktuelle ModMii Version...
if exist modmii.txt del modmii.txt
if exist modmii.bat del modmii.bat
start  %min%/wait wget -t 3 "http://www.wiidatabase.de/files/modmii.txt"
ren modmii.txt modmii.bat
call modmii.bat
if exist modmii.bat del modmii.bat
echo				Version %modmii% ist aktuell...
echo.
echo				Downloade ModMii v%modmii%...
start  %min%/wait wget -t 3 "http://modmii.googlecode.com/files/ModMii%modmii%.zip"
echo.
echo				Entpacke ModMii...
start  %min%/wait 7za x -aoa ModMii%modmii%.zip -oModMii -r
if exist ModMii%modmii%.zip del ModMii%modmii%.zip
echo.
if exist ModMii\ModMii.exe echo				Erfolgreich!
if not exist ModMii\ModMii.exe goto:failed
echo				Erhalte Konfigurationsdatei...
start  %min%/wait wget -t 3 "http://www.wiidatabase.de/files/settings.bat"
if not exist settings.bat goto:failed
echo				Erfolgreich!
echo.
echo				Ersetze ModMii Konfigurationsdatei...
move /y settings.bat ModMii\Support >NUL
echo.
echo					Ausgefuehrt!
echo.
echo				Erhalte Skript...
start  %min%/wait wget -t 3 "http://www.wiidatabase.de/files/codes.bat"
if not exist codes.bat goto:failed
echo				Erfolgreich!
echo.
echo				Verschiebe Codeskript...
if not exist ModMii\Temp\DownloadQueues mkdir ModMii\Temp\DownloadQueues
move /y codes.bat ModMii\Temp\DownloadQueues >NUL
echo.
if not exist ModMii\Temp\DownloadQueues\codes.bat goto:failed
echo.
echo				Erfolgreich!
echo.
echo				Fuehre ModMiiskript aus...
echo.
echo		  Dies kann einige Zeit dauern! Bitte habe Geduld!
ModMii\ModMii.exe L codes.bat
echo.
if not exist COPY-TO-SD mkdir COPY-TO-SD
move ModMii\COPY-TO-SD\txtcodes COPY-TO-SD >NUL
echo				Loesche ModMii...
rmdir /s /q ModMii
explorer.exe COPY-TO-SD
goto:Top

:acciohackscheats
CLS
if exist ModMii%modmii%.zip del ModMii%modmii%.zip
echo				Erhalte aktuelle ModMii Version...
if exist modmii.txt del modmii.txt
if exist modmii.bat del modmii.bat
start  %min%/wait wget -t 3 "http://www.wiidatabase.de/files/modmii.txt"
ren modmii.txt modmii.bat
call modmii.bat
if exist modmii.bat del modmii.bat
echo				Version %modmii% ist aktuell...
echo.
echo				Downloade ModMii v%modmii%...
start  %min%/wait wget -t 3 "http://modmii.googlecode.com/files/ModMii%modmii%.zip"
echo.
echo				Entpacke ModMii...
start  %min%/wait 7za x -aoa ModMii%modmii%.zip -oModMii -r
if exist ModMii%modmii%.zip del ModMii%modmii%.zip
echo.
if exist ModMii\ModMii.exe echo				Erfolgreich!
if not exist ModMii\ModMii.exe goto:failed
echo				Erhalte Konfigurationsdatei...
start  %min%/wait wget -t 3 "http://www.wiidatabase.de/files/settingsaccio.bat"
if not exist settingsaccio.bat goto:failed
ren settingsaccio.bat settings.bat
echo				Erfolgreich!
echo.
echo				Ersetze ModMii Konfigurationsdatei...
move /y settings.bat ModMii\Support >NUL
echo.
echo					Ausgefuehrt!
echo.
echo				Erhalte Skript...
start  %min%/wait wget -t 3 "http://www.wiidatabase.de/files/codeaccio.bat"
if not exist codeaccio.bat goto:failed
echo				Erfolgreich!
echo.
echo				Verschiebe Codeskript...
if not exist ModMii\Temp\DownloadQueues mkdir ModMii\Temp\DownloadQueues
move /y codeaccio.bat ModMii\Temp\DownloadQueues >NUL
echo.
if not exist ModMii\Temp\DownloadQueues\codeaccio.bat goto:failed
echo.
echo				Erfolgreich!
echo.
echo				Fuehre ModMiiskript aus...
echo.
echo		  Dies kann einige Zeit dauern! Bitte habe Geduld!
ModMii\ModMii.exe L codeaccio.bat
echo.
if not exist COPY-TO-SD mkdir COPY-TO-SD
move ModMii\COPY-TO-SD\codes COPY-TO-SD >NUL
echo				Loesche ModMii...
rmdir /s /q ModMii
explorer.exe COPY-TO-SD
goto:Top

:bothcheats
CLS
if exist ModMii%modmii%.zip del ModMii%modmii%.zip
echo				Erhalte aktuelle ModMii Version...
if exist modmii.txt del modmii.txt
if exist modmii.bat del modmii.bat
start  %min%/wait wget -t 3 "http://www.wiidatabase.de/files/modmii.txt"
ren modmii.txt modmii.bat
call modmii.bat
if exist modmii.bat del modmii.bat
echo				Version %modmii% ist aktuell...
echo.
echo				Downloade ModMii v%modmii%...
start  %min%/wait wget -t 3 "http://modmii.googlecode.com/files/ModMii%modmii%.zip"
echo.
echo				Entpacke ModMii...
start  %min%/wait 7za x -aoa ModMii%modmii%.zip -oModMii -r
if exist ModMii%modmii%.zip del ModMii%modmii%.zip
echo.
if exist ModMii\ModMii.exe echo				Erfolgreich!
if not exist ModMii\ModMii.exe goto:failed
echo				Erhalte Konfigurationsdatei...
start  %min%/wait wget -t 3 "http://www.wiidatabase.de/files/settingsboth.bat"
if not exist settingsboth.bat goto:failed
ren settingsboth.bat settings.bat
echo				Erfolgreich!
echo.
echo				Ersetze ModMii Konfigurationsdatei...
move /y settings.bat ModMii\Support >NUL
echo.
echo					Ausgefuehrt!
echo.
echo				Erhalte Skript...
start  %min%/wait wget -t 3 "http://www.wiidatabase.de/files/cheatsboth.bat"
if not exist cheatsboth.bat goto:failed
echo				Erfolgreich!
echo.
echo				Verschiebe Codeskript...
if not exist ModMii\Temp\DownloadQueues mkdir ModMii\Temp\DownloadQueues
move /y cheatsboth.bat ModMii\Temp\DownloadQueues >NUL
echo.
if not exist ModMii\Temp\DownloadQueues\cheatsboth.bat goto:failed
echo.
echo				Erfolgreich!
echo.
echo				Fuehre ModMiiskript aus...
echo.
echo		  Dies kann einige Zeit dauern! Bitte habe Geduld!
ModMii\ModMii.exe L cheatsboth.bat
echo.
echo				Warte...
if not exist COPY-TO-SD mkdir COPY-TO-SD
move ModMii\COPY-TO-SD\codes COPY-TO-SD >NUL
move ModMii\COPY-TO-SD\txtcodes COPY-TO-SD >NUL
echo				Loesche ModMii...
rmdir /s /q ModMii
explorer.exe COPY-TO-SD
goto:Top

:Update
CLS
echo				Deine Version ist %currentversion%
start %min%/wait wget -t 3 "http://www.wiidatabase.de/files/updater.bat"
if not exist updater.bat goto:failed
call updater.bat

:failed
CLS
echo				Fehlgeschlagen!
@ping 127.0.0.1 -n 3 -w 1000> nul
goto:top
