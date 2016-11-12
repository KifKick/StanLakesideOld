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
	["kmc_cvpi_lspd_lb_1","LSPD 001-CVPI LB"],
	["kmc_cvpi_lspd_lb_2","LSPD 002-CVPI LB"],
	["kmc_cvpi_lspd_lb_3","LSPD 003-CVPI LB"],
	["kmc_cvpi_lspd_lb_4","LSPD 004-CVPI LB"],
	["kmc_cvpi_lspd_lb_5","LSPD 005-CVPI LB"],
	["kmc_cvpi_lspd_lb_6","LSPD 006-CVPI LB"],
	["kmc_cvpi_lspd_lb_7","LSPD 007-CVPI LB"],
	["kmc_cvpi_lspd_lb_8","LSPD 008-CVPI LB"],
	["kmc_cvpi_lspd_lb_9","LSPD 009-CVPI LB"],
	["kmc_cvpi_lspd_lb_10","LSPD 010-CVPI LB"],
	["kmc_cvpi_lspd_lb_11","LSPD 011-CVPI LB"],
	["kmc_cvpi_lspd_lb_12","LSPD 012-CVPI LB"],
	["kmc_cvpi_lspd_lb_13","LSPD 013-CVPI LB"],
	["kmc_cvpi_lspd_lb_14","LSPD 014-CVPI LB"],
	["kmc_cvpi_lspd_lb_15","LSPD 015-CVPI LB"],
	["kmc_cvpi_lspd_lb_16","LSPD 016-CVPI LB"],
	["charger_lspd_022","LSPD 022-Dodge Charger LB"],
	["charger_lspd_024","LSPD 024-Dodge Charger LB"],
	["charger_lspd_026","LSPD 026-Dodge Charger LB"],
	["charger_lspd_027","LSPD 027-Dodge Charger LB"],
	["ivory_m3_pd_60","LSPD 060-BMW M3 LB"],
	["ivory_m3_pd_61","LSPD 061-BMW M3 LB"],
	["kif_cvpi_lspa_slick","LSPD LSPA-CVPI-PB"],
	["BMWX5Sert_077","SERT 077-BMW X5"],
	["BMWX5Sert_078","SERT 078-BMW X5"],	
	["MustangSert_801","SERT 801-Ford Mustang"],	
	["kmc_MustangSO_200","SO 200-Ford Mustang"],	
	["TahoePD_03","SERT 800-Chevrolet Tahoe"],
	["TahoeCB_01","CB 111-Chevrolet Tahoe"],
	["TahoeSO_205","SO 205-Chevrolet Tahoe"],
	["TahoeSO_250","SO 250-Chevrolet Tahoe D.Lych"],
	["TahoeSO_275","SO 275-Chevrolet Tahoe M.Williams"],
	["kif_cvpi_lspa_lb_1","LSPA 1-LSPA-CVPI-LB"],
	["kif_cvpi_lspa_lb_2","LSPA 2-LSPA-CVPI-LB"],
	["kif_cvpi_lspa_slick_3","LSPA 3-LSPA-CVPI-PB"],
	["kif_cvpi_lspa_slick_4","LSPA 4-LSPA-CVPI-PB"],
	["kif_cvpi_lspa_lb_5","LSPA 5-LSPA-CVPI-LB"],
	["kif_cvpi_pd_lb","LSPD PD-CVPI-LB"],
	["kif_cvpi_pd_slick","LSPD PD-CVPI-PB"],
	["kif_cvpi_pd_lb_6","LSPD 6-PD-CVPI-LB"],
	["kif_cvpi_pd_lb_7","LSPD 7-PD-CVPI-LB"],
	["kif_cvpi_pd_lb_8","LSPD 8-PD-CVPI-LB"],
	["kif_cvpi_pd_lb_9","LSPD 9-PD-CVPI-LB"],
	["kif_cvpi_pd_lb_10","LSPD 10-PD-CVPI-LB"],
	["kif_cvpi_pd_lb_11","LSPD 11-PD-CVPI-LB"],
	["kif_cvpi_pd_lb_12","LSPD 12-PD-CVPI-LB"],
	["kif_cvpi_pd_slick_13","LSPD 13-PD-CVPI-pb"],
	["kif_cvpi_pd_slick_14","LSPD 14-PD-CVPI-PB"],
	["kif_cvpi_pd_slick_15","LSPD 15-PD-CVPI-PB"],
	["kif_cvpi_pd_lb_16","LSPD 16-PD-CVPI-LB"],
	["kif_cvpi_traffic_slick","LSPD TRAFFIC-CVPI-PB"],
	["kif_cvpi_traffic_lb","LSPD TRAFFIC-CVPI-LB"],
	["kif_cvpi_traffic_lb_17","LSPD 17-TRAFFIC-CVPI-LB"],
	["kif_cvpi_traffic_slick_18","LSPD 18-TRAFFIC-CVPI-PB"],
	["cg_TaurusPD1","LSPD Ford Taurus"],
	["cg_TaurusPD2","LSPD Ford Taurus Slicktop"],
	["bv_the_crowner_cop_patrol","LSPD Ford CV Slicktop"],
	["DAR_TahoePoliceSlick","LSPD Chevrolet Tahoe Slicktop"],
	["DAR_ExplorerPolice","LSPD Ford Explorer"],
	["cg_mercedes_sprinter_pol_base_reg","LSPD Mercedes Sprinter"],
	["kev_cvpi_correction_lb_91","LSPD 91-CVPI-CO-LB"],
	["kev_cvpi_correction_lb_92","LSPD 92-CVPI-CO-LB"],
	["kev_taurus_co_lb_90","LSPD 90-FPI-LB"],
	["Taurus_501","LSPD 501-Ford Taurus LB"],
	["Taurus_502","LSPD 502-Ford Taurus LB"],
	["Taurus_503","LSPD 503-Ford Taurus LB"],
	["Taurus_504","LSPD 504-Ford Taurus LB"],
	["Taurus_400","AIAD 400-Ford Taurus LB"],
	//Edward
	
	["cg_evopol1","LSPD Mitsubishi Evo"],
	["charger_pd_skinned","LSPD Charger"],
	["bv_caressa_gt_cop_patrol","LSPD Porsche Caressa"],
	["bv_458_cop_patrol","LSPD Ferrari 485"],
	["ivory_wrx_sert_66","SERT 66-Subaru WRX"],
	["kif_evo_pd_28","LSPD 28-Mitshubishi EVO X"],
	["ivory_evox_slicktop","LSPD 181-Mitshubishi EVO X"],
	["kmc_wrx_pd_17","LSPD 017-Subaru WRX"],
	["kmc_wrx_pd_18","LSPD 018-Subaru WRX"],
	
	//David
	
	["A3L_GMC_Van_Swat","SERT GMC"],
	["cg_h2_sert","SERT Hummer H2"],
	["cg_suburban_sert_pol","SERT Suburban (podnosnik)"],
	["DAR_SWATPolice","SERT Bearcat"],
	["burnes_foxhound_w","SERT Foxhound"],
	["cg_evoSERT1","SERT Evo "],
	["charger_sert","SERT Charger"],
	["HummerSERT_810","SERT 810-Hummer H1"],
	["LandRoverSERT_811","SERT 811-Range Rover"],
	["suburban_829_sert","SERT 829-Chevrolet Suburban"],
	["suburban_830_sert","SERT 829-Chevrolet Suburban"],
	["taurus_899_sert","SERT 899-Ford Taurus"],
	
	//Pozostale
	
	["cg_ducati_pol_reg","Ducati 959"],
	["cg_peugeot_508_pol_d","[PD] Peugot 508"],	
	["charger_st","[ST][A] Charger"],
	["charger_trp_skinned","[ST][A] Charger"],
	["cg_taurustrooperf","[ST][A] Ford Taurus"],
	["cg_trooperevo","[ST][E] Mitsubishi Evo"],
	//CO
	["A3L_CVPI_Corrections_LB","CO Ford CV"],
	["A3L_TaurusCO2","CO Ford Taurus Slicktop"],
	["A3L_SuburbanDOC","CO Suburban"],
	["cg_evocor1","CO Mitsubishi Evo"],
	["charger_cor_skinned","CO Charger"],
	["A3L_jailBus","CO 93-Jailbus"],
	//SO
	["TahoeSO_205","SO 205-Chevrolet Tahoe"],
	["TahoeSO_250","SO 250-Chevrolet Tahoe D.Lych"],
	["TahoeSO_275","SO 275-Chevrolet Tahoe M.Williams"],
	["kmc_MustangSO_200","SO 200-Ford Mustang"],
	["kif_cvpi_sheriff_lb","SO CVPI-LB"],
	["kif_cvpi_sheriff_slick","SO CVPI-PB"],
	["kif_cvpi_sheriff_lb_19","SO 19-CVPI-LB"],
	["kif_cvpi_sheriff_slick_20","SO 20-SHERIFF-CVPI-PB"],
	["kif_cvpi_sheriff_lb_21","SO 21-SHERIFF-CVPI-LB"],
	["A3L_CVPI_Sheriff_LB","SO Ford CV (czarny)"],
	["A3L_CVPI_Sheriff_Slick","SO Ford CV Slicktop"],
	["cg_TaurusSS1","SO Ford Taurus"],
	["cg_TaurusSS2","SO Ford Taurus Slicktop"],
	["A3L_TaurusFPBLBCSO","SO Ford Taurus"],
	["A3L_SuburbanCSO","SO Suburban"],
	["DAR_ExplorerSheriff","SO 56-Ford Explorer"],
	["cg_CVPISH","SO Ford CV Slicktop"],
	["cg_evoss1","SO Mitsubishi Evo"],
	["charger_sh","SO Charger"],
	["kif_evo_so_29","SO 29-EVO"],
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
	["cnp_Iveco_GOIT","CB 47-Mobile Command Unit"],
	["Navara_Policia","SERT 38-Navara"],
	["O_Heli_Light_02_unarmed_F","SERT PO-30-ORCA"]
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

