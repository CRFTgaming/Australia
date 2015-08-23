/*
	File: fn_jail.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the initial process of jailing.
*/
private["_bad","_unit","_time"]; //-------------Changed---------------
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
hint format["%1", _unit];
if(isNull _unit) exitWith {}; //Dafuq?
if(_unit != player) exitWith {}; //Dafuq?
if(life_is_arrested) exitWith {}; //Dafuq i'm already arrested
_bad = [_this,1,false,[false]] call BIS_fnc_param;
_time = [_this,2,15,[0]] call BIS_fnc_param;//-------------Changed--------------

player setVariable["restrained",false,true];
player setVariable["Escorting",false,true];
player setVariable["transporting",false,true];

_jaillocations = [
	[30013.277,17449.797,5],
	[30010.486,17449.848,5],
	[30007.85,17449.848,5],
	[30004.9,17449.844,5],
	[30002.053,17449.846,5],
	[29996.611,17449.844,5],
	[29999.611,17449.846,5],
	[29993.516,17449.789,5],
	[29988.127,17449.789,5],
	[29990.764,17449.791,5],
	[29982.445,17449.684,5],
	[29985.34,17449.736,5],
	[29983.377,17461.455,5],
	[29986.168,17461.371,5],
	[29988.807,17461.348,5],
	[29991.758,17461.305,5],
	[29994.609,17461.285,5],
	[30000.043,17461.217,5],
	[29997.029,17461.254,5],
	[30003.133,17461.244,5],
	[30008.52,17461.188,5],
	[30005.887,17461.211,5],
	[30014.219,17461.227,5],
	[30011.316,17461.211,5],
	[30013.277,7449.797,0],
	[30010.486,17449.848,0],
	[30007.85,17449.848,0],
	[30004.9,17449.844,0],
	[30002.053,17449.846,0],
	[29996.611,17449.844,0],
	[29999.611,17449.846,0],
	[29993.516,17449.789,0],
	[29988.127,17449.789,0],
	[29990.764,17449.791,0],
	[29982.445,17449.684,0],
	[29985.34,17449.736,0],
	[29983.377,17461.455,0],
	[29986.168,17461.371,0],
	[29988.807,17461.348,0],
	[29991.758,17461.305,0],
	[29994.609,17461.285,0],
	[30000.043,17461.217,0],
	[29997.029,17461.254,0],
	[30003.133,17461.244,0],
	[30008.52,17461.188,0],
	[30005.887,17461.211,0],
	[30014.219,17461.227,0],
	[30011.316,17461.211,0],
	[30000.207,17455.936,0]
];
_randomer = floor random (count _jaillocations);
_jailpos = _jaillocations select _randomer;

titleText[localize "STR_Jail_Warn","PLAIN"];
hint localize "STR_Jail_LicenseNOTF";
player setPos _jailpos;

if(_bad) then
{
	waitUntil {alive player};
	sleep 1;
};

//Check to make sure they goto check
if(player distance (getMarkerPos "jail_marker") > 40) then
{
	player setPos _jailpos;
};

[1] call life_fnc_removeLicenses;
if(life_inv_heroinu > 0) then {[false,"heroinu",life_inv_heroinu] call life_fnc_handleInv;};
if(life_inv_heroinp > 0) then {[false,"heroinp",life_inv_heroinp] call life_fnc_handleInv;};
if(life_inv_coke > 0) then {[false,"cocaine",life_inv_coke] call life_fnc_handleInv;};
if(life_inv_cokep > 0) then {[false,"cocainep",life_inv_cokep] call life_fnc_handleInv;};
if(life_inv_turtle > 0) then {[false,"turtle",life_inv_turtle] call life_fnc_handleInv;};
if(life_inv_cannabis > 0) then {[false,"cannabis",life_inv_cannabis] call life_fnc_handleInv;};
if(life_inv_marijuana > 0) then {[false,"marijuana",life_inv_marijuana] call life_fnc_handleInv;};
life_is_arrested = true;

removeAllWeapons player;
{player removeMagazine _x} foreach (magazines player);

[[player,_bad,_time],"life_fnc_jailSys",false,false] spawn life_fnc_MP;//-------------Changed-----------
[5] call SOCK_fnc_updatePartial;