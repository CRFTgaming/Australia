#include <macro.h>
ASORVS_SideRestriction = true;

ASORVS_BrightMaps = [];

ASORVS_UnitInsigniaAsBackground = false;
//Background logo. Can be in a mod or in a mission. .paa (recommended) or .jpg
ASORVS_BackgroundLogo =   "A3\ui_f\data\Logos\arma3_expansion_ca.paa";
//ASORVS_BackgroundLogo = "clan_logo.jpg"; //Image in your mission folder.
//ASORVS_BackgroundLogo = "clan-textures\clan_logo.paa"; //Image in clan-textures.pbo addon

//Background tile (Arma 3 loading screen noise)
ASORVS_BackgroundTile = "A3\ui_f\data\GUI\cfg\LoadingScreens\loadingnoise_ca.paa";

//Items that should not be shown in any lists
ASORVS_Blacklist = [];
//You can also add a blacklist per side AND/OR per faction. All blacklists that match player when ASORVS is opened will be included. Examples:
if(__GETC__(life_coplevel) > 0) then // Vehicles available to cops level 1 or higher.
   	{
   		ASORVS_Blacklist_WEST = 
   		[
   			"B_G_Offroad_01_F ", 
   			"B_G_Offroad_01_armed_F", 
   			"B_G_Offroad_01_repair_F", 
   			"B_MRAP_01_F", 
   			"B_MRAP_01_hmg_F", 
   			"B_Truck_01_mover_F", 
   			"B_Truck_01_fuel_F", 
   			"B_G_Van_01_transport_F"
   		];
   	};
if(__GETC__(life_coplevel) > 1) then // Vehicles available to cops level 2 or higher.
	{
   		ASORVS_Blacklist_WEST = 
   		[
   			"B_G_Offroad_01_F ", 
   			"B_G_Offroad_01_armed_F", 
   			"B_G_Offroad_01_repair_F", 
   			"B_MRAP_01_F", 
   			"B_MRAP_01_hmg_F", 
   			"B_Truck_01_mover_F", 
   			"B_Truck_01_fuel_F", 
   			"B_G_Van_01_transport_F"
   		];
	};
if(__GETC__(life_coplevel) > 2) then // Vehicles available to cops level 3 or higher.
    {
   		ASORVS_Blacklist_WEST = 
   		[
   			"B_G_Offroad_01_armed_F", 
   			"B_G_Offroad_01_repair_F", 
   			"B_MRAP_01_F", 
   			"B_MRAP_01_hmg_F", 
   			"B_Truck_01_mover_F", 
   			"B_Truck_01_fuel_F", 
   			"B_G_Van_01_transport_F"
   		];
    };
if(__GETC__(life_coplevel) > 3) then // Vehicles available to cops level 4 or higher.
    {
   		ASORVS_Blacklist_WEST = 
   		[
   			"B_G_Offroad_01_repair_F", 
   			"B_MRAP_01_F", 
   			"B_MRAP_01_hmg_F", 
   			"B_Truck_01_mover_F", 
   			"B_Truck_01_fuel_F", 
   			"B_G_Van_01_transport_F"
   		];
    };
if(__GETC__(life_coplevel) > 4) then // Vehicles available to cops level 5 or higher.
	{
   		ASORVS_Blacklist_WEST = 
   		[
   			"B_MRAP_01_F", 
   			"B_MRAP_01_hmg_F", 
   			"B_Truck_01_mover_F", 
   			"B_Truck_01_fuel_F", 
   			"B_G_Van_01_transport_F"
   		];
	};
if(__GETC__(life_coplevel) > 5) then // Vehicles available to cops level 6 or higher.
	{	
   		ASORVS_Blacklist_WEST = 
   		[
   			"B_MRAP_01_hmg_F", 
   			"B_Truck_01_mover_F", 
   			"B_Truck_01_fuel_F", 
   			"B_G_Van_01_transport_F"
   		];
    };
if(__GETC__(life_coplevel) > 6) then // Vehicles available to cops level 7 or higher.
	{	
   		ASORVS_Blacklist_WEST = 
   		[
   			"B_Truck_01_mover_F", 
   			"B_Truck_01_fuel_F", 
   			"B_G_Van_01_transport_F"
   		];
    };
if(__GETC__(life_coplevel) > 7) then // Vehicles available to cops level 8 or higher.
    {	
   		ASORVS_Blacklist_WEST = 
   		[
   			"B_Truck_01_fuel_F", 
   			"B_G_Van_01_transport_F"
   		];
    };
if(__GETC__(life_coplevel) > 8) then // Vehicles available to cops level 8 or higher.
    {	
   		ASORVS_Blacklist_WEST = 
   		[
   			"B_G_Van_01_transport_F"
   		];
    };
if(__GETC__(life_coplevel) > 9) then // Vehicles available to cops level 8 or higher.
    {	
   		ASORVS_Blacklist_WEST = 
   		[
   		];
    };
ASORVS_Blacklist_EAST = [];
ASORVS_Blacklist_CIV = ["B_Quadbike_01_F", "B_G_Offroad_01_F ", "B_G_Offroad_01_armed_F", "B_G_Offroad_01_repair_F", "B_MRAP_01_F", "B_MRAP_01_hmg_F", "B_Truck_01_mover_F", "B_Truck_01_fuel_F", "B_G_Van_01_transport_F"];