params ["_keys"];

{
	if !(_x in life_vehicles) then { life_vehicles pushback _x; };
} foreach _keys;

["O, wypadly jakies kluczyki!", false] spawn domsg;