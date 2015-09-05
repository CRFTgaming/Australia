/*File: fn_clothingMenu.sqf
Author: Bryan "Tonic" Boardwine


Description:
Opens and initializes the clothing store menu.
Started clean, finished messy.
*/
private["_list","_clothes","_pic","_pos","_oldPos","_oldDir","_filter"];
createDialog "Life_Clothing";
disableSerialization;


//Cop / Civ Pre Check
if((_this select 3) in ["bruce","dive","reb","kart"] && playerSide != civilian) exitWith {hint localize "STR_Shop_NotaCiv"; closeDialog 0;};
if((_this select 3) == "reb" && !license_civ_rebel) exitWith {hint localize "STR_Shop_NotaReb"; closeDialog 0;};
if((_this select 3) in ["cop"] && playerSide != west) exitWith {hint localize "STR_Shop_NotaCop"; closeDialog 0;};
if((_this select 3) in ["dive"] && !license_civ_dive) exitWith { hint localize "STR_Shop_NotaDive"; closeDialog 0;};


life_clothing_store = _this select 3;


//License Check?
_var = [life_clothing_store,0] call life_fnc_licenseType;
if(_var select 0 != "") then
{
if(!(missionNamespace getVariable (_var select 0))) exitWith {hint format[localize "STR_Shop_YouNeed",[_var select 0] call life_fnc_varToStr]; closeDialog 0;};
};


//dressing...
_pos = [1000,1000,10000];
_oldDir = getDir player;
_oldPos = visiblePositionASL player;
_testLogic = "Logic" createVehicleLocal _pos;
_testLogic setPosATL _pos;
_light = "#lightpoint" createVehicleLocal pos;
_light setLightBrightness 1.0;
_light setLightAmbient [0.0,1.0,0.0];
_light setLightColor [0.0,1.0,0.0];
_ut1 = "UserTexture10m_F" createVehicleLocal (_testLogic modelToWorld [0,5,10]);
_light lightAttachObject [_ut1,[0,0,0]];
_ut1 attachTo [_testLogic,[0,5,5]];
_ut1 setDir 0;
_ut4 = "UserTexture10m_F" createVehicleLocal (_testLogic modelToWorld [0,-5,10]);
_ut4 attachTo [_testLogic,[0,-5,5]];
_ut4 setDir 180;
_ut2 = "UserTexture10m_F" createVehicleLocal (_testLogic modelToWorld [5,0,10]);
_ut2 attachTo [_testLogic,[5,0,5]];
_ut2 setDir (getDir _testLogic) + 90;
_ut3 = "UserTexture10m_F" createVehicleLocal (_testLogic modelToWorld [-5,0,10]);
_ut3 attachTo [_testLogic,[-5,0,5]];
_ut3 setDir (getDir _testLogic) - 90;
_ut5 = "UserTexture10m_F" createVehicleLocal (_testLogic modelToWorld [0,0,10]);
_ut5 attachTo [_testLogic,[0,0,0]];
_ut5 setObjectTexture [0,"a3\map_data\gdt_concrete_co.paa"];
detach _ut5;
_ut5 setVectorDirAndUp [[0,0,-.33],[0,.33,0]];
_ut6 = "Land_LampAirport_F" createVehicleLocal (_testLogic modelToWorld [0,0,0]);
_ut6 attachTo [_testLogic, [4,2,0]];


{if(_x != player) then {_x hideObject true;};} foreach playableUnits;


{
_x setObjectTexture [0,"#(argb,8,8,3)color(0,0,0,1)"];
} foreach [_ut1,_ut2,_ut3,_ut4];


player attachTo [_testLogic,[0,0,0]];
player switchMove "";


//initialize camera view
life_shop_cam = "CAMERA" camCreate getPos player;
showCinemaBorder false;
life_shop_cam cameraEffect ["Internal", "Back"];
life_shop_cam camSetTarget (player modelToWorld [0,0,1]);
life_shop_cam camSetPos (player modelToWorld [1,4,2]);
life_shop_cam camSetFOV .33;
life_shop_cam camSetFocus [50, 0];
life_shop_cam camCommit 0;
life_cMenu_lock = false;


if(isNull (findDisplay 3100)) exitWith {};
_list = (findDisplay 3100) displayCtrl 3101;
_filter = (findDisplay 3100) displayCtrl 3105;
lbClear _filter;
lbClear _list;


_filter lbAdd localize "STR_Shop_UI_Clothing";
_filter lbAdd localize "STR_Shop_UI_Hats";
_filter lbAdd localize "STR_Shop_UI_Glasses";
_filter lbAdd localize "STR_Shop_UI_Vests";