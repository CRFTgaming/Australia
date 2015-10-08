/*
	Author: Chris(tian) "infiSTAR" Lorenzen
	Contact: infiSTAR23@gmail.com
	#651
	
	If you have given me no reason to not update you, you will receive updates at (your customers/paypal email address):
	CRFTgaming@gmail.com
*/
/* *******************Developer : infiSTAR (infiSTAR23@gmail.com)******************* */
/* **************infiSTAR Copyright®© 2011 - 2015 All rights reserved.************** */
/* *********************************www.infiSTAR.de********************************* */
_______________________________________________________________________________________
Once you purchase, your paypal email will be added to my Updater.
As soon as I am online, I will send you the most recent version, 
as that is always newer than what I have on the store (for several reasons).
However updates and support are not part of the purchase!

CONTACT INFO
http://board.infiSTAR.de
http://support.infiSTAR.de
http://dayzantihack.com/form.html (infiSTAR23@gmail.com)
_______________________________________________________________________________________
It is very important that you read through the "infiSTAR_config.sqf".
Most people want to run this on AltisLife and forget to change the settings for AltisLife in the "infiSTAR_config.sqf".
Also you may want to add/remove from the _devs or _testers arrays.

Make sure to disabled and/or remove the mods default antihack if you AltisLife / Wasteland or Epoch
_______________________________________________________________________________________
IMPORTANT - DLLs (DLLs.rar):
===================
The .dll files are not essential and not part of the purchase.

You NEEED "Visual C++ Redistributable Packages for Visual Studio 2013 - 32 Bit version"

ARMA_LOG.dll
is creating (All Logs can be found in the server .rpt file as well, if you do not want to use this dll that is fine):
A3_HACKLOG_DATE.txt
A3_SURVEILLANCELOG_DATE.txt
+[...],

ARMA_BAN.dll
is writing a ban.txt file in your servers arma3 folder, 
Arma3 will kick players with the UIDs written in that ban.txt when they try to join and print the message "you have been banned"

ARMA_LOAD.dll
Used to check for existing updates and resolving steam names of players.
(more comming soon / so actually needed now for some of the functions)
_______________________________________________________________________________________
Installation-Guide (How to install):

ON LINUX YOU NEED THIS PARAMETER: -profiles
=========================================================
SERVER:
	01. Open the .zip file you have gotten from the store and go into the subfolder "SERVER_ARMA3_FOLDER"
	02. Copy & Paste the folder "@infiSTAR_A3" (and all the DLL files from DLLs.rar) into your Arma3 server folder (not in any sub folder of the Arma3 server folder)
	03. Go into "SERVER_ARMA3_FOLDER\@infiSTAR_A3\addons\a3_infiSTAR" and modify the "infiSTAR_config.sqf" to your needs.
	04. Once you are done, make a PBO file out of the "a3_infiSTAR" folder (You can use PBO Manager or similar tools) and remove the Folder after doing that (so only the pbo is left here: "@infiSTAR_A3\addons")
	05. Modify your start .bat file or server init line so it has this "-servermod=@infiSTAR_A3;"
		Example from my test-server:
		-enableHT -autoinit "-servermod=@EpochHive;@infiSTAR_A3" "-mod=@Epoch"
	06. Open the "infiSTAR_config.sqf" and add your AdminUID(s), then check if the different settings are fine for you :) - do not edit the other files.
		It is the most important thing that you read carefully through the "infiSTAR_config.sqf" and set all settings correctly for your server.
	07. Default Open Menu Key is F1


MPMission - the hpp file (infiSTAR_AdminMenu):
	To use the infiSTAR_AdminMenu Dialog you will need to edit your current MPMission.
	Go into your servers MPMissions folder and unpack the mission pbo file you want to run.
	Now open the "description.ext" and
	
	remove "class CfgRemoteExecCommands {};" and also remove
	"
class CfgRemoteExec
{
  class Functions
  {
    mode = 1;
    jip = 0;
    class EPOCH_server_save_vehicles {
      allowedTargets=2;
      jip = 0;
    };
  };
  class Commands {mode=0;};
};
	"
	from the "description.ext"!
	After you removed that, you have to add  (just at the very bottom as last 2 lines should work fine) this:
	#include "infiSTAR_AdminMenu.hpp"
	#include "CfgRemoteExec.hpp"
	
	Now you need to copy the "infiSTAR_AdminMenu.hpp" from "MPMission Addition(s)" into the MPMission (so it is right next to your "description.ext").
	Repack the mission to a pbo again.
	You have to do this, or you will not be able to open the AdminMenu..!
	We need the CfgRemoteExec now, without it infiSTAR will not load! We are using it to distribute could instead using PublicVariables and other methods.



If you run AltisLife or 


Good to know - Keybinds:
1. You can spectate by double clicking the name of a player in the admin menu.
2. Keybinds:
	F1 - Default AdminMenu Key
	F6 - Heal Yourself
	F7 - Heal & Repair withing 15m
	F10 - Stop Spectating
	F11 - Add Ammo for current weapon
	5 - Teleport in looking direction
	6 - Eject CursorTarget
	7 - Lock & Unlock closest vehicle you are aiming at.
	8 - Upgrade building (Epoch).
	SHIFT & F2 - Adminconsole
	SHIFT & 4 - Fly Up
	SHIFT & TAB - Open Map
	SHIFT & I - Show Info about CursorTarget
	DELETE - Delete CursorTarget
	DIK_PGUP (PageUP) - Flip CursorTarget Vehicle
3. If the map is opened and you hold LEFT-ALT key, you can click on the map and teleport there!
4. If you are added in the run.sqf as an admin, you are able to change from admin to a normal player and back by typing !admin in the chat.
_______________________________________________
infiSTAR.de is used and supported by the biggest and best Communities like:

I am doing this as a passionate 1-man Project.
The tool is actively developed and updated, trying to get the best
results vs Scripters, Hackers while implementing helpful features to administrate your server(s).

I ty to help anyone who needs help but it is very easy structured and self-explaining.
The tool comes with a readme including install instructions and there is even pictures.

If you have seen my tool on another server and you are not convinced about purchasing it yourself or what it does, how it works  or just unsure if you want to purchase it for your server/community.
I can offer you to add your UID to a Test-server so you can at least get a feel of a few benefits you get.

Due to the nature of this software, it needs to be updated quite often, because of new mods, mod updates or new hacks.
I provide Updates and support for my customers for more than 2 years now.
I am happy to go on providing Updates as long as it is possible for me.

Thanks for your attention.

P.S.
Thanks to those, who help(ed) me testing new features, bugs or sending in Hacks to check against them :)
__________________________________________________
problems?
just contact me:
http://infiSTAR.de/form.html

infiSTAR.de & DayzAntiHack.com & Arma-AntiHack.com
altislifeantihack.com & arma3antihack.com & arma3-antihack.net
__________________________________________________
You(I) hereby agree to the following

TERMS AND CONDITIONS
The script (which is a plain written text) stays property of infiSTAR.
As author he is the only one allowed to modify, share (sell, post, [..]) it.
You are not allowed to copy/modify any kind of intellectual property of infiSTAR (this),
unless you are permitted by infiSTAR.
This is a one time payment for the product in its present state.
Commercial use is prohibited unless it is permitted by infiSTAR.

REFUND POLICY
You agree that infiSTAR offers no refunds and all payments are final. 
Furthermore, you shall not institute any form or charge-back for any fees paid to infiSTAR. 
You acknowledge that you have read and agree to the above Policy.


Urheber- und Leistungsschutzrechte
Die infiSTAR Dateien und ihr Inhalt unterliegen dem deutschen Urheber- und Leistungsschutzrecht.
Die unerlaubte Vervielfältigung oder Weitergabe einzelner Inhalte oder kompletter Dateien ist nicht gestattet und strafbar.
Dies ist eine einmalige Zahlung für das Produkt im Gegenwärtigen Zustand zum Zeitpunkt des Verkaufs.
Es ist ausschließlich der private und nicht kommerziellen Gebrauch erlaubt.
§ 11 UrhG
Das Urheberrecht schützt den Urheber in seinen geistigen und persönlichen Beziehungen zum Werk und in der Nutzung des Werkes.
Es dient zugleich der Sicherung einer angemessenen Vergütung für die Nutzung des Werkes.
§ 97 UrhG
Anspruch auf Unterlassung und Schadensersatz
§ 98 UrhG
Anspruch auf Vernichtung, Rückruf und Überlassung
§ 106 UrhG
Unerlaubte Verwertung urheberrechtlich geschützter Werke
(1) Wer in anderen als den gesetzlich zugelassenen Fällen ohne Einwilligung des Berechtigten ein Werk oder eine Bearbeitung oder Umgestaltung eines Werkes vervielfältigt, verbreitet oder öffentlich wiedergibt, wird mit Freiheitsstrafe bis zu drei Jahren oder mit Geldstrafe bestraft.
(2) Der Versuch ist strafbar.
/* *******************Developer : infiSTAR (infiSTAR23@gmail.com)******************* */
/* **************infiSTAR Copyright®© 2011 - 2015 All rights reserved.************** */
/* *********************************www.infiSTAR.de********************************* */