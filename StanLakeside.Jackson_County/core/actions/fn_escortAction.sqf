/*
	File: fn_escortAction.sqf
*/
private["_unit"];
_unit = param [0,ObjNull,[ObjNull]];
if(isNil "_unit" OR isNull _unit OR !isPlayer _unit) exitWith {};
_unit attachTo [player,[0.1,1.1,0]];
_unit setVariable["transporting", nil, true];
_unit setVariable["Escorting", true, true];
player reveal _unit;
_playerID = getPlayerUID player;
_playerName = name player;
_toPlayerID = getPlayerUID _unit;
_toPlayerName = name _unit;
_type = 1;
[_playerID,_playerName,_toPlayerID,_toPlayerName,_type,""] remoteExecCall ["TON_fnc_actionLog", (call life_fnc_HCC)];