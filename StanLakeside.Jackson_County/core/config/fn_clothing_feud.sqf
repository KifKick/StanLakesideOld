/*
	File: fn_clothing_feud.sqf
	
	
	Description:
	Master configuration file for Hess shop.
*/
private["_filter"];
_filter = param [0,0,[0]];
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Diler Families"];

switch (_filter) do
{
	case 0:
	{
		[
		];
	};

	case 1:
	{
		[
		];
	};
	
	case 2:
	{
		[
		];
	};
	
	case 3:
	{
		[
			["kev_gang_families_short_vest",nil,5000]
		];
	};

	case 4:
	{
		[
		];
	};
};
