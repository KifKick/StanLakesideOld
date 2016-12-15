/*
	File: fn_actionLog.sqf
	Creator: Katekarin
	Description:
	Logs actions
*/
private["_playerID","_playerName","_toPlayerID","_toPlayerName","_type","_amount"];
_playerID = _this select 0;
_playerName = _this select 1;
_toPlayerID = _this select 2;
_toPlayerName = _this select 3;
_type = _this select 4;
_amount = _this select 5;
_classname = _this select 6;


[6] call SOCK_fnc_updatePartial;

switch (_type) do{
	case 0: {_type = "Zwiazanie";};
	case 1: {_type = "Eskorta";};
	case 2: {_type = "Klucze";};
	case 3: {_type = "CPR";};
	case 4: {_type = "Pchniecie";};
	case 5: {_type = "Rabunek";};
	case 6: {_type = "Wyciagniecie";};
	case 7: {_type = "Rozwiazanie";};
	case 8: {_type = "WrzucenieDoPojazdu";};
	case 9: {_type = "Odrodzenie";};
	case 10: {_type = "WytrychFail";};
    case 11: {_type = "WytrychPass";};
	case 12: {_type = "PrzecinakFail";};
    case 13: {_type = "PrzecinakPass";};
};

_query = format["INSERT INTO actionlog (playerId, playerName, onPlayerID, onPlayerName, type, amount) VALUES('%1', '%2', '%3', '%4', '%5', '%6', '%7')",_playerID,_playerName,_toPlayerID,_toPlayerName,_type, _amount,_classname];
[_query,1] call DB_fnc_asyncCall;