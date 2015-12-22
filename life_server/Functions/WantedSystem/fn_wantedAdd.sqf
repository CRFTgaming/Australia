/*
	File: fn_wantedAdd.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{
    case "1": {_type = ["Illegal Parking",2500]};
    case "2": {_type = ["Assisting a Criminal Act",2500]};
    case "3": {_type = ["Driving Without Lights",5000]};
    case "4": {_type = ["Hit and Run",5500]};
    case "5": {_type = ["Speeding",3500]};
    case "6": {_type = ["Dangerous Driving",2500]};
    case "7": {_type = ["Driving Without a License",20000]};
    case "8": {_type = ["Driving Under The Influence",20000]};
    case "9": {_type = ["Attempt Grand Theft Auto",20000]};
    case "10": {_type = ["Grand Theft Auto",30000]};
    case "11": {_type = ["Grand Theft Auto Police Vehicle",45000]};
    case "12": {_type = ["Speeding 0-20 km/h above limit",10000]};
    case "13": {_type = ["Speeding 21-40 km/h above limit",25000]};
    case "14": {_type = ["Speeding 41-60 km/h above limit",50000]};
    case "15": {_type = ["Speeding 61km/h+ above limit",75000]};
    case "16": {_type = ["Possession of an illegal vehicle",25000]};
    case "17": {_type = ["Accidental Discharge",2500]};
    case "18": {_type = ["Armed Robbery",10000]};
    case "19": {_type = ["Attempt Murder",15000]};
    case "20": {_type = ["Bank Robbery",15000]};
    case "21": {_type = ["Brandishing Weapon In Public",5000]};
    case "22": {_type = ["Kidnapping",15000]};
    case "23": {_type = ["Legal gun without Licence",5000]};
    case "24": {_type = ["Possession of firearms without a license",5000]};
    case "25": {_type = ["Manslaughter",12500]};
    case "26": {_type = ["Murder",20000]};
    case "27": {_type = ["Murder of LEO",30000]};
    case "28": {_type = ["Possession of Illegal Firearm",15000]};
    case "29": {_type = ["Attack on individuals/vehicles",10000]};
    case "30": {_type = ["Landing within City Limits",10000]};
    case "31": {_type = ["Illegal Parking Air Vehicle",10000]};
    case "32": {_type = ["Rebellion",35000]};
    case "33": {_type = ["Drunk and Disorderly",15000]};
    case "34": {_type = ["Assault/siege of capital cities",25000]};
    case "35": {_type = ["Flying without a pilots license",1500]};
    case "36": {_type = ["Trespassing",5000]};
    case "37": {_type = ["Prison Break",25000]};
	case "38": {_type = ["Drugs Transportation",15000]};
	case "39": {_type = ["Possession - Personal Use 1-5",25000]};
	case "40": {_type = ["Possession - Intent to Supply 6+",35000]};
	case "41": {_type = ["Use of Drugs in Public",15000]};
    case "42": {_type = ["Insulting the authorities",2500]};
    case "43": {_type = ["Harassment to a police officer",8000]};
    case "44": {_type = ["Entering a restricted zone",5000]};
    case "45": {_type = ["Firing on police/officials/property",5000]};
    case "46": {_type = ["Destruction of police property",15000]};
	default {_type = [];};
};

if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.
_index = [_uid,life_wanted_list] call TON_fnc_index;

if(_index != -1) then
{
	_data = life_wanted_list select _index;
	_crimes = _data select 2;
	_crimes pushBack (_type select 0);
	_val = _data select 3;
	life_wanted_list set[_index,[_name,_uid,_crimes,(_type select 1) + _val]];
}
	else
{
	life_wanted_list pushBack [_name,_uid,[(_type select 0)],(_type select 1)];
};