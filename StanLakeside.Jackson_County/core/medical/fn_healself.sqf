/*
	Function to heal self
	fn_healself.sqf
*/

if(!life_action_inUse) then {
	life_action_inUse = true;

	if (isNull objectParent player) then  {	player switchMove "ainvpknlmstpslaywnondnon_medic"; waitUntil{animationState player != "ainvpknlmstpslaywnondnon_medic";};	};

	["Add",0.1] call fnc_doHealth;
	bleedingEffect = bleedingEffect - 8;
	if(bleedingEffect < 0) then { bleedingEffect = 0};
	player removeMagazine "cg_atf_bandage_i";

};
life_action_inUse = false;	
