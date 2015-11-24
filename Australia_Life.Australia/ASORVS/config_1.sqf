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
ASORVS_Blacklist = ["B_Quadbike_01_F", "B_G_Offroad_01_armed_F", "B_G_Offroad_01_repair_F", "B_MRAP_01_F", "B_MRAP_01_hmg_F", "B_Truck_01_mover_F", "B_Truck_01_fuel_F", "B_G_Van_01_transport_F"];
//You can also add a blacklist per side AND/OR per faction. All blacklists that match player when ASORVS is opened will be included. Examples:
ASORVS_Blacklist_WEST = 
[];
ASORVS_Blacklist_EAST = [];
ASORVS_Blacklist_CIV = [];