#include <macro.h>
/*
	File: fn_clothing_sert.sqf


	Description:
	Master config file for sert clothing store.
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
			["herpSERT1",nil,15],
			["herpSERT2",nil,15],
			["herpSERT3",nil,15],
			["A3L_EC_SERT",nil,15],
			["CG_SERT1",nil,15],
			["CG_SERT2",nil,15],
			["CG_SERT3",nil,15],
			["CG_SERT4",nil,15],
			["CG_SERT5",nil,15],
			["CG_SERT6",nil,15],
			["CG_SERT7",nil,15],
			["A3L_EC_SERTK","SERT V2",50],
			["U_C_DDE","Kombinezon HazMat / Uran",50],
			["RR_SWAT_UNIFORM_obj","Kombinezon SWAT",15],
			["TCG_SWAT","Komendant",15],
			["TRYK_U_B_BLK","Pilot Coveralls",15],
			["LS_Marshal_Jacket3",nil,15],
			["TRYK_U_B_OD_OD_CombatUniform",nil,15]
		];
	};

	case 1: //Czapki
	{
		_ret =
		[
			["jamie_blackhelmet","Czarny Helm Swat!",5],
			["TRYK_H_PASGT_BLK","SERT Standard Helmet",5],
			["TRYK_H_PASGT_OD",nil,5],
			["CG_sert_H7",nil,5],
			["CG_sert_H6",nil,5],
			["CG_sert_H5",nil,5],
			["CG_sert_H4",nil,5],
			["CG_sert_H3",nil,5],
			["CG_sert_H2",nil,5],
			["CG_sert_H1",nil,5],
			["H_HelmetSpecO_blk","Dowodca SERT",15],
			["H_HelmetSpecB","Helm SWAT",5],
			["TRYK_H_PASGT_OD","SERT Helmet OD",5],
			["policia_geo_boina_azul",nil,500],
			["policia_geo_boina_negra",nil,500],
			["policia_geo_boina_roja",nil,500],
			["BHD_Protec_helmet",nil,500],
			["BHD_Protec_helmet2",nil,500],
			["BHD_Protec_helmet3",nil,500]
		];
	};

	case 2: //Okulary
	{
		_ret =
		[
			["G_Combat",nil,5],
			["G_Balaclava_blk",nil,5],
			["G_Balaclava_combat",nil,5],
			["G_Balaclava_lowprofile",nil,5],
			["G_Balaclava_TI_tna_F",nil,5],
			["G_Balaclava_TI_blk_F",nil,5],
			["A3L_Balaclava",nil,6],
			["TRYK_kio_balaclava_ESS",nil,6],
			["Mask_M40","Gas Mask",5]
		];
	};

	case 3: //Kamizelki
	{
		_ret =
		[
			["kaelvest_sert7_Fix",nil,15],
			["kaelvest_sert6_Fix",nil,15],
			["kaelvest_sert5_Fix",nil,15],
			["kaelvest_sert4_Fix",nil,15],
			["kaelvest_sert3_Fix",nil,15],
			["kaelvest_sert2_Fix",nil,15],
			["SERT_VEST_GREEN",nil,15],
			["SERT_FULL_VESTGRN",nil,15],
			["SERTvest1",nil,15],
			["TRYK_V_Sheriff_BA_TB3",nil,15],
			["TRYK_V_tacv1L_BK",nil,15],
			["TRYK_V_PlateCarrier_blk",nil,15],
			["TRYK_V_PlateCarrier_blk_L",nil,15],
			["TCG_sertvest1","UniV2 SERT",15],
			["TRYK_V_tacv1LC_P2_BK","Dowodca SERT",15],
			["kif_sert_olive_vest","SERT Olive Vest",15],
			["kif_sert_olive2_vest","SERT Olive 2 Vest",15],
			["kif_swat_vest","Police SWAT Vest",15],
			["kif_swat_vest2","Police SWAT Corporal Vest",15],
			["kif_swat_vest3","Police SWAT Sergeant Vest",15],
			["kif_sert_vest","Police SERT Vest",15],
			["kif_sert_vest_moro","Police Sert MORO Vest",15]
		];
	};

	case 4: //Plecaki
	{
		_ret =
		[
			["AM_PoliceBeltv2","Police Utility Belt v2",80]
		];
	};
};

_ret;
