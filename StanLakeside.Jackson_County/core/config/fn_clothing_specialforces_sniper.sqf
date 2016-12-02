#include <macro.h>
/*
	File: fn_clothing_specialforces_sniper.sqf


	Description:
	Master config file for sert sniper clothing store.
*/
private["_filter","_ret"];
_filter = param [0,0,[0]];
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Umundurowanie SERT"];


_ret = [];
switch (_filter) do
{
	case 0: //Mundury
	{
		_ret =
		[
			["U_I_FullGhillie_ard",nil,15],
			["U_O_FullGhillie_ard",nil,15],
			["U_B_FullGhillie_ard",nil,15],
			["U_O_T_FullGhillie_tna_F",nil,15],
			["U_B_T_FullGhillie_tna_F",nil,15],
			["U_I_FullGhillie_lsh",nil,15],
			["U_O_FullGhillie_lsh",nil,15],
			["U_B_FullGhillie_lsh",nil,15],
			["U_I_FullGhillie_sard",nil,15],
			["U_O_FullGhillie_sard",nil,15],
			["U_O_T_Sniper_F",nil,15],
			["U_B_T_Sniper_F",nil,15],
			["U_I_GhillieSuit",nil,15],
			["U_O_GhillieSuit",nil,15],
			["U_B_GhillieSuit",nil,15]
		];
	};

	case 1: //Czapki
	{
		_ret =
		[
		];
	};

	case 2: //Okulary
	{
		_ret =
		[
			["TRYK_H_ghillie_over_green",nil,5],
			["TRYK_H_ghillie_top_green",nil,5],
			["TRYK_H_ghillie_top_headless_green",nil,5],
			["TRYK_H_ghillie_over",nil,5],
			["TRYK_H_ghillie_top",nil,5],
			["TRYK_H_ghillie_top_headless",nil,5]
		];
	};

	case 3: //Kamizelki
	{
		_ret =
		[
		];
	};

	case 4: //Plecaki
	{
		_ret =
		[
			["AM_PoliceBeltv3","Police Utility Belt v3",80]
		];
	};
};

_ret;
