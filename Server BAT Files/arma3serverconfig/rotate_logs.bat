@echo off
:: Based off of Server Launch Script by r4z0r49
:: Script Modified and fixed by Sykotix - http://dayz.sykotix.com
::
:: Usage: dayzsrv-log-rotater.bat servername
:: Example 1 - Will update using default profile: dayzsrv-log-rotater.bat 
:: Example 2 - Will update using profile for US6: dayzsrv-log-rotater.bat US6

:::::::::::::: CONFIG ::::::::::::::::::

:: Set your Arma2AO Base installation directory. LEAVE OFF THE ENDING \
set arma2srvpath=C:

:: Set your Default server profile name. This is the name of the directory that stores your server.cfg
:: This will be used in the case that you don't launch this script without the server param.
:: Example: cfgdayz, US6, Chicago13, ect
:: DEFAULTPROFILE
set srvname=arma3serverconfig

:: Delete Original log files after they have been rotated? This keeps your logs more organized and saves space.
:: This will not work unless the server is stopped first. This option works best set to 1 when using FireDaemon's Pre/Post Service tab
set deloriglogs=1

::::::::::: ADVANCED CONFIG ::::::::::::
:: Don't touch anything below this point unless you know what your doing.

:: Setting Server Profile to Use
IF "%1"=="" (
set servername=%srvname%
) else (
set servername=%1
)

TITLE  DayZ %servername% Server Log Rotater

:: Set Debug Mode
set debug=0
:: Set Debug Timeout in seconds
set dbsecs=10

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::  STOP EDITING ::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Display Debug output
if %debug% == 1 (
echo Server Name = %servername%
echo ArmaII Server Path = "%arma2srvpath%"
timeout %dbsecs%
)

:: Set Time and Date
SET HOUR=%time:~0,2%
SET dtStamp9=%date:~-4%%date:~4,2%%date:~7,2%_0%time:~1,1%%time:~3,2%_%time:~6,2%
SET dtStamp24=%date:~-4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%_%time:~6,2%
::Make Date Stamp
if "%HOUR:~0,1%" == " " (SET dtStamp=%dtStamp9%) else (SET dtStamp=%dtStamp24%)
ECHO Todays Date and time (%date%)(%time%) / %dtStamp%
if %debug% == 1 (
timeout %dbsecs%
)

echo (%date%) (%time%) Starting Log Rotation.

:: Make the Rotated Log Directorys
if exist "C:\arma3serverconfig\RotatedLogs" goto maketsdir
mkdir "C:\arma3serverconfig\RotatedLogs"
:maketsdir
if exist "C:\arma3serverconfig\RotatedLogs\%dtStamp%" goto makebedir
mkdir "C:\arma3serverconfig\RotatedLogs\%dtStamp%"
:makebedir
if exist "C:\arma3serverconfig\RotatedLogs\%dtStamp%\BattlEye" goto rotatelogs
mkdir "C:\arma3serverconfig\RotatedLogs\%dtStamp%\BattlEye"

:rotatelogs
:: Starting Log Rotation. If there are any other logs, just follow the format below, and make sure to NOT touch any of the varibles.
copy "%arma2srvpath%\%servername%\arma3server.RPT" "C:\arma3serverconfig\RotatedLogs\%dtStamp%\arma3server.RPT"
copy "%arma2srvpath%\%servername%\arma3server.mdmp" "C:\arma3serverconfig\RotatedLogs\%dtStamp%\arma3server.mdmp"
copy "%arma2srvpath%\%servername%\arma3server.bidmp" "C:\arma3serverconfig\RotatedLogs\%dtStamp%\arma3server.bidmp"
copy "%arma2srvpath%\%servername%\server_log.txt" "C:\arma3serverconfig\RotatedLogs\%dtStamp%\server_log.txt"
copy "%arma2srvpath%\%servername%\HiveExt.log" "C:\arma3serverconfig\RotatedLogs\%dtStamp%\HiveExt.log"
copy "%arma2srvpath%\%servername%\BattlEye\attachto.log" "C:\arma3serverconfig\RotatedLogs\%dtStamp%\BattlEye\attachto.log"
copy "%arma2srvpath%\%servername%\BattlEye\addbackpackcargo.log" "C:\arma3serverconfig\RotatedLogs\%dtStamp%\BattlEye\addbackpackcargo.log"
copy "%arma2srvpath%\%servername%\BattlEye\addweaponcargo.log" "C:\arma3serverconfig\RotatedLogs\%dtStamp%\BattlEye\addweaponcargo.log"
copy "%arma2srvpath%\%servername%\BattlEye\deletevehicle.log" "C:\arma3serverconfig\RotatedLogs\%dtStamp%\BattlEye\deletevehicle.log"
copy "%arma2srvpath%\%servername%\BattlEye\remotecontrol.log" "C:\arma3serverconfig\RotatedLogs\%dtStamp%\BattlEye\remotecontrol.log"
copy "%arma2srvpath%\%servername%\BattlEye\selectplayer.log" "C:\arma3serverconfig\RotatedLogs\%dtStamp%\BattlEye\selectplayer.log"
copy "%arma2srvpath%\%servername%\BattlEye\setvariableval.log" "C:\arma3serverconfig\RotatedLogs\%dtStamp%\BattlEye\setvariableval.log"
copy "%arma2srvpath%\%servername%\BattlEye\teamswitch.log" "C:\arma3serverconfig\RotatedLogs\%dtStamp%\BattlEye\teamswitch.log"
copy "%arma2srvpath%\%servername%\BattlEye\waypointcondition.log" "C:\arma3serverconfig\RotatedLogs\%dtStamp%\BattlEye\waypointcondition.log"
copy "%arma2srvpath%\%servername%\BattlEye\waypointstatement.log" "C:\arma3serverconfig\RotatedLogs\%dtStamp%\BattlEye\waypointstatement.log"
copy "%arma2srvpath%\%servername%\BattlEye\scripts.log" "C:\arma3serverconfig\RotatedLogs\%dtStamp%\BattlEye\scripts.log"
copy "%arma2srvpath%\%servername%\BattlEye\createvehicle.log" "C:\arma3serverconfig\RotatedLogs\%dtStamp%\BattlEye\createvehicle.log"
copy "%arma2srvpath%\%servername%\BattlEye\mpeventhandler.log" "C:\arma3serverconfig\RotatedLogs\%dtStamp%\BattlEye\mpeventhandler.log"
copy "%arma2srvpath%\%servername%\BattlEye\publicvariable.log" "C:\arma3serverconfig\RotatedLogs\%dtStamp%\BattlEye\publicvariable.log"
copy "%arma2srvpath%\%servername%\BattlEye\publicvariableval.log" "C:\arma3serverconfig\RotatedLogs\%dtStamp%\BattlEye\publicvariableval.log"
copy "%arma2srvpath%\%servername%\BattlEye\remoteexec.log" "C:\arma3serverconfig\RotatedLogs\%dtStamp%\BattlEye\remoteexec.log"
copy "%arma2srvpath%\%servername%\BattlEye\setdamage.log" "C:\arma3serverconfig\RotatedLogs\%dtStamp%\BattlEye\setdamage.log"
copy "%arma2srvpath%\%servername%\BattlEye\setpos.log" "C:\arma3serverconfig\RotatedLogs\%dtStamp%\BattlEye\setpos.log"
copy "%arma2srvpath%\%servername%\BattlEye\setvariable.log" "C:\arma3serverconfig\RotatedLogs\%dtStamp%\BattlEye\setvariable.log"
copy "%arma2srvpath%\%servername%\BattlEye\addmagazinecargo.log" "C:\arma3serverconfig\RotatedLogs\%dtStamp%\BattlEye\addmagazinecargo.log"
echo (%date%) (%time%) Logs are backed up now...
echo (%date%) (%time%) Removing original log files.
del /Q /F "%arma2srvpath%\%servername%\arma3server.RPT"
del /Q /F "%arma2srvpath%\%servername%\arma3server.mdmp"
del /Q /F "%arma2srvpath%\%servername%\arma3server.bidmp"
del /Q /F "%arma2srvpath%\%servername%\server_console.log"
del /Q /F "%arma2srvpath%\%servername%\runtime.log"
del /Q /F "%arma2srvpath%\%servername%\HiveExt.log"
del /Q /F "%arma2srvpath%\%servername%\server_log.txt"
del /Q /F "%arma2srvpath%\%servername%\BattlEye\attachto.log"
del /Q /F "%arma2srvpath%\%servername%\BattlEye\addbackpackcargo.log"
del /Q /F "%arma2srvpath%\%servername%\BattlEye\addweaponcargo.log"
del /Q /F "%arma2srvpath%\%servername%\BattlEye\deletevehicle.log"
del /Q /F "%arma2srvpath%\%servername%\BattlEye\remotecontrol.log"
del /Q /F "%arma2srvpath%\%servername%\BattlEye\selectplayer.log"
del /Q /F "%arma2srvpath%\%servername%\BattlEye\setvariableval.log"
del /Q /F "%arma2srvpath%\%servername%\BattlEye\teamswitch.log"
del /Q /F "%arma2srvpath%\%servername%\BattlEye\waypointcondition.log"
del /Q /F "%arma2srvpath%\%servername%\BattlEye\waypointstatement.log"
del /Q /F "%arma2srvpath%\%servername%\BattlEye\scripts.log"
del /Q /F "%arma2srvpath%\%servername%\BattlEye\createvehicle.log"
del /Q /F "%arma2srvpath%\%servername%\BattlEye\mpeventhandler.log"
del /Q /F "%arma2srvpath%\%servername%\BattlEye\publicvariable.log"
del /Q /F "%arma2srvpath%\%servername%\BattlEye\publicvariableval.log"
del /Q /F "%arma2srvpath%\%servername%\BattlEye\remoteexec.log"
del /Q /F "%arma2srvpath%\%servername%\BattlEye\setdamage.log"
del /Q /F "%arma2srvpath%\%servername%\BattlEye\setpos.log"
del /Q /F "%arma2srvpath%\%servername%\BattlEye\setvariable.log"
del /Q /F "%arma2srvpath%\%servername%\BattlEye\addmagazinecargo.log"

if %debug% == 1 (
timeout %dbsecs%
)

:: We're done here.
exit