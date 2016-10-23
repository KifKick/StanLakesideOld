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
	//PD
		//Adam
	["kif_cvpi_lspa_lb","[PD][A] LSPA-CVPI-LB"],
	["kif_cvpi_lspa_slick","[PD][A] LSPA-CVPI-PB"],
	["kif_cvpi_lspa_lb_1","[PD][A] 1-LSPA-CVPI-LB"],
	["kif_cvpi_lspa_lb_2","[PD][A] 2-LSPA-CVPI-LB"],
	["kif_cvpi_lspa_slick_3","[PD][A] 3-LSPA-CVPI-PB"],
	["kif_cvpi_lspa_slick_4","[PD][A] 4-LSPA-CVPI-PB"],
	["kif_cvpi_lspa_lb_5","[PD][A] 5-LSPA-CVPI-LB"],
	["kif_cvpi_pd_lb","[PD][A] PD-CVPI-LB"],
	["kif_cvpi_pd_slick","[PD][A] PD-CVPI-PB"],
	["kif_cvpi_pd_lb_6","[PD][A] 6-PD-CVPI-LB"],
	["kif_cvpi_pd_lb_7","[PD][A] 7-PD-CVPI-LB"],
	["kif_cvpi_pd_lb_8","[PD][A] 8-PD-CVPI-LB"],
	["kif_cvpi_pd_lb_9","[PD][A] 9-PD-CVPI-LB"],
	["kif_cvpi_pd_lb_10","[PD][A] 10-PD-CVPI-LB"],
	["kif_cvpi_pd_lb_11","[PD][A] 11-PD-CVPI-LB"],
	["kif_cvpi_pd_lb_12","[PD][A] 12-PD-CVPI-LB"],
	["kif_cvpi_pd_slick_13","[PD][A] 13-PD-CVPI-pb"],
	["kif_cvpi_pd_slick_14","[PD][A] 14-PD-CVPI-PB"],
	["kif_cvpi_pd_slick_15","[PD][A] 15-PD-CVPI-PB"],
	["kif_cvpi_pd_lb_16","[PD][A] 16-PD-CVPI-LB"],
	["kif_cvpi_traffic_slick","[PD][A] TRAFFIC-CVPI-PB"],
	["kif_cvpi_traffic_lb","[PD][A] TRAFFIC-CVPI-LB"],
	["kif_cvpi_traffic_lb_17","[PD][A] 17-TRAFFIC-CVPI-LB"],
	["kif_cvpi_traffic_slick_18","[PD][A] 18-TRAFFIC-CVPI-PB"],
	["cg_TaurusPD1","[PD][A] Ford Taurus"],
	["cg_TaurusPD2","[PD][A] Ford Taurus Slicktop"],
	["bv_the_crowner_cop_patrol","[PD][A] Ford CV Slicktop"],
	["DAR_TahoePoliceSlick","[PD][A] Chevrolet Tahoe Slicktop"],
	["DAR_ExplorerPolice","[PD][A] Ford Explorer"],
	["cg_mercedes_sprinter_pol_base_reg","[PD][A] Mercedes Sprinter"],
	["kev_cvpi_correction_lb_91","[CO][A] Ford Victoria 91"],
	["kev_cvpi_correction_lb_92","[CO][A] Ford Victoria 92"], 
		//Edward
	["cg_evopol1","[PD][E] Mitsubishi Evo"],
	["charger_pd_skinned","[PD][E] Charger"],
	["bv_caressa_gt_cop_patrol","[PD][E] Porsche Caressa"],
	["bv_458_cop_patrol","[PD][E] Ferrari 485"],
		//David
	["A3L_GMC_Van_Swat","[PD][D] GMC"],
	["cg_h2_sert","[PD][D] Hummer H2"],
	["cg_suburban_sert_pol","[PD][D] Suburban (podnosnik)"],
	["DAR_SWATPolice","[PD][D] Lenco Razorback"],
	["burnes_foxhound_w","[PD][D] Foxhound"],
	["cg_evoSERT1","[PD][D/E] Mitsubishi Evo"],
	["charger_sert","[PD][D/E] Charger"],
		//Pozostale
	["cg_ducati_pol_reg","[PD] Ducati"],
	["cg_peugeot_508_pol_d","[PD] Peugot 508"],	
	["charger_st","[ST][A] Charger"],
	["charger_trp_skinned","[ST][A] Charger"],
	["cg_taurustrooperf","[ST][A] Ford Taurus"],
	["cg_trooperevo","[ST][E] Mitsubishi Evo"],
	//CO
	["A3L_CVPI_Corrections_LB","[CO][A] Ford CV"],
	["A3L_TaurusCO2","[CO][A] Ford Taurus Slicktop"],
	["A3L_SuburbanDOC","[CO][S] Suburban"],
	["cg_evocor1","[CO][E] Mitsubishi Evo"],
	["charger_cor_skinned","[CO][E] Charger"],
	["A3L_jailBus","[CO] Wiezniarka"],
	//SO
	["kif_cvpi_sheriff_lb","[SO][A] SHERIFF-CVPI-LB"],
	["kif_cvpi_sheriff_slick","[SO][A] SHERIFF-CVPI-PB"],
	["kif_cvpi_sheriff_lb_19","[SO][A] 19-SHERIFF-CVPI-LB"],
	["kif_cvpi_sheriff_slick_20","[SO][A] 20-SHERIFF-CVPI-PB"],
	["kif_cvpi_sheriff_lb_21","[SO][A] 21-SHERIFF-CVPI-LB"],
	["A3L_CVPI_Sheriff_LB","[SO][A] Ford CV (czarny)"],
	["A3L_CVPI_Sheriff_Slick","[SO][A] Ford CV Slicktop"],
	["cg_TaurusSS1","[SO][A] Ford Taurus"],
	["cg_TaurusSS2","[SO][A] Ford Taurus Slicktop"],
	["A3L_TaurusFPBLBCSO","[SO][A] Ford Taurus"],
	["A3L_SuburbanCSO","[SO][A] Suburban"],
	["DAR_ExplorerSheriff","[SO][A] Ford SUV"],
	["cg_CVPISH","[SO][A] Ford CV Slicktop"],
	["cg_evoss1","[SO][E] Mitsubishi Evo"],
	["charger_sh","[SO][E] Charger"],
	//UC
	["A3L_CVPIUC_Black","FORD CV BLACK (UC)"],
	["A3L_CVPIUC_Blue","FORD CV BLUE (UC)"],
	["A3L_CVPIUC_Grey","FORD CV GREY (UC))"],
	["A3L_CVPIUC_red","FORD CV RED (UC)"],
	["A3L_CVPIUC_White","FORD CV WHITE (UC)"],
	["A3L_CVPIUC_red","FORD CV RED (UC)"],
	["A3L_CVPIUC_Pink","FORD CV PINK (UC)"],
	["bv_the_crowner_uc","Ford Crowner (uc)"],
	["cg_hummer_h1_noir","Hummer H1 (uc)"],
	["critgamin_vangmcc_civ_noir","GMC (uc)"],
	["AM_Escalade_SERT","Cadillac Escalade (uc)"],
	["A3L_TaurusUC","Ford Taurus Czarny (uc)"],
	["A3L_TaurusUCBlue","Ford Taurus Niebieski (uc)"],
	["A3L_TaurusUCGrey","Ford Taurus Szary (uc)"],
	["A3L_TaurusUCRed","Ford Taurus Czerwony (uc)"],
	["A3L_TaurusUCWhite","Ford Taurus Bialy (uc)"],
	["A3L_GrandCaravanUC","Caravan Bialy (uc)"],
	["A3L_GrandCaravanUCBlack","Caravan Czarny (uc)"],
	["DAR_TahoePoliceDet","Chevrolet Tahoe Czarny (uc)"],
	["DAR_ExplorerPoliceStealth","Ford Explorer Czarny (uc)"],
	["A3L_Suburban_UM_Black","Suburban Opancerzony (uc)"],
	["A3L_ChargerUC","Charger Czarny (uc)"],
	["A3L_ChargerUCWhite","Charger Bialy (uc)"],
	["cg_audi_rs4_pol_noir","Audi RS4"],
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
