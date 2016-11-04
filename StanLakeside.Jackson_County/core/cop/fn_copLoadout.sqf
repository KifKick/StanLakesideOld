/*
	File: fn_copLoadout.sqf
	
	Edited: Itsyuka
	
	Description:
	Loads the cops out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

//Load player with default cop gear.
player addUniform "police_kevuni1";
// Add shortrange radio
player linkItem "tf_anprc152";
player addBackpack "AM_PoliceBeltv2";
player addWeapon "cl3_taserM26_Yellow";
player addMagazine "cl3_taserm26mag_mpx";
player addMagazine "cl3_taserm26mag_mpx";
player addMagazine "cl3_taserm26mag_mpx";
player addMagazine "cl3_taserm26mag_mpx";
player addMagazine "cl3_taserm26mag_mpx";
player addMagazine "cl3_taserm26mag_mpx";
player addItem "cg_atf_bandage_i";
player addItem "cg_atf_bandage_i";
player addItem "cg_atf_bandage_i";
player addItem "cg_atf_bandage_i";
player addItem "cg_atf_bandage_i";
player addItem "CG_Pro_Item_i";
player addItem "CG_ATF_Handcuffs_i";
player addItem "CG_Spikes_Collapsed";
player addItem "CG_Spikes_Collapsed";
player addItem "CG_Spikes_Collapsed";
player addItem "CG_Spikes_Collapsed";
player addItem "CG_Spikes_Collapsed";
player addItem "Radar_Gun";
player addItem "ToolKit";

/* ITEMS */
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";
player linkItem "Mattaust_Keys";
[] call life_fnc_saveGear;
