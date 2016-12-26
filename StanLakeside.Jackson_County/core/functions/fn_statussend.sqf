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

[_player,_uid,_thirst,_hunger,_health] remoteExecCall ["ton_fnc_statusupdate",2];