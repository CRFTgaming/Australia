#include <macro.h>
//this addAction [""Spawn Cars"", {[[""cars""], [""B_Quadbike_01_F"", ""B_G_Offroad_01_F"", ""B_G_Offroad_01_armed_F"", ""B_G_Offroad_01_repair_F"", ""B_MRAP_01_F"",
                                                 ""B_MRAP_01_hmg_F"", ""B_Truck_01_mover_F"", ""B_Truck_01_fuel_F"", ""B_G_Van_01_transport_F""], ""cop_car_3""] execvm ""ASORVS\open.sqf"";}];
if(__GETC__(life_coplevel) == 9) then
  {
    [] execVM "ASORVS\config_9.sqf";
  };
if(__GETC__(life_coplevel) == 8) then
  {
    [] execVM "ASORVS\config_8.sqf";
  };
if(__GETC__(life_coplevel) == 7) then
  {
    [] execVM "ASORVS\config_7.sqf";
  };
if(__GETC__(life_coplevel) == 6) then
  {
    [] execVM "ASORVS\config_6.sqf";
  };
if(__GETC__(life_coplevel) == 5) then
  {
    [] execVM "ASORVS\config_5.sqf";
  };
if(__GETC__(life_coplevel) == 4) then
  {
    [] execVM "ASORVS\config_4.sqf";
  };
if(__GETC__(life_coplevel) == 3) then
  {
    [] execVM "ASORVS\config_3.sqf";
  };
if(__GETC__(life_coplevel) == 2) then
  {
    [] execVM "ASORVS\config_2.sqf";
  };
if(__GETC__(life_coplevel) == 1) then
  {
    [] execVM "ASORVS\config_1.sqf";
  };
if(__GETC__(life_coplevel) == 0) then
  {
    [] execVM "ASORVS\config_0.sqf";
  };