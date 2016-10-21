/*
	fn_jailSetup.sqf
*/

_minutes = parseNumber life_arrestMinutes;
life_bail_amount = _minutes * 425;

_hours = floor (_minutes/60);
_minutes = _minutes % 60;

player setVariable ["restrained2", nil, true];
player setVariable ["restrained", nil, true];
player setVariable ["Escorting", nil, true];
player setVariable ["transporting", nil, true];	

if(jail_money_init && _hours > 1) then {
	_lossMoney = _hours - 1;
	_lossTotal = cash_in_bank;
	_lossTotal = _lossTotal * 0.9;
	["Za Twoj wyrok odcieto Ci 10% wyroku.", false] spawn domsg; 
};

life_is_arrested = true;
player setVariable["life_is_arrested", true, true];
life_battery = 0;
removeAllWeapons player;
{player removeMagazine _x} foreach (magazines player);
	
if(life_bail_amount < 12751) then {
	_lowsecjaillocations = [
	[9122.26,9322.41,0.089489],
	[9126.06,9318.27,0.089489],
	[9129.42,9314.56,0.089489],
	[9122.86,9307.61,0.089489],
	[9120.08,9310.6,0.089489],
	[9117.16,9313.73,0.089489]
	];
	_randomer = floor random (count _lowsecjaillocations);
	_jailpos = _lowsecjaillocations select _randomer;
	player setPos _jailpos;
	["Zostales wyslany do wiezienia.", false] spawn domsg;
} else {
	_jaillocations = [
	[9182.05,9363.55,0.454247],
	[9179.91,9365.5,0.454247],
	[9178.34,9367.44,0.454247],
	[9176.54,9369.6,0.454247],
	[9172.291,9306.136,3.197],
	[9174.49,9371.87,0.454247],
	[9172.88,9373.56,0.454247],
	[9170.67,9376.05,0.454247],
	[9168.91,9377.99,0.454247],
	[9166.97,9380.04,0.454247],
	[9165.17,9382.17,0.454247],
	[9163.34,9384.3,0.454247],
	[9161.45,9386.4,0.454247],
	[9190.7,9371.48,0.454247]
	];
	_randomer = floor random (count _jaillocations);
	_jailpos = _jaillocations select _randomer;
	player setPos _jailpos;
	[format["Twoja kaucja wynosi: %1", life_bail_amount], false] spawn domsg;
};

uiSleep 2;
[player,"cellclose"] spawn life_fnc_nearestSound;
if((player distance (getMarkerPos "jail_county_1")) > 40 && life_bail_amount < 12751) then
{
	player setPos [9295.08,9300.44,0.5143909];
};

if((player distance (getMarkerPos "jail_marker")) > 40 && life_bail_amount > 12750) then
{
	player setPos (getMarkerPos "jail_marker");
};

("A3LJAILTIME" call BIS_fnc_rscLayer) cutRsc ["a3l_jail_timer","PLAIN"]; //show
	
_sexytext = parseText format["<t font='EtelkaNarrowMediumPro' color='#ffffff' align='center' size='0.9'>%1</t>",life_arrestReason];
((uiNamespace getVariable "a3ljailtimer") displayCtrl 1101) ctrlSetStructuredText _sexytext;

[0,_minutes,_hours,0] spawn life_fnc_jailTimer;
cutText ["","BLACK IN"];
if(life_firstSpawn) then {
	life_firstSpawn = false;
	(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call life_fnc_keyHandler"];
	(findDisplay 46) displayAddEventHandler ["MouseZchanged", "_this spawn life_fnc_enableActions"];
	[] execVM "core\init_survival.sqf";
	[] call life_fnc_hudSetup;
	player setVariable ["loaded", true, true];
};