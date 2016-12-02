racemachine setVariable["racing",false,true];
_storename = 1;
_skip = 0;
[1,format["WYSCIGI LAKESIDE: Zaczynaja sie za 2 minuty - zapisz sie na telefonie!",_storename]] remoteExecCall ["life_fnc_broadcast", civilian];
uiSleep 60;
[1,format["WYSCIGI LAKESIDE: Zaczynaja sie za 1 minute - zapisz sie na telefonie!",_storename]] remoteExecCall ["life_fnc_broadcast", civilian];
uiSleep 60;
[1,format["WYSCIGI LAKESIDE: WYSCIG ROZPOCZETY!",_storename]] remoteExecCall ["life_fnc_broadcast", civilian];

racemachine setVariable["racing",true,true];

_randycunt = 600;

while {_randycunt > 0} do {
	_randycunt = _randycunt - 1;
	uiSleep 1;
	if(!(racemachine getVariable "racing")) exitWith {
		_skip = 1;
	};
};

if(_skip != 1) then {
		racemachine setVariable["racing",false,true];
		racemachine setVariable["start",false,true];
		racemachine setVariable["total",0,true];
		racemachine setVariable["racefull",false,true];
		_storename = 1;
		[1,format["WYSCIGI LAKESIDE: Wyscig zostal zresetowany po 10 minutach",_storename]] remoteExecCall ["life_fnc_broadcast", civilian];
		rvehicle1 setVelocity [0, 0, 0];
		deleteVehicle rvehicle1;
		rvehicle2 setVelocity [0, 0, 0];
		deleteVehicle rvehicle2;
		rvehicle3 setVelocity [0, 0, 0];
		deleteVehicle rvehicle3;
		rvehicle4 setVelocity [0, 0, 0];
		deleteVehicle rvehicle4;
		rvehicle5 setVelocity [0, 0, 0];
		deleteVehicle rvehicle5;
		rvehicle6 setVelocity [0, 0, 0];
		deleteVehicle rvehicle6;
		rvehicle7 setVelocity [0, 0, 0];
		deleteVehicle rvehicle7;
		rvehicle8 setVelocity [0, 0, 0];
		deleteVehicle rvehicle8;
};