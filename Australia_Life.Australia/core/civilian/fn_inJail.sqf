/* 
  Author:  Panda
  Profile: http://steamcommunity.com/profiles/76561198145366418/
  File: fn_inJail.sqf
  Description: Sets Custom Loadout when in Jail.
*/

//Lets Save His Clothing for Later. (These are our Life Variables for old clothing)
life_pandaPrison_backpack = backpack player;
life_pandaPrison_uniform = uniform player;
life_pandaPrison_headgear = headgear player;
life_pandaPrison_vest = vest player;
sleep 1;

//Now strip him.
removeUniform player;
removeBackpack player;
removeHeadgear player;
removeVest player;

//Add our Prison Uniform.
player addUniform "U_C_WorkerCoveralls";

//Add food and drink Also check if he dosent have food and drink already to stop Multiple donuts + coffee been given out.
if(life_inv_donut < 1) then
{
	life_inv_donut = life_inv_donut + 1;
};

if(life_inv_coffee < 1) then
{
	life_inv_coffee = life_inv_coffee + 1;
};

[] call life_fnc_customTextures;