/*
	File: fn_clothing_oskp.sqf
	
	
	Description:
	Master configuration file for OSKP shop.
*/
private["_filter"];
_filter = param [0,0,[0]];
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Ciuchy Robocze i Uniformy O.S.K.P"];

switch (_filter) do
{
	case 0:
	{
		[
			["RR_Clothing_mechanicblue_obj",nil,500],
			["RR_Clothing_mechanicgrey_obj",nil,500],
			["TRYK_U_B_wh_blk_Rollup_CombatUniform",nil,500],
			["TRYK_shirts_TAN_PAD_YEL",nil,500],
			["TRYK_shirts_OD_PAD_YEL",nil,500],	
			["TRYK_shirts_BLK_PAD_YEL",nil,500],
			["TRYK_shirts_PAD_YEL",nil,500],
			["TRYK_shirts_TAN_PAD_RED2",nil,500],
			["TRYK_shirts_OD_PAD_RED2",nil,500],
			["TRYK_shirts_BLK_PAD_RED2",nil,500],
			["TRYK_shirts_PAD_RED2",nil,500],
			["TRYK_shirts_TAN_PAD",nil,500],
			["TRYK_shirts_OD_PAD",nil,500],
			["TRYK_shirts_BLK_PAD",nil,500],
			["TRYK_shirts_PAD",nil,500],
			["TRYK_shirts_TAN_PAD_BLU3",nil,500],
			["TRYK_shirts_OD_PAD_BLU3",nil,500],
			["TRYK_shirts_BLK_PAD_BLU3",nil,500],
			["TRYK_shirts_PAD_BLU3",nil,500],
			["TRYK_shirts_TAN_PAD_BL",nil,500],
			["TRYK_shirts_OD_PAD_BL",nil,500],
			["TRYK_shirts_BLK_PAD_BL",nil,500],
			["TRYK_shirts_PAD_BL",nil,500],
			["TRYK_shirts_TAN_PAD_BK",nil,500],
			["TRYK_shirts_OD_PAD_BK",nil,500],
			["TRYK_shirts_PAD_BK",nil,500]
		];
	};

	case 1:
	{
		[
			["a3l_hardhat",nil,500]
		];
	};
	
	case 2:
	{
		[
			["TRYK_Spset_PHC2_Glasses",nil,100],
			["TRYK_SpsetG_Glasses",nil,100],
			["Mask_M40",nil,100]
		];
	};
	
	case 3:
	{
		[
			["jamie_security",nil,1000],
			["kenny_vest_security",nil,1000],
			["kif_emt_traffic_controller_vest",nil,250],
			["NewEden_EMS_Vests_Brygadier",nil,1000],
			["NewEden_EMS_Vests_Laweta",nil,1000],
			["NewEden_EMS_Vests_Mechanik",nil,1000]
		];
	};

	case 4:
	{
		[
			["cg_invisbp",nil,1000],
			//["AM_OSKPBelt",nil,1500],
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