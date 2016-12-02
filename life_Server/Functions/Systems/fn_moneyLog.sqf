/*
	File: fn_moneyLog.sqf
	Creator: Maihym
	Description:
	Logs money
*/
private["_playerID","_playerName","_toPlayerID","_toPlayerName","_type","_amount"];
_playerID = _this select 0;
_playerName = _this select 1;
_toPlayerID = _this select 2;
_toPlayerName = _this select 3;
_type = _this select 4;
_amount = _this select 5;


[6] call SOCK_fnc_updatePartial;

switch (_type) do{
	case 0: {_type = "Wplata";};
	case 1: {_type = "Transfer";};
	case 2: {_type = "Przekazanie";};
	case 3: {_type = "Podniesienie";};
	case 4: {_type = "Wyplata";};
	case 5: {_type = "WplataGangu";};
	case 6: {_type = "WyplataGangu";};
};

_query = format["INSERT INTO moneylog (playerId, playerName, toPlayerID, toPlayerName, type, amount) VALUES('%1', '%2', '%3', '%4', '%5', '%6')",_playerID,_playerName,_toPlayerID,_toPlayerName,_type,_amount];
[_query,1] call DB_fnc_asyncCall;