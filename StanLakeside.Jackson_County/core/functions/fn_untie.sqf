/*
	File: fn_untie.sqf
*/
private["_unit"];
_unit = cursorTarget;
if((life_action_inUse) || (player getVariable ["tied", false]) || (player getVariable ["restrained", false])) exitWith { 
["Nie mozesz tego zrobic.", false] spawn domsg;
titleFadeOut 5;
}; 
if(isNull _unit || !(_unit getVariable ["tied", false])) exitWith {};

_unit setVariable["tied", nil, true];
_playerID = getPlayerUID player;
_playerName = name player;
_toPlayerID = getPlayerUID _unit;
_toPlayerName = name _unit;
_type = 7;
[_playerID,_playerName,_toPlayerID,_toPlayerName,_type,""] remoteExecCall ["TON_fnc_actionLog", (call life_fnc_HCC)];
//[0,format["%1 was released by %2.", name _unit, name player]] remoteExecCall ["life_fnc_broadcast", west];