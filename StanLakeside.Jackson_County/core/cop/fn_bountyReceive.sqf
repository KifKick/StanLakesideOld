/*
	File: fn_bountyReceive.sqf
	
	
	Description:
	Notifies the player he has received a bounty and gives him the cash.
*/
private["_val","_total"];
_val = param [0,"",["",0]];
_total = param [1,"",["",0]];

if(_val isEqualTo _total) then
{
	titleText[format[localize "STR_Cop_BountyRecieve",[_val] call life_fnc_numberText],"PLAIN"];
}
	else
{
	titleText[format[localize "STR_Cop_BountyKill",[_val] call life_fnc_numberText,[_total] call life_fnc_numberText],"PLAIN"];
};
["Add",20] call fnc_karma;
["bank","add", _val] call life_fnc_handleCash; 
[6] call SOCK_fnc_updatePartial;