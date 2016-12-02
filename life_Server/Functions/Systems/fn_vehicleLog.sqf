/*
	File: fn_moneyLog.sqf
	Creator: Katekarin
	Description:
	Logs vehicle actions
*/
private["_playerID","_playerName","_vehicleClass","_vehicleName","_type","_amount"];
_playerID = _this select 0;
_playerName = _this select 1;
_vehicleClass = _this select 2;
_vehicleName = _this select 3;
_type = _this select 4;
_amount = _this select 5;


[6] call SOCK_fnc_updatePartial;

switch (_type) do{
	case 0: {_type = "Kupno";};
	case 1: {_type = "Sprzedaz";};
	case 2: {_type = "Wyciagniecie";};
	case 3: {_type = "Schowanie";};
};

_query = format["INSERT INTO vehiclelog (playerId, playerName, vehicleClass, vehicleName, type, amount) VALUES('%1', '%2', '%3', '%4', '%5', '%6')",_playerID,_playerName,_vehicleClass,_vehicleName,_type,_amount];
[_query,1] call DB_fnc_asyncCall;