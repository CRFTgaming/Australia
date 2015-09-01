@echo off
::MAKE SURE ALL TASKS ARE REALLY STOPPED

taskkill /f /fi "status eq not responding" /im arma3server.exe
taskkill /f /im arma3server.exe
timeout 1

::IF YOU PLAY ON SAME PC AS SERVER, SOMETIMES RESTARTS GET HUNG UP BECAUSE OF IT SO MAKE SURE TO KILL CLIENTSIDE TOO, I DONT, BUT JUST IN CASE YOU DO

taskkill /f /fi "status eq not responding" /im arma3.exe
taskkill /f /im arma3.exe
timeout 1

::SHUTDOWN SERVERMONITOR IF IT IS ALREADY RUNNING - WE RESTART IT AT THE END OF THIS
taskkill /f /im cmd.exe /fi "windowtitle eq servermonitor.bat"
echo Make sure all is clear


::I ROTATE MY RPT LOGS AS TO NOT GET ALL CLUTTERED IT WILL ROTATE PER DAY SO YOU WONT SEE YESTERDAYS
::I WILL ADD THE FILE IN HERE BUT NOT REQUIRED IF NOT USING, SIMPLY DELETE THIS BLOCK
set RotatePath="C:\arma3serverconfig\"
cd /d %RotatePath%
start "" "rotate_logs.bat"
timeout 10
echo Logs Rotated...Starting Server


::RESTARTING THE ARMA 3 SERVER BE SURE TO EDIT THIS TO YOUR SERVER .EXE LOCATION -NOTE ALSO THIS IS WHERE YOU DEFINE WHERE YOU CONFIG.CFG IS
cd C:\Program Files (x86)\Steam\steamapps\common\Arma 3 Server
timeout 3
start "arma3" /min /high "arma3server.exe" -port=2302 "-config=C:\arma3serverconfig\config.cfg" "-cfg=C:\arma3serverconfig\basic.cfg" "-profiles=C:\arma3serverconfig\Users" -name=arma3serverconfig "-mod=@extDB;@life_server;curator;heli;kart;mark;@CRFT compiled mod pack;@allinarmaterrainpack;@Australia" -world=empty -nosplash -noSound -noPause -enableHT -malloc=system 
timeout 6
echo ARMA 3 Server has started

:: THIS RUNS THE SERVER MONITOR FOR YOU SO YOU DON'T FORGET
::set ServerMonitorPath="C:\arma3serverconfig\"
::cd /d %ServerMonitorPath%
::start "" "servermonitor.bat"
::echo Server Monitor has started. Have Fun
::timeout 5
exit 