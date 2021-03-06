/*
	File: fn_getVehicles.sqf
	
	
	Description:
	Sends a request to query the database information and returns vehicles.
*/

params [["_pid", "", [""]], ["_side", sideUnknown, [west]], ["_type", "", [""]], ["_unit", objNull, [objNull]],
"_ret", "_tickTime", "_queryResult"];

if(_pid isEqualTo "" OR _side isEqualTo sideUnknown OR _type isEqualTo "" OR isNull _unit) exitWith
{
	if(!isNull _unit) then
	{
		[[]] remoteExec ["life_fnc_impoundMenu",_unit];
	};
};

_side = switch(_side) do
{
	case west:{"cop"};
	case east: {"civ"};
	case civilian: {"civ"};
	case independent: {"med"};
	default {"Error"};
};

if(_side isEqualTo "Error") exitWith {
	[[]] remoteExec ["life_fnc_impoundMenu",_unit];
};

_query = format["SELECT id, side, classname, type, pid, alive, active, plate, color FROM vehicles WHERE pid='%1' AND alive='1' AND active='0' AND side='%2' AND type='%3'",_pid,_side,_type];

_tickTime = diag_tickTime;
_queryResult = [_query,2,true] call DB_fnc_asyncCall;

diag_log "------------- Client Query Request -------------";
diag_log format["QUERY: %1",_query];
diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
diag_log format["Result: %1",_queryResult];
diag_log "------------------------------------------------";

if(typeName _queryResult isEqualTo "STRING") exitWith {
	[[]] remoteExec ["life_fnc_impoundMenu",_unit];
};

[_queryResult] remoteExec ["life_fnc_impoundMenu",_unit];
