/*
Plik: fn_statusupdate.sqf

Autor: Katekarin

Opis: Aktalizuje informacje o statusie gracza
*/

_sender = _this select 0;
_uid = _this select 1;
_thirst = _this select 2;
_hunger = _this select 3;
_health = _this select 4;
_injuries = _this select 5;
_battery = _this select 6;

if (_uid isEqualTo "") exitWith {};
_query = format ["UPDATE players SET thirst='%1', hunger='%2', health='%3', injuries='%4', battery='%5' WHERE playerid='%6'",_thirst,_hunger,_health,_injuries,_battery,_uid];
diag_log "------------- AKTUALIZACJA STATUSOW -------------";
diag_log format["QUERY: %1",_query];
diag_log "------------------------------------------------";
[_query,1] call DB_fnc_asyncCall;