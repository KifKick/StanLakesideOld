/*
	File: fn_clothing_reb.sqf
	
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = param [0,0,[0]];
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Sklep z ubraniami rebelii"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[

			["I_FEM_AAF_long","Female Long",5000],
			["B_FEM_AAF_Rolled","Female Rolled",5000],
			["B_FEM_NATO_Rolled","Female Rolled 3",5000],
			["U_C_DDE","Kombinezon HazMat / Uran",5000],


			["U_I_pilotCoveralls",nil,5000],
			["U_IG_Guerilla1_1",nil,5000],
			["U_I_G_Story_Protagonist_F",nil,7500],
			["U_I_G_resistanceLeader_F",nil,11500],
			["U_IG_leader","Guerilla Leader",15340],
			["U_I_GhillieSuit",nil,70000],
			["U_I_FullGhillie_lsh",nil,70000],
			["U_B_FullGhillie_lsh",nil,70000],


			//TRYK


			["TRYK_B_USMC_R_ROLL","Green Top, MARPAT Pants",2500],
			["TRYK_U_B_NATO_OCP_BLK_R_CombatUniform","Black Top, ACU Pants",2500],
			["TRYK_U_B_AOR2_GRY_CombatUniform","Grey Top, DigiGreen Pants",2500],	
			["TRYK_U_B_ARO1_CBR_CombatUniform","Desert Camo",2500],
			["TRYK_U_B_Snow_CombatUniform","Snow Camo",2500],

			["TRYK_U_B_AOR2_OD_CombatUniform","Green Top, DigiGreen Pants",3000],
			["TRYK_U_B_AOR2_BLK_CombatUniform","Black Top, DigiGreen Pants",3000],
			["TRYK_DMARPAT_T","Brown Top, DigiTan Pants",2500],
			["TRYK_U_B_ARO1_BLK_CombatUniform","Black Top, DigiTan Pants",2500],
			["TRYK_U_B_ARO1_CombatUniform","DigiTan Full",4000],
			["TRYK_U_B_NATO_OCP_R_CombatUniform","DigiGreen Full",4000],
			["TRYK_U_B_MARPAT_Wood","MARPAT Full",4000],
			["TRYK_U_B_NATO_OCP_R_CombatUniform","OCP Full",4000],

			["TRYK_SUITS_BLK_F","TRYK Black Suit",1350],
			["TRYK_SUITS_BR_F","TRYK Brown Suit",1350],
			["TRYK_U_B_PCUHsW2",nil,550],
			["TRYK_U_B_PCUHsW6",nil,550],
			["TRYK_U_B_Denim_T_WH",nil,550],
			["TRYK_U_B_Denim_T_BK",nil,550],
			["TRYK_U_B_Denim_T_BG_WH",nil,550],
			["TRYK_U_B_Denim_T_BG_BK",nil,550],
			["TRYK_U_B_RED_T_BR",nil,550],
			["TRYK_U_B_RED_T_BG_BR",nil,550],
			["TRYK_T_camo_tan",nil,550],
			["TRYK_U_taki_BL",nil,550],
			["TRYK_U_taki_BLK",nil,550],
			["TRYK_U_taki_COY",nil,550],
			["TRYK_U_taki_wh",nil,550],
			["TRYK_U_taki_G_BL",nil,550],
			["TRYK_U_taki_G_BLK",nil,550],
			["TRYK_U_taki_G_COY",nil,550],
			["TRYK_U_taki_G_WH",nil,550],
			["TRYK_U_pad_j",nil,550],
			["TRYK_U_pad_j_blk",nil,550],
			["TRYK_U_denim_jersey_blu",nil,550],
			["TRYK_U_denim_jersey_blk",nil,550],
			["TRYK_U_denim_hood_nc",nil,550],
			["TRYK_U_denim_hood_mc",nil,550],
			["TRYK_U_denim_hood_blk",nil,550],
			["TRYK_U_denim_hood_3c",nil,550],
			["TRYK_T_TAN_PAD",nil,550],
			["TRYK_T_OD_PAD",nil,550],
			["TRYK_T_BLK_PAD",nil,550],
			["TRYK_U_hood_nc",nil,550],
			["TRYK_U_hood_mc",nil,550],
			["TRYK_hoodie_Wood",nil,550],
			["TRYK_hoodie_FR",nil,550],
			["TRYK_U_pad_hood_tan",nil,550],
			["TRYK_U_pad_hood_Cl",nil,550],
			["TRYK_U_pad_hood_odBK",nil,550],
			["TRYK_U_nohoodPcu_gry",nil,550],
			["TRYK_U_pad_hood_BKT2",nil,550],
			["TRYK_U_pad_hood_Blk",nil,550],
			["TRYK_U_pad_hood_Blod",nil,550],
			["TRYK_shirts_TAN_PAD_YEL",nil,550],
			["TRYK_shirts_OD_PAD_YEL",nil,550],
			["TRYK_shirts_BLK_PAD_YEL",nil,550],
			["TRYK_shirts_PAD_YEL",nil,550],
			["TRYK_shirts_TAN_PAD_RED2",nil,550],
			["TRYK_shirts_OD_PAD_RED2",nil,550],
			["TRYK_shirts_BLK_PAD_RED2",nil,550],
			["TRYK_shirts_TAN_PAD",nil,550],
			["TRYK_shirts_OD_PAD",nil,550],
			["TRYK_shirts_BLK_PAD",nil,550],
			["TRYK_shirts_TAN_PAD_BLU3",nil,550],
			["TRYK_shirts_OD_PAD_BLU3",nil,550],
			["TRYK_shirts_BLK_PAD_BLU3",nil,550],
			["TRYK_shirts_TAN_PAD_BLW",nil,550],
			["TRYK_shirts_OD_PAD_BLW",nil,550],
			["TRYK_shirts_BLK_PAD_BLW",nil,550],
			["TRYK_shirts_TAN_PAD_BL",nil,550],
			["TRYK_shirts_TAN_PAD_BK",nil,550],
			["TRYK_shirts_BLK_PAD_BK",nil,550],
			["TRYK_shirts_DENIM_WHB_Sleeve",nil,550],
			["TRYK_shirts_DENIM_WH_Sleeve",nil,550],
			["TRYK_shirts_DENIM_RED2_Sleeve",nil,550],
			["TRYK_shirts_DENIM_R_Sleeve",nil,550],
			["TRYK_shirts_DENIM_BWH_Sleeve",nil,550],
			["TRYK_shirts_DENIM_BL_Sleeve",nil,550],
			["TRYK_shirts_DENIM_BK_Sleeve",nil,550],
			["TRYK_shirts_DENIM_ylb_Sleeve",nil,550],
			["TRYK_shirts_DENIM_od_Sleeve",nil,550],
			["TRYK_shirts_DENIM_ylb",nil,550],
			["TRYK_shirts_DENIM_WHB",nil,550],
			["TRYK_shirts_DENIM_WH",nil,550],
			["TRYK_shirts_DENIM_RED2",nil,550],
			["TRYK_shirts_DENIM_R",nil,550],
			["TRYK_shirts_DENIM_od",nil,550],
			["TRYK_shirts_DENIM_BWH",nil,550],
			["TRYK_shirts_DENIM_BL",nil,550],
			["TRYK_U_B_wh_tan_Rollup_CombatUniform",nil,550],
			["TRYK_U_B_wh_OD_Rollup_CombatUniform",nil,550],
			["TRYK_U_B_wh_blk_Rollup_CombatUniform",nil,550],
			["TRYK_U_B_BLK_tan_Rollup_CombatUniform",nil,500],
			["TRYK_U_B_BLK_OD_Rollup_CombatUniform",nil,550],
			["TRYK_U_B_AOR2_BLK_R_CombatUniform",nil,550],
			["TRYK_U_B_PCUODs",nil,550],
			["TRYK_U_B_Wood_PCUs",nil,550],
			["TRYK_U_B_Wood_PCUs_R",nil,550],
			["TRYK_U_B_UCP_PCUs",nil,550],
			["TRYK_U_B_UCP_PCUs_R",nil,550],
			["TRYK_U_B_GRY_PCUs",nil,550],
			["TRYK_U_B_GRY_PCUs_R",nil,550],
			["TRYK_U_B_PCUGs_gry",nil,550],
			["TRYK_U_B_PCUGs_BLK",nil,550],
			["TRYK_U_B_PCUGs_OD_R",nil,550],
			["TRYK_U_B_PCUGs_gry_R",nil,550],
			["TRYK_U_B_PCUGs_BLK_R",nil,550],
			["TRYK_U_B_PCUODHs",nil,550],
			["TRYK_U_B_PCUGHs",nil,550],
			["TRYK_U_B_PCUHs",nil,550],
			["TRYK_U_Bts_GRYGRY_PCUs",nil,550],
			["TRYK_U_Bts_PCUGs",nil,550],
			["TRYK_U_Bts_PCUs",nil,550],
			["TRYK_U_B_ODTANR_CombatUniformTshirt",nil,550],
			["TRYK_U_B_ODTAN_CombatUniform",nil,550],
			["TRYK_U_B_OD_OD_R_CombatUniform",nil,550],
			["TRYK_U_B_OD_OD_CombatUniform",nil,550],
			["TRYK_U_B_NATO_OCP_BLK_R_CombatUniform",nil,550],
			["TRYK_OVERALL_SAGE_BLKboots",nil,550],
			["TRYK_OVERALL_flesh",nil,550],
			["TRYK_OVERALL_SAGE_BLKboots_nk_blk",nil,550],
			["TRYK_OVERALL_nok_flesh",nil,550],
			["TRYK_HRP_USMC",nil,550],
			["TRYK_HRP_khk",nil,550],
			["TRYK_U_B_GRTANR_CombatUniformTshirt",nil,550],
			["TRYK_U_B_GRTAN_CombatUniform",nil,550],
			["TRYK_U_B_fleece_UCP",nil,550],
			["TRYK_U_B_fleece",nil,550],
			["TRYK_U_B_3CD_BLK_BDUTshirt2",nil,550],
			["TRYK_U_B_3CD_BLK_BDUTshirt",nil,550],
			["TRYK_U_B_BLK_TAN_1",nil,550],
			["TRYK_U_B_BLK_TAN_2",nil,550],
			["TRYK_U_B_ODTAN_Tshirt",nil,550],
			["TRYK_U_B_ODTAN",nil,550],
			["TRYK_U_B_OD_BLK",nil,550],
			["TRYK_U_B_OD_BLK_2",nil,550],
			["TRYK_U_B_BLK_OD",nil,550],
			["TRYK_U_B_BLK",nil,550],
			["TRYK_U_B_BLK_Tshirt",nil,550],
			["TRYK_U_B_BLKTAN",nil,550],
			["TRYK_U_B_BLKTAN_Tshirt",nil,550],
			["TRYK_U_B_C02_Tsirt",nil,550],
			["TRYK_U_B_BLTAN_T",nil,550],
			["TRYK_U_B_BLKTANR_CombatUniformTshirt",nil,550],
			["TRYK_U_B_BLKTAN_CombatUniform",nil,550],
			["TRYK_U_B_BLOD_T",nil,550],
			["TRYK_U_B_BLKBLK_R_CombatUniform",nil,550],
			["TRYK_U_B_PCUHsW3",nil,550],
			["TRYK_U_B_PCUHsW3nh",nil,550]



		];
	};
	
	//Hats
	case 1:
	{
		[
			["TRYK_H_Booniehat_AOR2",nil,105],
			["TRYK_H_Booniehat_MARPAT_WOOD",nil,105],
			["TRYK_H_Booniehat_AOR1",nil,105],
			["TRYK_H_Booniehat_JSDF",nil,105],
			["H_Bandanna_camo",nil,65],
			["jokermask","Joker Mask",500],
			["TRYK_Kio_Balaclava","Ghost Balaclava",500],
			["A3L_Halloween_JigSaw","JigSaw Mask",500],
			["kio_skl_msk","Black Skull Mask",500],
			["kio_skl_msk_grn","Green Skull Mask",500],
			["kio_skl_msk_red","Red Skull Mask",500],
			["kio_skl_msk_fire",nil,500],
			["kio_skl_msk_weed",nil,500],
			["kio_skl_msk_frost",nil,500],
			["kio_skl_msk_pun",nil,500],
			["kio_skl_msk_adc",nil,500],
			["kio_skl_msk_blood",nil,500],
			["kio_skl_msk_redranger",nil,500],
			["kio_skl_msk_UK",nil,500],
			["kio_skl_msk_US",nil,500],
			["kio_skl_msk_black",nil,500],
			["kio_skl_msk_can",nil,500],
			["kio_skl_msk_german",nil,500],
			["kio_skl_msk_GOW",nil,500],
			["kio_skl_msk_grey",nil,500],
			["kio_skl_msk_irish",nil,500],
			["kio_skl_msk_nirish",nil,500],
			["kio_skl_msk_o",nil,500],
			["kio_skl_msk_p",nil,500],
			["kio_skl_msk_scot",nil,500],
			["kio_skl_msk_fran",nil,500]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,2],
			["G_Shades_Blue",nil,2],
			["G_Sport_Blackred",nil,2],
			["G_Sport_Checkered",nil,2],
			["G_Sport_Blackyellow",nil,2],
			["G_Sport_BlackWhite",nil,2],
			["G_Squares",nil,1],
			["G_Lowprofile",nil,3],
			["G_Combat",nil,5],
			["G_Balaclava_blk",nil,137],
			["G_Balaclava_combat",nil,137],
			["G_Balaclava_lowprofile",nil,137],
			["Mask_M40","Maska przeciwgazowa, uran",500],
			["A3L_Balaclava",nil,137]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["k_rebel_1",nil,3000],
			["k_rebel_2",nil,3000],
			["k_rebel_3",nil,3000],
			["k_rebel_4",nil,3000],
			["k_rebel_5",nil,3000],
			["k_hrebel_1",nil,5000],
			["k_hrebel_2",nil,5000],
			["k_hrebel_3",nil,5000],
			["k_hrebel_4",nil,5000],
			["k_hrebel_5",nil,5000],
			["k_hrebel_6",nil,5000],
			["k_hrebel_7",nil,5000],
			["k_hrebel_8",nil,5000],
			["k_hrebel_9",nil,5000],
			["k_hrebel_10",nil,5000],	
			["k_nhrebel_3",nil,5000],
			["k_nhrebel_5",nil,5000],
			["k_nhrebel_6",nil,5000],
			["k_nhrebel_7",nil,5000],
			["k_nhrebel_8",nil,5000],
			["k_nhrebel_9",nil,5000],
			["k_nhrebel_10",nil,5000],
			["hk_rebel_1",nil,9000],
			["hk_rebel_2",nil,9000],
			["hk_rebel_5",nil,9000],
			["hk_rebel_7",nil,9000],
			["hk_rebel_9",nil,9000],
			["hk_rebel_11",nil,9000], 
			["hk_rebel_12",nil,9000],
			["hk_rebel_13",nil,9000], 
			["hk_rebel_14",nil,9000],
			["hk_rebel_15",nil,9000],
			["hk_rebel_16",nil,9000],
			["hk_rebel_17",nil,9000],
			["hk_rebel_18",nil,9000],
			["hk_rebel_19",nil,9000],
			["hk_rebel_20",nil,9000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,250],
			["B_FieldPack_ocamo",nil,300],
			["B_TacticalPack_oli","Olive Bergen",350],
			["B_Bergen_sgg","Sage Bergen",450],
			["B_Carryall_oli","Olive Carryall",500],
			["B_Carryall_khk","Khaki Carryall",500],
			//Camo Packs
			["B_AssaultPack_mcamo","MTP Assault Pack",400],
			["TRYK_B_AssaultPack_MARPAT_Wood","MARPAT Assault Pack",550],
			["TRYK_B_AssaultPack_Type2camo","Jungle Assault Pack",550],
			["TRYK_B_Kitbag_Base_JSDF","Jungle Kitbag",550],
			["B_Kitbag_mcamo","MTP Kitbag",550],
			//Belts
			["TRYK_B_Belt_AOR2",nil,300],
			["TRYK_B_Belt_CYT",nil,300],
			["TRYK_B_Belt_GR",nil,300],

			["A3L_Jungleciv","Moro Plecak",2],
			["A3L_Browngreyciv","Moro brown plecak",2]

		];
	};
};
