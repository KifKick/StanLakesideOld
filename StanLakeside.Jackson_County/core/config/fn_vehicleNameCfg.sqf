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
	["kmc_cvpi_lspd_lb_1","001-CVPI LB LSPD"],
	["kmc_cvpi_lspd_lb_2","002-CVPI LB LSPD"],
	["kmc_cvpi_lspd_lb_3","003-CVPI LB LSPD"],
	["kmc_cvpi_lspd_lb_4","004-CVPI LB LSPD"],
	["kmc_cvpi_lspd_lb_5","005-CVPI LB LSPD"],
	["kmc_cvpi_lspd_lb_6","006-CVPI LB LSPD"],
	["kmc_cvpi_lspd_lb_7","007-CVPI LB LSPD"],
	["kmc_cvpi_lspd_lb_8","008-CVPI LB LSPD"],
	["kmc_cvpi_lspd_lb_9","009-CVPI LB LSPD"],
	["kmc_cvpi_lspd_lb_10","010-CVPI LB LSPD"],
	["kmc_cvpi_lspd_lb_11","011-CVPI LB LSPD"],
	["kmc_cvpi_lspd_lb_12","012-CVPI LB LSPD"],
	["kmc_cvpi_lspd_lb_13","013-CVPI LB LSPD"],
	["kmc_cvpi_lspd_lb_14","014-CVPI LB LSPD"],
	["kmc_cvpi_lspd_lb_15","015-CVPI LB LSPD"],
	["kmc_cvpi_lspd_lb_16","016-CVPI LB LSPD"],
	["kmc_wrx_pd_17","017","017-Suubaru WRX LB LSPD"],
	["kmc_wrx_pd_18","018","018-Suubaru WRX LB LSPD"],
	["kmc_charger_PD_022","022-Dodge Charger LB LSPD"],
	["kmc_charger_PD_024","024-Dodge Charger LB LSPD"],
	["ivory_m3_pd_60","060-BMW M3 LB LSPD"],
	["ivory_m3_pd_61","061-BMW M3 LB LSPD"],
	["kmc_charger_PD_026","026-Dodge Charger LB LSPD"],
	["kmc_charger_PD_027","027-Dodge Charger LB LSPD"],
	["kif_cvpi_lspa_slick","[PD][A] LSPA-CVPI-PB"],
	["BMWX5Sert_077","077-BMW X5 SERT"],
	["BMWX5Sert_078","078-BMW X5 SERT"],	
	["MustangSert_801","801-Ford Mustang SERT"],	
	["TahoePD_03","800-Chevrolet Tahoe SERT"],
	["TahoeCB_01","111-Chevrolet Tahoe CB"],
	["kif_cvpi_lspa_lb_1","1-LSPA-CVPI-LB"],
	["kif_cvpi_lspa_lb_2","2-LSPA-CVPI-LB"],
	["kif_cvpi_lspa_slick_3","3-LSPA-CVPI-PB"],
	["kif_cvpi_lspa_slick_4","4-LSPA-CVPI-PB"],
	["kif_cvpi_lspa_lb_5","5-LSPA-CVPI-LB"],
	["kif_cvpi_pd_lb","PD-CVPI-LB"],
	["kif_cvpi_pd_slick","PD-CVPI-PB"],
	["kif_cvpi_pd_lb_6","6-PD-CVPI-LB"],
	["kif_cvpi_pd_lb_7","7-PD-CVPI-LB"],
	["kif_cvpi_pd_lb_8","8-PD-CVPI-LB"],
	["kif_cvpi_pd_lb_9","9-PD-CVPI-LB"],
	["kif_cvpi_pd_lb_10","10-PD-CVPI-LB"],
	["kif_cvpi_pd_lb_11","11-PD-CVPI-LB"],
	["kif_cvpi_pd_lb_12","12-PD-CVPI-LB"],
	["kif_cvpi_pd_slick_13","13-PD-CVPI-pb"],
	["kif_cvpi_pd_slick_14","14-PD-CVPI-PB"],
	["kif_cvpi_pd_slick_15","15-PD-CVPI-PB"],
	["kif_cvpi_pd_lb_16","16-PD-CVPI-LB"],
	["kif_cvpi_traffic_slick","TRAFFIC-CVPI-PB"],
	["kif_cvpi_traffic_lb","TRAFFIC-CVPI-LB"],
	["kif_cvpi_traffic_lb_17","17-TRAFFIC-CVPI-LB"],
	["kif_cvpi_traffic_slick_18","18-TRAFFIC-CVPI-PB"],
	["cg_TaurusPD1","[PD][A] Ford Taurus"],
	["cg_TaurusPD2","[PD][A] Ford Taurus Slicktop"],
	["bv_the_crowner_cop_patrol","[PD][A] Ford CV Slicktop"],
	["DAR_TahoePoliceSlick","[PD][A] Chevrolet Tahoe Slicktop"],
	["DAR_ExplorerPolice","[PD][A] Ford Explorer"],
	["cg_mercedes_sprinter_pol_base_reg","[PD][A] Mercedes Sprinter"],
	["kev_cvpi_correction_lb_91","91-CVPI-CO-LB"],
	["kev_cvpi_correction_lb_92","92-CVPI-CO-LB"],
	["kev_taurus_co_lb_90","90-FPI-LB"],
		//Edward
	["cg_evopol1","[PD][E] Mitsubishi Evo"],
	["charger_pd_skinned","[PD][E] Charger"],
	["bv_caressa_gt_cop_patrol","[PD][E] Porsche Caressa"],
	["bv_458_cop_patrol","[PD][E] Ferrari 485"],
		//David
	["A3L_GMC_Van_Swat","[PD][D] GMC"],
	["cg_h2_sert","[PD][D] Hummer H2"],
	["cg_suburban_sert_pol","[PD][D] Suburban (podnosnik)"],
	["DAR_SWATPolice","40-Bearcat SERT"],
	["burnes_foxhound_w","[PD][D] Foxhound"],
	["cg_evoSERT1","39-Evo SERT"],
	["charger_sert","37-Charger SERT"],
		//Pozostale
	["cg_ducati_pol_reg","Ducati 959"],
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
	["A3L_jailBus","93-Jailbus-CO"],
	//SO
	["kif_cvpi_sheriff_lb","[SO][A] SHERIFF-CVPI-LB"],
	["kif_cvpi_sheriff_slick","[SO][A] SHERIFF-CVPI-PB"],
	["kif_cvpi_sheriff_lb_19","19-SHERIFF-CVPI-LB"],
	["kif_cvpi_sheriff_slick_20","20-SHERIFF-CVPI-PB"],
	["kif_cvpi_sheriff_lb_21","21-SHERIFF-CVPI-LB"],
	["A3L_CVPI_Sheriff_LB","[SO][A] Ford CV (czarny)"],
	["A3L_CVPI_Sheriff_Slick","[SO][A] Ford CV Slicktop"],
	["cg_TaurusSS1","[SO][A] Ford Taurus"],
	["cg_TaurusSS2","[SO][A] Ford Taurus Slicktop"],
	["A3L_TaurusFPBLBCSO","[SO][A] Ford Taurus"],
	["A3L_SuburbanCSO","[SO][A] Suburban"],
	["DAR_ExplorerSheriff","56-SHERIFF-Ford Explorer"],
	["cg_CVPISH","[SO][A] Ford CV Slicktop"],
	["cg_evoss1","[SO][E] Mitsubishi Evo"],
	["charger_sh","[SO][E] Charger"],
	["kif_evo_so_29","29-SHERIFF-EVO"],
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
	["A3L_TaurusUC","42-Taurus Czarny SERT "],
	["A3L_TaurusUCBlue","Ford Taurus Niebieski (uc)"],
	["A3L_TaurusUCGrey","Ford Taurus Szary (uc)"],
	["A3L_TaurusUCRed","Ford Taurus Czerwony (uc)"],
	["A3L_TaurusUCWhite","Ford Taurus Bialy (uc)"],
	["A3L_GrandCaravanUC","Caravan Bialy (uc)"],
	["A3L_GrandCaravanUCBlack","Caravan Czarny (uc)"],
	["DAR_TahoePoliceDet","Chevrolet Tahoe Czarny (uc)"],
	["DAR_ExplorerPoliceStealth","Ford Explorer Czarny (uc)"],
	["A3L_Suburban_UM_Black","Suburban Opancerzony UC"],
	["A3L_ChargerUC","Charger Czarny (uc)"],
	["A3L_ChargerUCWhite","Charger Bialy (uc)"],
	["cg_audi_rs4_pol_noir","Audi RS4"],
	["cg_brinks_bank_noir","Brinks"],
	["cnp_Iveco_GOIT","47-Mobile Command Unit"],
	["Navara_Policia","38-Navara SERT"],
	["O_Heli_Light_02_unarmed_F","PO-30-ORCA-SERT"]
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
