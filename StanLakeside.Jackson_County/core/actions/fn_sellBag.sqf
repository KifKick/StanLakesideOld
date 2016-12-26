/*
	File: sell bag of cash.
*/

if (typeOf _x isEqualTo "Land_Sleeping_bag_blue_folded_F") then {
detach _x;
deletevehicle _x;
if (side player isEqualTo civilian || side player isEqualTo east) then {
_money = 55000;
[format ["Zamieniles skradzione pieniadze i otrzymales $%1!",_money],30,"green"] spawn domsg;

[7] call SOCK_fnc_updatePartial;
["cash","add",_money] call life_fnc_handleCash; 
[6] call SOCK_fnc_updatePartial;
};
_money = 12500;
if (side player isEqualTo west) then {
[format ["Odzyskales skradziona torbe i otrzymujesz $%1 nagrody!",_money],30,"green"] spawn domsg;
["cash","add",_money] call life_fnc_handleCash; 
[6] call SOCK_fnc_updatePartial;
};		
};	

if (typeOf _x isEqualTo "Land_Screwdriver_V1_F") then {
if (side player isEqualTo west) then {
detach _x;
deletevehicle _x;
_money = 1000;
["cash","add",_money] call life_fnc_handleCash; 
[6] call SOCK_fnc_updatePartial;
[format ["Wymieniles nozyk na troche pieniedzy! Otrzymales %1",_money],30,"green"] spawn domsg;
};		
};	


if (typeOf _x isEqualTo "Land_ExtensionCord_F") then {
if (side player isEqualTo west) then {
detach _x;
deletevehicle _x;
_money = 1000;
["cash","add",_money] call life_fnc_handleCash; 
[6] call SOCK_fnc_updatePartial;
[format ["Wymieniles line na troche pieniedzy! Otrzymales %1",_money],30,"green"] spawn domsg;
};		
};	

