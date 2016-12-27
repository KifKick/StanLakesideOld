/*
Plik: fn_statussend.sqf

Autor: Katekarin

Opis: Wysyla informacje o statusach gracza
*/

_player = player;
_uid = getPlayerUID player;
_health = myHealth;
_hunger = life_hunger;
_thirst = life_thirst;
_injuries = player getVariable "playerInjuries";
_battery = life_battery;

[_player,_uid,_thirst,_hunger,_health,_injuries,_battery] remoteExecCall ["ton_fnc_statusupdate",(call life_fnc_HCC)];