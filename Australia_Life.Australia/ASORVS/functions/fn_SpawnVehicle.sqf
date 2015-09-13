objNull spawn {
	sleep 2; //wait for client to be able to check vehicles positions properly again.
	_somedeleted =false;
	{
		deleteVehicle _x;
		_somedeleted =true;
	}
	forEach (ASORVS_VehicleSpawnPos nearEntities ASORVS_VehicleSpawnRadius);
	if(_somedeleted) then {
		sleep 2;
	};
	_veh = createVehicle [ASORVS_CurrentVehicle, ASORVS_VehicleSpawnPos, [], 0, "CAN_COLLIDE"];
	_veh lock 2;
	_veh setDir ASORVS_VehicleSpawnDir;
	[_veh] call life_fnc_clearVehicleAmmo;
	[[_veh,"trunk_in_use",false,true],"TON_fnc_setObjVar",false,false] spawn life_fnc_MP;
	[[_veh,"vehicle_info_owners",[[getPlayerUID player,profileName]],true],"TON_fnc_setObjVar",false,false] spawn life_fnc_MP;
};

_vehicle allowDamage true;

life_vehicles pushBack _veh;
[[getPlayerUID player,playerSide,_veh,1],"TON_fnc_keyManagement",false,false] spawn life_fnc_MP;