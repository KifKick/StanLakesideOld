/*
Plik: fn_statusesrequest.sqf

Autor: Katekarin

Opis: Odbiera informacje o statusie gracza i je ustawia
*/

_array = _this select 0;

life_hunger =  (_array select 0);
life_thirst =  (_array select 1);
_health = parseNumber (_array select 2);

["Set",_health] call fnc_doHealth;

//zabij gracza jezeli uzyl battleloga
if(myhealth > 0.99) exitwith {
[1,format["Gracz %1 zrobil battleloga! Tfu! Zglos go do Admina po cukierki!",profileName]] remoteExecCall ["life_fnc_broadcast",-2];
[getPlayerUID player, profileName, "","",2,"",""] remoteExecCall ["TON_fnc_deathLog", (call life_fnc_HCC)];
["Remove",1] call fnc_doHealth;
};