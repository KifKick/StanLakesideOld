/*
	File: fn_arrestAction.sqf
	
	Description:
	Arrests the targeted person.
*/
private["_unit","_id"];
_unit = param [0,ObjNull,[ObjNull]];
if(isNil "_unit") exitwith {}; //Not Valid
if(isNull _unit) exitWith {}; //Not valid
if(!(_unit isKindOf "Man")) exitWith {}; //Not a unit
if(!isPlayer _unit) exitWith {}; //Not a human
if(!(_unit getVariable ["restrained", false])) exitWith {}; //He's not restrained.
if(!((side _unit) in [civilian,east,independent])) exitWith {}; //Not a civ

[_unit,player,false] remoteExecCall ["life_fnc_wantedBounty",2];

detach _unit;
[_unit,false] remoteExec ["life_fnc_jail",_unit];
_playerID = getPlayerUID player;
_playerName = name player;
_toPlayerID = getPlayerUID _unit;
_toPlayerName = name _unit;
_type = 8;
[_playerID,_playerName,_toPlayerID,_toPlayerName,_type,""] remoteExecCall ["TON_fnc_moneyLog", (call life_fnc_HCC)];
closeDialog 0;
