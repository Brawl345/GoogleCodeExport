@echo off
::if "%currentversion%"=="" set currentversion=4.3.0
set newversion=0.3

if exist support\wget.exe (set folder=support\) else (set folder=)

set updatedlname=NUSL%newversion%.zip
set UpdateDLlink="http://nusl.googlecode.com/files/%updatedlname%"

::for NUSL Installer
if /i "%currentversion%" EQU "0.0.0" goto:updatepage2

cls
set updatenow=""
if %currentversion% GEQ %newversion% goto:noupdate

::---------UPDATE CODE--------

:updatecode

set loglines=20

if %currentversion% LSS 0.2 set /a loglines=%loglines%+8
if %currentversion% LSS 0.3 set /a loglines=%loglines%+76
if %currentversion% LSS 4.7.1 set /a loglines=%loglines%+44
if %currentversion% LSS 4.7.2 set /a loglines=%loglines%+33
if %currentversion% LSS 4.7.3 set /a loglines=%loglines%+40
if %currentversion% LSS 4.7.4 set /a loglines=%loglines%+16
if %currentversion% LSS 4.7.5 set /a loglines=%loglines%+9
if %currentversion% LSS 4.7.6 set /a loglines=%loglines%+22
if %currentversion% LSS 4.8.0 set /a loglines=%loglines%+48
if %currentversion% LSS 4.8.1 set /a loglines=%loglines%+85
if %currentversion% LSS 4.8.2 set /a loglines=%loglines%+8

if %loglines% LEQ 54 goto:donotresize
mode con cols=85 lines=%loglines%
:donotresize

cls
echo                                        NUSL
Echo                                   by The WiiDatabase Team
Echo.
Echo.
if not exist %folder%sfk.exe Echo            Ein Update ist verfügbar! Möchtest du auf Version %newversion% updaten?
if exist %folder%sfk.exe %folder%sfk echo -spat \x20 \x20 \x20 \x20 \x20 [Red] Ein Update ist verfügbar! Möchtest du auf Version %newversion% updaten?
echo.

::8 lines
if %currentversion% GEQ 0.2 goto:skip0.2
echo.
if not exist %folder%sfk.exe echo                                  v0.2 Changelog:
if exist %folder%sfk.exe %folder%sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] v0.2 Changelog:
echo.
echo  * Fixed blabla
echo.
:skip0.2

::76 lines
if %currentversion% GEQ 0.3 goto:skip0.3
echo.
if not exist %folder%sfk.exe echo                                  v0.3 Changelog:
if exist %folder%sfk.exe %folder%sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Red] v0.3 Changelog:
echo.
echo  * Added Letterbomb support.
echo.
echo  * Update jetzt!
echo.
:skip0.3


echo.
if not exist %folder%sfk.exe Echo            Ein Update ist verfügbar! Möchtest du auf Version %newversion% updaten?
if exist %folder%sfk.exe %folder%sfk echo -spat \x20 \x20 \x20 \x20 \x20 [Red] Ein Update ist verfügbar! Möchtest du auf Version %newversion% updaten?
echo.

if not exist %folder%sfk.exe echo                J = Ja - Update JETZT!(RECOMMENDED)
if exist %folder%sfk.exe %folder%sfk echo -spat \x20 \x20 \x20 \x20 \x20 \x20 \x20 [Green] J = Ja - Update JETZT! (RECOMMENDED)
echo                N = Nein, schalte Auto Updates aus
echo.
echo.

set /p updatenow=    Eingabe: 


if /i "%updatenow%" EQU "J" goto:updatepage2
if /i "%updatenow%" EQU "N" goto:passcheck

echo Dies ist keine gültige Eingabe!
@ping 127.0.0.1 -n 2 -w 1000> nul
goto :donotresize

:updatepage2
cls
if /i "%currentversion%" NEQ "0.0.0" mode con cols=85 lines=54
if /i "%currentversion%" NEQ "0.0.0" echo                                        NUSL
if /i "%currentversion%" EQU "0.0.0" echo                                    NUSL Updater
Echo                                    by The WiiDatabase Team
Echo.
Echo.
if /i "%currentversion%" NEQ "0.0.0" echo                            Update von v%currentversion% zu v%newversion%
if /i "%currentversion%" EQU "0.0.0" echo                             Downloade v%newversion% von NUSL
Echo.
Echo                                     Bitte warten...
Echo.
start /min /wait %folder%wget -t 3 %UpdateDLlink%

echo @echo off>Updatetemp.bat
echo set currentversion=%currentversion%>>Updatetemp.bat
echo set updatedlname=%updatedlname%>>Updatetemp.bat
echo set updatename=%updatename%>>Updatetemp.bat

echo cls>>Updatetemp.bat

if /i "%currentversion%" NEQ "0.0.0" echo echo                                        NUSL>>Updatetemp.bat
if /i "%currentversion%" EQU "0.0.0" echo echo                                    NUSL Updater>>Updatetemp.bat
echo Echo                                       by The WiiDatabase Team>>Updatetemp.bat
echo Echo.>>Updatetemp.bat
echo Echo.>>Updatetemp.bat
if /i "%currentversion%" NEQ "0.0.0" echo Echo                            Update von v%currentversion% zu v%newversion%>>Updatetemp.bat
if /i "%currentversion%" EQU "0.0.0" echo Echo                             Downloade v%newversion% von NUSL>>Updatetemp.bat
echo Echo.>>Updatetemp.bat
echo Echo                                     Bitte warte...>>Updatetemp.bat
echo Echo.>>Updatetemp.bat


echo del NUSLautoupdate.bat>>Updatetemp.bat
echo del %updatedlname%>>Updatetemp.bat
echo cd /d "%InstallPath%">>Updatetemp.bat


goto:skipNormalModMiiUpdate


:NormalModMiiUpdate

if %currentversion% GEQ 4.7.1 goto:renamebat
echo if exist "NUSL.bat" ren "NUSL.bat" "NUSL-v%currentversion%.bat">>Updatetemp.bat
goto:notbat
:renamebat
echo if exist "NUSL.bat" ren "NUSL.bat" "NUSL-v%currentversion%.bat">>Updatetemp.bat
echo if exist "NUSL.bat" del "NUSL.bat">>Updatetemp.bat
:notbat

echo %folder%7za x %updatedlname% -aoa>>Updatetemp.bat
echo del NUSLautoupdate.bat>>Updatetemp.bat
echo del %updatedlname%>>Updatetemp.bat

echo if exist settings.bat copy /y settings.bat support\settings.bat>>Updatetemp.bat


set InstallPath=%ModMiipath%
:skipNormalModMiiUpdate


echo "NUSL.bat">>Updatetemp.bat
echo ::exit>>Updatetemp.bat
::attrib +h updatetemp.bat
Updatetemp.bat
::exit


::-------------NO UPDATE------------
:noupdate
echo                                        NUSL
Echo                             by The WiiDatabase Team
Echo.
Echo.
if %currentversion% EQU %newversion% goto:currentversion
echo                  Diese Version ist aktueller als die letzte Version
echo.
echo                     Du hast jetzt eine coole neue Beta Version!
@ping 127.0.0.1 -n 4 -w 1000> nul
goto:passcheck

:currentversion



::--------Download Database Update Check---------
::set NEWDBUPDATEVERSION=4.5.0.1
set NEWDBUPDATEVERSION=none
set DBUPDATEVERSION=none

::if exist temp\DBUPDATE%newversion%.bat call temp\DBUPDATE%newversion%.bat

if %NEWDBUPDATEVERSION% NEQ %DBUPDATEVERSION% goto:updateDB


echo                              Diese Version ist aktuell!
goto:skipUpdateDB

:updateDB


if not exist temp mkdir temp



echo set DBUPDATEVERSION=%NEWDBUPDATEVERSION%>temp\DBUPDATE%newversion%.bat

:skipUpdateDB
::--------------------

:passcheck
::FORCE Autoupdate turned off
if /i "%updatenow%" EQU "N" %folder%sfk filter %folder%settings.bat -!"Set AUTOUPDATE=" -write -yes>nul
if /i "%updatenow%" EQU "N" echo Set AUTOUPDATE=off>>%folder%settings.bat
if /i "%updatenow%" EQU "N" "NUSL.bat"
@ping 127.0.0.1 -n 4 -w 1000> nul