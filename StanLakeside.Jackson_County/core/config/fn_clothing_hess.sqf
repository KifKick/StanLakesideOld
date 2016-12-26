/*
	File: fn_clothing_hess.sqf
	
	
	Description:
	Master configuration file for Hess shop.
*/
private["_filter"];
_filter = param [0,0,[0]];
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Umundurowanie Hess Seciurities"];

switch (_filter) do
{
	case 0:
	{
		[
			["TRYK_U_B_BLK_TAN_2",nil,250],
			["TRYK_U_B_BLK_TAN_1",nil,250],
			["TRYK_U_B_BLKTAN",nil,250],
			["TRYK_U_B_BLKTAN_Tshirt",nil,250],
			["TRYK_U_B_wh_blk_Rollup_CombatUniform",nil,250]
		];
	};

	case 1:
	{
		[
			["H_Beret_blk",nil,50],
			["TRYK_H_headsetcap_blk_Glasses",nil,50],
			["H_Cap_blk",nil,50],
			["H_Orel_Kepi",nil,50],
			["H_Cap_usblack",nil,50],
			["policia_cnp_gorra",nil,50],
			["policia_uip_cap",nil,50],
			["H_Cap_tan",nil,50],
			["H_Cap_usblack",nil,50],
			["H_Beret_Colonel",nil,50]
		];
	};
	
	case 2:
	{
		[
			["TRYK_Spset_PHC2_Glasses",nil,100],
			["TRYK_SpsetG_Glasses",nil,100],
			["Mask_M40",nil,450],
			["G_Aviator",nil,25],
			["G_Tactical_Black",nil,25],
			["TRYK_TAC_EARMUFF_Gs",nil,25]
		];
	};
	
	case 3:
	{
		[
			["kev_hess_security_short_vest",nil,300],
			["kev_hess_security_heavy_vest",nil,300]
		];
	};

	case 4:
	{
		[
			["TRYK_B_Belt_BLK","Pas Hess Seciurities",250],
			["B_AssaultPack_cbr",nil,250],
			["B_AssaultPack_rgr",nil,250],
			["B_AssaultPack_khk",nil,250],
			["B_AssaultPack_sgg",nil,250],
			["B_AssaultPack_blk",nil,250],
			["B_TacticalPack_oli",nil,350],
			["B_Bergen_sgg",nil,450],
			["B_FieldPack_oli",nil,450],
			["B_FieldPack_cbr",nil,450],
			["B_FieldPack_khk",nil,450],
			["TRYK_B_Alicepack",nil,450],
			["TRYK_B_Coyotebackpack_BLK",nil,450],
			["TRYK_B_Coyotebackpack",nil,450],
			["TRYK_B_Coyotebackpack_OD",nil,450],
			["TRYK_B_Coyotebackpack_WH",nil,450],
			["TRYK_B_tube_blk",nil,450],
			["TRYK_B_tube_cyt",nil,450],
			["TRYK_B_tube_od",nil,450],
			["B_Carryall_oli",nil,500],
			["B_Carryall_khk",nil,500],
			["policia_belt","Pas Czarny",2],
			["TRYK_B_Belt_tan","Pas Brown",2],
			["TRYK_B_Belt_GR","Pas BLack",2],
			["A3L_Pinkciv","Rozowy Plecak",2],
			["A3L_Jungleciv","Moro Plecak",2],
			["A3L_Browngreyciv","Moro brown plecak",2],
			["kaelmonty",nil,550],	
			["kaelmonty2",nil,550],
			["kaelmario",nil,550],	
			["kaelsuits",nil,550],	
			["koiladc",nil,550],
			["koilbatman_1",nil,550],	
			["koilbender_1",nil,550],	
			["koilbender_2",nil,550],	
			["koilclint_1",nil,550],	
			["koileminem_1",nil,550],	
			["koilgraf_1",nil,550],	
			["koilgraf_2",nil,550],	
			["koilgraf_3",nil,550],	
			["koilhulk_1",nil,550],	
			["koiljoker_1",nil,550],	
			["koilpumpkin_1",nil,550],	
			["koilsparta_1",nil,550],	
			["koilsponge_1",nil,550],	
			["koilturtles_1",nil,550],	
			["koilkatie",nil,550],
			["koilpanda",nil,550],
			["koilaiden",nil,550],
			["koileagle",nil,550],
			["koilspecktators",nil,550],
			["koildarth",nil,550],
			["koilgucci",nil,550],
			["koilsmashing",nil,550],
			["koilgoonsquad",nil,550],
			["koilcat",nil,550],
			["koilbp_19",nil,550],	
			["koilbp_21",nil,550],	
			["koilbp_22",nil,550],
			["koilbp_1",nil,550],	
			["koilbp_2",nil,550],	
			["koilbp_3",nil,550],	
			["koilbp_4",nil,550],	
			["koilbp_5",nil,550],	
			["koilbp_6",nil,550],	
			["koilbp_7",nil,550],	
			["koilbp_8",nil,550],	
			["koilbp_9",nil,550],	
			["koilbp_10",nil,550],	
			["koilbp_11",nil,550],	
			["koilbp_12",nil,550],	
			["koilbp_13",nil,550],	
			["koilbp_14",nil,550],	
			["koilbp_15",nil,550],	
			["koilbp_16",nil,550],	
			["koilbp_17",nil,550],	
			["koilbp_18",nil,550]
		];
	};
};
