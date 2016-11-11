/*
	File: fn_clothing_reb.sqf
	
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = param [0,0,[0]];
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Sklep z ubraniami gangsterow"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["TRYK_U_B_PCUHsW3nh",nil,550]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["kio_skl_msk_fran",nil,500]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["A3L_Balaclava",nil,137]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["hk_rebel_20",nil,9000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["A3L_Browngreyciv","Moro brown plecak",2]

		];
	};
};
