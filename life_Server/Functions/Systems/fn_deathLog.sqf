/*
	File: fn_deathLog.sqf
	Creator: Katekarin
	Description:
	Logs deaths
*/
private["_playerID","_playerName","_byPlayerID","_byPlayerName","_type","_weapon","_distance"];
_playerID = _this select 0;
_playerName = _this select 1;
_byPlayerID = _this select 2;
_byPlayerName = _this select 3;
_type = _this select 4;
_weapon = _this select 5;
_distance = _this select 6;

[6] call SOCK_fnc_updatePartial;

switch (_type) do{
	case 0: {_type = "Zabojstwo";};
	case 1: {_type = "Smierc";};
	case 2: {_type = "Battlelog";};
};

_query = format["INSERT INTO deathlog (playerId, playerName, byPlayerID, byPlayerName, type, weapon, distance) VALUES('%1', '%2', '%3', '%4', '%5', '%6', '%7')",_playerID,_playerName,_byPlayerID,_byPlayerName,_type,_weapon,_distance];
[_query,1] call DB_fnc_asyncCall;