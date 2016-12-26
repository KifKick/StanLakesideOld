/*
	File: fn_buysellLog.sqf
	Creator: Katekarin
	Description:
	Logs selling and buying
*/
private["_playerID","_playerName","_thing","_count","_type","_amount"];
_playerID = _this select 0;
_playerName = _this select 1;
_thing = _this select 2;
_count = _this select 3;
_type = _this select 4;
_amount = _this select 5;


[6] call SOCK_fnc_updatePartial;

switch (_type) do{
	case 0: {_type = "Kupno";};
	case 1: {_type = "Sprzedaz";};
	case 2: {_type = "Kupno-v";};
	case 3: {_type = "Sprzedaz-v";};
};

_query = format["INSERT INTO buyselllog (playerId, playerName, thing, count, type, amount) VALUES('%1', '%2', '%3', '%4', '%5', '%6')",_playerID,_playerName,_thing,_count,_type,_amount];
[_query,1] call DB_fnc_asyncCall;