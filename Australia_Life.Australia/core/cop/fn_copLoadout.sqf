#include <macro.h>
/*
	File: fn_copLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Itsyuka
	
	Description:
	Loads the cops out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

if(__GETC__(life_coplevel) == 0) then
{
//Load player with default cop gear.
player addUniform "police1";
player addVest "V_TacVest_blk_POLICE";
player addHeadgear "H_Cap_police";
//weapons
player addWeapon "DDOPP_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
//items
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemRadio";
player assignItem "ItemRadio";
};

if(__GETC__(life_coplevel) == 1) then
{
//Load player with default cop gear.
player addUniform "police1";
player addVest "V_TacVest_blk_POLICE";
player addHeadgear "H_Cap_police";
//weapons
player addWeapon "DDOPP_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
//items
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemRadio";
player assignItem "ItemRadio";
};

if(__GETC__(life_coplevel) == 2) then
{
//Load player with default cop gear.
player addUniform "APD_basic";
player addVest "V_TacVest_blk_POLICE";
player addHeadgear "H_Cap_police";
//weapons
player addWeapon "DDOPP_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
//items
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemRadio";
player assignItem "ItemRadio";
};

if(__GETC__(life_coplevel) == 3) then
{
//Load player with default cop gear.
player addUniform "APD_basic";
player addVest "V_TacVest_blk_POLICE";
player addHeadgear "H_Cap_police";
//weapons
player addWeapon "DDOPP_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
//items
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemRadio";
player assignItem "ItemRadio";
};

if(__GETC__(life_coplevel) == 4) then
{
//Load player with default cop gear.
player addUniform "APD_basic";
player addVest "V_TacVest_blk_POLICE";
player addHeadgear "H_Cap_police";
//weapons
player addWeapon "DDOPP_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
//items
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemRadio";
player assignItem "ItemRadio";
};

if(__GETC__(life_coplevel) == 5) then
{
//Load player with default cop gear.
player addUniform "APD_basic";
player addVest "V_TacVest_blk_POLICE";
player addHeadgear "H_Cap_police";
//weapons
player addWeapon "DDOPP_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
//items
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemRadio";
player assignItem "ItemRadio";
};

if(__GETC__(life_coplevel) == 6) then
{
//Load player with default cop gear.
player addUniform "APD_basic";
player addVest "V_TacVest_blk_POLICE";
player addHeadgear "H_Cap_police";
//weapons
player addWeapon "DDOPP_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
//items
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemRadio";
player assignItem "ItemRadio";
};

if(__GETC__(life_coplevel) == 7) then
{
//Load player with default cop gear.
player addUniform "APD_basic";
player addVest "V_TacVest_blk_POLICE";
player addHeadgear "H_Cap_police";
player addWeapon "DDOPP_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
//items
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemRadio";
player assignItem "ItemRadio";
};

if(__GETC__(life_coplevel) == 8) then
{
//Load player with default sheriff's gear.
player addUniform "sheriff1";
player addVest "TRYK_v_Sheriff_BA_OD";
player addHeadgear "pcapgreen";
addGoggles "G_Aviator";
//weapons
player addWeapon "hgun_mas_glocksf_F";
player addMagazine "12Rnd_mas_45acp_Mag";
player addMagazine "12Rnd_mas_45acp_Mag";
player addWeapon "DDOPP_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
//items
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemRadio";
player assignItem "ItemRadio";
};

[] call life_fnc_Uniformscolor;
[] call life_fnc_saveGear;