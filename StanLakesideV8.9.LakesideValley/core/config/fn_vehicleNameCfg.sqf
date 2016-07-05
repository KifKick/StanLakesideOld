#include <macro.h>
/*
	File:
	
	VEHICLES ARE 10% of WHAT THEY ARE IN HERE.
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_className","_vehicles"];
_className = param [0,"",[""]];
if(_className == "") exitWith {nil};
_return = nil;

_vehicles =
[
	["A3L_CVPI_HWY_LB","[PD][A] Ford CV"],
	["A3L_CVPI_HWY_LB_Blue","[SO][A] Ford CV (niebieski) [A3L]"],
	["A3L_CVPI_Sheriff_LB","[SO][A] Ford CV (czarny) [A3L]"],
	["A3L_CVPI_Corrections_LB","[CO][A] Ford CV [A3L]"],
	["cg_ss2","[SO][A] Ford CV [CG]"],
	["cg_CVPIFPBLBPD","[PD][A] Ford CV [CG]"],
	["A3L_CVPI_Sheriff_Slick","[SO][A] Ford CV Slicktop [A3L]"],
	["A3L_CVPI_HWY_Slick","[PD][A] Ford CV Slicktop [A3L]"],
	["A3L_CVPI_HWY_Slick_Blue","[SO][A] Ford CV Slicktop (niebieski) [A3L]"],
	["cg_CVPIFPBPD","[PD][A] Ford CV Slicktop [CG]"],
	["cg_CVPISH","[SO][A] Ford CV Slicktop [CG]"],

	["bv_the_crowner_cop_patrol","[PD][A] Ford CV Slicktop [BV]"],
	["bv_caressa_gt_cop_patrol","[PL][E] Porsche Caressa [BV]"],
	["bv_458_cop_patrol","[PL][E] Ferrari 485 [BV]"],
	
	//DOC
	["A3L_TaurusCO2","[CO][A] Ford Taurus Slicktop [A3L]"],
	["cg_evocor1","[CO][E] Mitsubishi Evo [CG]"],
	["A3L_SuburbanDOC","[CO][S] Suburban [A3L]"],
	["charger_cor_skinned","[CO][A] Charger"],

	//PD
	["cg_TaurusPD2","[CO][A] Ford Taurus Slicktop [CG]"],
	["cg_TaurusPD1","[CO][A] Ford Taurus [CG]"],
	["DAR_TahoePoliceSlick","[PD][A] Chevrolet Tahoe Slicktop [DAR]"],
	["DAR_ExplorerPolice","[PD][A] Ford Explorer [DAR]"],
	["cg_evopol1","[PD][E] Mitsubishi Evo [CG]"],
	["charger_pd_skinned","[PD][A] Charger"],

	//SO
	["burnes_foxhound_w","[PD][D] Foxhound"],
	["cg_TaurusSS1","[SO][A] Ford Taurus [CG]"],
	["cg_TaurusSS2","[SO][A] Ford Taurus Slicktop [CG]"],
	["A3L_SuburbanCSO","[SO][A] Suburban [A3L]"],
	["DAR_ExplorerSheriff","[SO][A] Ford SUV [DAR]"],
	["cg_evoss1","[SO][E] Mitsubishi Evo [DAR]"],
	["charger_sh","[SO][A] Charger"],
	["A3L_TaurusFPBLBCSO","[SO][A] Ford Taurus [A3L]"],
	["cg_taurustrooperf","[ST][A] Ford Taurus [CG]"],
	["cg_trooperevo","[ST][E] Mitsubishi Evo [CG]"],
	["charger_st","[ST][A] Charger"],
	["charger_trp_skinned","[ST][A] Charger"],
	
	//SERT
	["cg_suburban_sert_pol","[PD][D] Suburban (podnosnik) [CG]"],
	["cg_evoSERT1","[PD][D/E] Mitsubishi Evo [CG]"],
	["charger_sert","[PD][A/E] Charger"],
	["cg_h2_sert","[PD][E] Hummer H2 [CG]"],
	["DAR_SWATPolice","[PD][E] Lenco Razorback [DAR]"],
	["A3L_GMC_Van_Swat","[PD][E] GMC[A3L]"],

	["bv_the_crowner_uc","Ford Crowner (uc)"],
	["cg_hummer_h1_noir","Hummer H1 (uc)"],
	["critgamin_vangmcc_civ_noir","GMC (uc)"],
	["AM_Escalade_SERT","Cadillac Escalade (uc)"],
	
	//Misc
	["A3L_TaurusUC","Ford Taurus Czarny (uc)"],
	["A3L_TaurusUCBlue","Ford Taurus Niebieski (uc)"],
	["A3L_TaurusUCGrey","Ford Taurus Szary (uc)"],
	["A3L_TaurusUCRed","Ford Taurus Czerwony (uc)"],
	["A3L_TaurusUCWhite","Ford Taurus Bialy (uc)"],
	["cg_audi_rs4_pol_noir","Audi RS4"],
	["cg_peugeot_508_pol_d","[PD] Peugot 508 [CG]"],
	["cg_mercedes_sprinter_pol_base_reg","[PD]Mercedes Sprinter [CG]"],
	["cg_ducati_pol_reg","[PD] Ducati [CG]"],
	["A3L_GrandCaravanUC","Caravan Bialy (uc) [A3L]"],
	["A3L_GrandCaravanUCBlack","Caravan Czarny (uc) [A3L]"],
	["DAR_TahoePoliceDet","Chevrolet Tahoe Czarny (uc)"],
	["DAR_ExplorerPoliceStealth","Ford Explorer Czarny (uc)"],
	["A3L_Suburban_UM_Black","Suburban Opancerzony (uc)"],
	["A3L_jailBus","[CO] Wiezniarka"],
	["A3L_ChargerUC","Charger Czarny (uc)"],
	["A3L_ChargerUCWhite","Czarger Bialy (uc)"],
	["cg_brinks_bank_noir","Brinks"]
];
{
	if(_x select 0 == _className) exitWith {_return = _x select 1};
} forEach _vehicles;
_return;

/*
["cg_merc_atego_firetruck_reg",25000],
	["ivory_wrx_marked",200000],
	["ivory_wrx_unmarked",200000],
	["ivory_wrx_slicktop",200000],
	
	["ivory_m3_marked",200000],
	["ivory_m3_unmarked",200000],
	["ivory_m3_slicktop",200000],

	["ivory_isf_marked",200000],
	["ivory_isf_unmarked",200000],			
	["ivory_isf_slicktop",200000],
	
	["cnp_Defender",200000],
	["CNP_c4_picasso_F",200000],
	["cnp_seat_altea_pol",200000],
	["UR_416_M2",200000],
	["UR_416_Cargo",200000],
	["Vamtac_Policia",200000],
	["cnp_Iveco_GOIT",200000],
	["CNP_mercedes_sprinter_GOIT_F",200000],
	["CNP_mercedes_sprinter_UIP_F",200000],
	["Navara_Policia",200000],

*/
