/*
	File: fn_medicLoadout.sqf
	
	
	Description:
	Loads the medic out with the default gear.
*/

private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

player forceaddUniform "cg_ems1";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";

player linkItem "itemRadio";

[] call life_fnc_saveGear;