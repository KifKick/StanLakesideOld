/*
Plik: fn_statusesreceive.sqf

Autor: Katekarin

Opis: Odbiera informacje o statusie gracza i je ustawia
*/

_array = _this select 0;

life_hunger =  (_array select 0);
life_thirst =  (_array select 1);
_health = parseNumber (_array select 2);
_injuries = call compile (_array select 3);
life_battery = (_array select 4);

player setVariable ["playerInjuriesToUpdate",_injuries,false];

[] spawn fnc_doInjuriesUpdate;

["Set",_health] call fnc_doHealth;

//zabij gracza jezeli uzyl battleloga
if(myhealth > 0.99) exitwith {
[getPlayerUID player, profileName, "","",2,"",""] remoteExecCall ["TON_fnc_deathLog", (call life_fnc_HCC)];
["Remove",1] call fnc_doHealth;
};