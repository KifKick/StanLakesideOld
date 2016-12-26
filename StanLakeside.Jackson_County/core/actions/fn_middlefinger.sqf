/*
cunt
*/

if(life_action_inuse) exitWith {};
if(life_istazed) exitWith {};
if((animationState player) isEqualTo "Incapacitated") exitWith {};
if (vehicle player != player) exitwith { };

player playActionNow "gesturefinger";
["Remove",2] call fnc_karma;