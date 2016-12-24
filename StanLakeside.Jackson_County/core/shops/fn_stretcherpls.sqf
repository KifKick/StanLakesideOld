/*
	File: fn_stretcherpls
*/

if ( (side player isEqualTo independent) && (life_stretcher isEqualTo 1) ) then {
	life_stretcher = 0;
	["Stretcher spawned - You have reached your maximum of 1", false] spawn domsg;
	_location = getpos player;
	_stretcher = "cg_Stretcher" createvehicle _location;
};