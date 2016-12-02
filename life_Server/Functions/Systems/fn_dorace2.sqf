racemachine2 setVariable["racing",false,true];
_storename = 1;
_skip = 0;
[1,format["GOKARTY LAKESIDE: Zaczynaja sie za 2 minuty - zapisz sie na telefonie!",_storename]] remoteExecCall ["life_fnc_broadcast", civilian];
uiSleep 60;
[1,format["GOKARTY LAKESIDE: Zaczynaja sie za 1 minute - zapisz sie na telefonie!",_storename]] remoteExecCall ["life_fnc_broadcast", civilian];
uiSleep 60;
[1,format["GOKARTY LAKESIDE: WYSCIG ROZPOCZETY!",_storename]] remoteExecCall ["life_fnc_broadcast", civilian];

racemachine2 setVariable["racing",true,true];

_randycunt = 600;

while {_randycunt > 0} do {
	_randycunt = _randycunt - 1;
	uiSleep 1;
	if(!(racemachine2 getVariable "racing")) exitWith {
		_skip = 1;
	};
};

if(_skip != 1) then {
		racemachine2 setVariable["racing",false,true];
		racemachine2 setVariable["start",false,true];
		racemachine2 setVariable["total",0,true];
		racemachine2 setVariable["racefull",false,true];
		_storename = 1;
		[1,format["GOKARTY LAKESIDE: Wyscig zostal zresetowany po 10 minutach",_storename]] remoteExecCall ["life_fnc_broadcast", civilian];
		rrvehicle1 setVelocity [0, 0, 0];
		deleteVehicle rrvehicle1;
		rrvehicle2 setVelocity [0, 0, 0];
		deleteVehicle rrvehicle2;
		rrvehicle3 setVelocity [0, 0, 0];
		deleteVehicle rrvehicle3;
		rrvehicle4 setVelocity [0, 0, 0];
		deleteVehicle rrvehicle4;
		rrvehicle5 setVelocity [0, 0, 0];
		deleteVehicle rrvehicle5;
};