/*
Plik: fn_statusesrequest.sqf

Autor: Katekarin

Opis: Otrzymuje zadanie o statusie gracza i wysyla mu je
*/

_player = _this select 1;
_uid = _this select 0;

if (isNull _player) exitWith {};

_query = format ["SELECT hunger, thirst, health FROM players WHERE playerid='%1'", _uid];
_queryResult = [_query,2] call DB_fnc_asyncCall;
diag_log "------------- AKTUALIZACJA STATUSOW -------------";
diag_log format["QUERY: %1",_query];
diag_log format["Result: %1",_queryResult];
diag_log "------------------------------------------------";

[_queryResult] remoteExec ["life_fnc_statusreceive",_player];