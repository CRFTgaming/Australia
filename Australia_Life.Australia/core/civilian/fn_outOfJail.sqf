/* 
  Author:  Panda
  Profile: http://steamcommunity.com/profiles/76561198145366418/
  File: fn_outOfJail.sqf
  Description: Sets old uniform when released.
*/
private["_releaseMarker"];
_releaseMarker = getMarkerPos "jail_marker";

if(player distance (_releaseMarker) < 5) then
{
	player addUniform life_pandaPrison_uniform;
	player addBackpack life_pandaPrison_backpack;
	player addHeadgear life_pandaPrison_headgear;
	player addVest life_pandaPrison_vest;
	hint "You have been released, have a nice day."
};