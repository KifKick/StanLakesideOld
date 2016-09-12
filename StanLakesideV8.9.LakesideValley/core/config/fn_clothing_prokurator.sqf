/*
	File: fn_clothing_prokurator.sqf
	
	
	Description:
	Master configuration file for Prokurator shop.
*/
private["_filter"];
_filter = param [0,0,[0]];
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Sklep Prokuratorski"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["KAEL_SUITS_BR_F35",nil,1],
			["KAEL_SUITS_BR_F34",nil,1],
			["KAEL_SUITS_BR_F33",nil,1],
			["KAEL_SUITS_BR_F32",nil,1],
			["KAEL_SUITS_BR_F31",nil,1],
			["KAEL_SUITS_BR_F30",nil,1],
			["KAEL_SUITS_BR_F29",nil,1],
			["KAEL_SUITS_BR_F28",nil,1],
			["KAEL_SUITS_BR_F27",nil,1],
			["KAEL_SUITS_BR_F26",nil,1],
			["KAEL_SUITS_BR_F25",nil,1],
			["KAEL_SUITS_BR_F24",nil,1],
			["KAEL_SUITS_BR_F23",nil,1],
			["KAEL_SUITS_BR_F22",nil,1],
			["KAEL_SUITS_BR_F21",nil,1],
			["KAEL_SUITS_BR_Judge",nil,1],
			["KAEL_SUITS_BR_F3",nil,1]
		];
	};
	
	//Backpacks
	case 2:
	{
		[
			["cg_invisbp",nil,1000]
		];
	}
	
	//Vests
	case 3:
	{
		[
			["NewEden_EMS_Vests_Prokurator",nil,500],
			["NewEden_EMS_Vests_Kzimierza",nil,500]
		];
	};
};