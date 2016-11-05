/*
	File: fn_putInCar.sqf
	
	
	Description:
	Finds the nearest vehicle and loads the target into the vehicle.
*/
private["_unit"];
_unit = param [0,ObjNull,[ObjNull]];
if(isNull _unit OR !isPlayer _unit) exitWith {};

_nearestVehicle = nearestObjects[getPosATL player,["Car","Motorcycle","Bicycle","Motorbike","Ship","Submarine","Air"],10] select 0;
if(isNil "_nearestVehicle") exitWith {[localize "STR_NOTF_VehicleNear", false] spawn domsg;};

detach _unit;
[_nearestVehicle] remoteExecCall ["life_fnc_moveIn",_unit];
_unit setVariable["Escorting", nil, true];
_unit setVariable["transporting", true, true];
_playerID = getPlayerUID player;
_playerName = name player;
_toPlayerID = getPlayerUID _unit;
_toPlayerName = name _unit;
_type = 8;
[_playerID,_playerName,_toPlayerID,_toPlayerName,_type,""] remoteExecCall ["TON_fnc_actionLog", (call life_fnc_HCC)];