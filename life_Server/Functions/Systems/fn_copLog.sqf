/*
	File: fn_copLog.sqf
	Creator: Katekarin
	Description:
	Logs cop actions
*/
private["_playerID","_playerName","_onPlayerID","_onPlayerName","_type","_amount"];
_playerID = _this select 0;
_playerName = _this select 1;
_onPlayerID = _this select 2;
_onPlayerName = _this select 3;
_type = _this select 4;
_amount = _this select 5;


[6] call SOCK_fnc_updatePartial;

switch (_type) do{
	case 0: {_type = "Mandat";};
	case 1: {_type = "Skucie";};
	case 2: {_type = "Rozkucie";};
	case 3: {_type = "Wiezienie";};
	case 4: {_type = "Dokumenty";};
	case 5: {_type = "Bronie";};
	case 6: {_type = "Strip";};
	case 7: {_type = "Spoleczne";};

};

_query = format["INSERT INTO coplog (playerId, playerName, onPlayerID, onPlayerName, type, amount) VALUES('%1', '%2', '%3', '%4', '%5', '%6')",_playerID,_playerName,_onPlayerID,_onPlayerName,_type,_amount];
[_query,1] call DB_fnc_asyncCall;