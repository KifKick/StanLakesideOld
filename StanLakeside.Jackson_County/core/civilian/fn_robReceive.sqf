/*
	File: fn_robReceive.sqf
	
*/
private["_cash"];
_cash = param [0,0,[0]];
if(_cash isEqualTo 0) exitWith {[localize "STR_Civ_RobFail", false] spawn domsg;};
_cash = round(_cash);
["cash","add",_cash] call life_fnc_handleCash; 
[2] call SOCK_fnc_updatePartial;
[format[localize "STR_Civ_Robbed",[_cash] call life_fnc_numberText], false] spawn domsg;
["Remove",30] call fnc_karma;