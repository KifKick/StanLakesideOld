#include "..\..\script_macros.hpp"
/*
    File: fn_syncData.sqf
    Author: Bryan "Tonic" Boardwine"

    Description:
    Used for player manual sync to the server.
*/
_fnc_scriptName = "Player Synchronization";
if (isNil "life_session_time") then {life_session_time = false;};
if (life_session_time) exitWith {["Error",localize "STR_Session_SyncdAlready",[255,0,0,1],""] call UPM_fnc_showNotification;};

[] call SOCK_fnc_updateRequest;
["Info",localize "STR_Session_SyncData",nil,""] call UPM_fnc_showNotification;
[] spawn {
    life_session_time = true;
    sleep (5 * 60);
    life_session_time = false;
};
