/*
Function to cool player by Koil
*/
if !(cursorTarget getVariable ["restrained", false]) exitWith {["Cel nie jest skuty!", false] spawn domsg};

if(isPlayer cursorTarget) then {
	[cursorTarget] remoteExec ["life_fnc_createGarbage",cursorTarget]; //better way of handling this than infinite loop
	_playerID = getPlayerUID player;
	_playerName = name player;
	_byPlayerID = getPlayerUID cursorTarget;
	_byPlayerName = name cursorTarget;
	_type = 7;
	[_playerID,_playerName,_byPlayerID,_byPlayerName,_type,""] remoteExecCall ["TON_fnc_copLog", (call life_fnc_HCC)];
};
