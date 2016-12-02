/*
	File: fn_vehBuy.sqf

	Author:
	Katekarin

	Description:
	Kupuje pojazd
*/

closeDialog 4250;
_dbinfo = life_vehicle_imbuying getVariable ["dbInfo",[]];
if(isnil {life_vehicle_imbuying} OR isNil {life_vehicle_price} OR isNil {life_vehicle_owner}) exitWith {["Cos poszlo nie tak", false] spawn domsg;};
if(cash_in_hand < life_vehicle_price) exitWith {
	["Nie mam tylu pieniedzy aby zakupic ten pojazd!",false] spawn domsg;
};
_vehname = format[getText(configFile >> "CfgVehicles" >> (typeOf life_vehicle_imbuying) >> "displayName")];
["cash","take",life_vehicle_price] call life_fnc_handleCash;
["cash","add",life_vehicle_price] remoteExecCall ["life_fnc_handleCash", life_vehicle_owner];
[6] call SOCK_fnc_updatePartial;
life_vehicles pushBack life_vehicle_imbuying;
life_vehicle_imbuying setVariable ["vehicle_info_owners",[[getPlayerUID player,profileName]],true];
life_vehicle_imbuying setVariable ["dbInfo",[(getPlayerUID player),_dbinfo select 1],true];
[] remoteExec [{life_vehicles = life_vehicles - [life_vehicle_imbuying];}, life_vehicle_owner];
life_vehicle_imbuying setVariable ["vehselling", false, true];
_classname = typeOf life_vehicle_imbuying;
_buyerid = getPlayerUID player;
_sellerid = getPlayerUID life_vehicle_owner;
_plate = _dbinfo select 1;
[_classname,_buyerid,_sellerid,_plate] remoteExecCall ["TON_fnc_vehicleAuction",2];
[format["Pomyslnie kupilem %1 za %2 od $%3", _vehname, [life_vehicle_price] call life_fnc_numberText, name life_vehicle_owner], false] spawn domsg;
[1,format ["%1 kupil od Ciebie %2 za $%3",profileName, _vehname, [life_vehicle_price] call life_fnc_numberText]] remoteExecCall ["life_fnc_broadcast", life_vehicle_owner];



life_vehicle_imbuying = nil;
life_vehicle_price = nil;
life_vehicle_owner = nil;