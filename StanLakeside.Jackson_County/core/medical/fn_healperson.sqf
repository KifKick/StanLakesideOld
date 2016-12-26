/*
	Function to heal person
	fn_healperson.sqf
*/

private["_display","_curTarget"];

_curTarget = cursorTarget;

if(!life_action_inUse) then {
life_action_inUse = true;

	if (isNull objectParent player) then 
	{
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medicUp1";
		
		waitUntil{animationState player != "AinvPknlMstpSnonWnonDnon_medicUp1";};
	};

	if( side player != independent) then {
		player removeMagazine "cg_atf_bandage_i";
		["Add",0.2] remoteExecCall ["fnc_doHealth",_curTarget];
		[] remoteExec [{bleedingEffect = bleedingEffect - 12; if(bleedingEffect < 0) then { bleedingEffect = 0};},_curTarget];
	} else {
		["Add",0.2] remoteExecCall ["fnc_doHealth",_curTarget];
		[] remoteExec [{bleedingEffect = bleedingEffect - 16; if(bleedingEffect < 0) then { bleedingEffect = 0};},_curTarget];
	};



};
life_action_inUse = false;	