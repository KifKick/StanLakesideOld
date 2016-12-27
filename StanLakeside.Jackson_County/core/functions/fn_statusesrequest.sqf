/*
Plik: fn_statusesrequest.sqf

Autor: Katekarin

Opis: Wysyla zadanie o statusy gracza (glod, napojenie, zdrowie)
*/

_player = player;
_uid = getPlayerUID player;

[_uid,_player] remoteExecCall ["TON_fnc_statuses", (call life_fnc_HCC)];