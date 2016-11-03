#include <macro.h>
/*
	File:
	
	VEHICLES ARE 10% of WHAT THEY ARE IN HERE.
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = param [0,"",[""]];
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "dezzie_car":
	{
		_return = 
		[
			["ivory_supra",1750000],
			["ivory_isf",1300000],
			["ivory_m3",2295000],
			/*["ivory_m3_gts",2650000],*/
			["ivory_gt500",1800000],
			["ivory_wrx",2850000],
			["ivory_lp560",3130000],
			["IVORY_R8",2830000],
			["IVORY_REV",2990000],	
			["ivory_lfa",3390000],
			["ivory_r34",3220000],
			["ivory_rs4",1190000],
			["ivory_rs4_taxi",1220000],
			["ivory_190e",880000],
			["ivory_190e_taxi",910000],
			["ivory_e36",980000],
			["ivory_elise",3900000],
			["ivory_evox",2400000],
			["ivory_f1",3220000],
			["ivory_gti",450000],
			["ivory_mp4",3980000],
			["ivory_suburban",660000],
			["ivory_veyron",4220000],
			["shounka_f430_spider_bleufonce",3500000],			
			["bv_458_2tone1",3700000],
			["bv_458_black2",3700000],
			["bv_458_skin_white",3700000],
			["bv_458_skin_camo_urban",3700000],
			["bv_shelly_bf_skin",4150000],
			["Jonzie_Mini_Cooper",150000],
			["ivory_c",2260000],
			["shounka_rs6_violet",1100000],
			["shounka_rs6_jaune",1100000],
			["shounka_rs6_rouge",1100000],
			["shounka_rs6_rose",1100000],
			["shounka_rs6_orange",1100000],
			["shounka_rs6_violet",1100000],
			["shounka_rs6_grise",1100000],
			["shounka_rs6_bleufonce",1100000],
			["shounka_rs6_noir",1100000]
		];
	};
	case "showroom_car":
	{
		_return = 
		[
			
		];
	};	
	case "kart_shop":
	{
		_return = 
		[
			["A3L_Karts",10000],
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = 
		[
			/*["ivory_wrx_ems",95500],*/
			["ivory_m3_ems",95500],
			["ivory_m3_emsRR",95500],
			["ivory_suburban_ems",95500],
			/*["A3L_Subaru_EMS",20000],*/
			["cg_evoems1",20000],
			["cg_evoems2",20000],
			["EvoXEMS",100000],
			//["charger_ems",100000],
			/*["kif_Taurus_ems1",20000],*/
			["kif_Taurus_ems2",20000],
			["A3L_CVPILBFD",20000],
			["A3L_CVPILBEMSLT",20000],
			["A3L_CVPILBEMSCPT",20000],
			["cg_ambulanceexpansion",20000],
			["cg_ambulance_fire",20000],
			["cg_ambulance_hazmat",20000],
			["cg_ambulance_coroner",20000],
			["A3L_GMC_Van_Coroner",20000],
			["mercedes_sprinter_ambulancia_F",20000],
			["cg_mercedes_sprinter_ems",20000],
			["bv_e60_m5_cop_emt",22500],
			["DAR_TahoeEMS",22500],
			["sfp_wheelchair",92500],
			["sfp_wheelchair_mark2",92500],
			["bv_the_crowner_cop_emt",50000],
			["A3L_ExplorerEMS_S",50000],
			["A3L_ExplorerEMS_P",50000],
			["nopixel_guardacostas",20000],
			["cnp_Defender",50000],
			["CNP_mercedes_sprinter_GOIT_F",70000],
			/*["cg_merc_atego_firetruck_reg",25000],*/
			["A3PL_Engine",50000],
			["A3PL_Ladder",50000],
			["A3PL_Rescue",50000]
		];
	};
	case "med_air_hs": {
		_return = 
		[
			["ivory_b206_rescue",65000],
			["IVORY_BELL512_RESCUE",85000],
			["ems_chopper",90000],
			["ems_chopper2",90000],
			["ems_orca",120000],
			["ems_orca2",120000],
			["RobJ_Rescue1",120000],
			["EC_135_F",45000],
			["kif_vehicles_helicopter_mh9_ems2",100000],
			["kif_vehicles_helicopter_mh9_ems",45000],
			["kif_vehicles_helicopter_orca_ems",45000],
			["kif_vehicles_helicopter_taru_ems",45000],
			["A3L_EC635_SAR",45000],
			["SC_412",120000]
		];
	};
	
	/*case "donator1": {
		_return =
		[
			["C_Offroad_02_unarmed_F",1500000],
			["cg_peugeot_207_rc_noir",20000],
			["cg_peugeot_207_rc_violet",20000],
			["ivory_m3_gts",450000],
			["ivory_supra_tuned",800000],
			["GeK_S60",500000],
			["GeK_S60_White",500000],
			["BRP_1960_White",500000],
			["BRP_1960_Green",500000],
			["BRP_1960_Black",500000],
			["A3L_RX7_Black",400000],
			["A3L_RX7_Red",400000],
			["A3L_RX7_White",400000],
			["GeK_S60_blue",500000],
			["shounka_avalanche_bleufonce",500000]
		];
	};
	
	case "donator2": {
		_return =
		[
			["C_Offroad_02_unarmed_F",1500000],
			["cg_peugeot_207_rc_noir",20000],
			["cg_peugeot_207_rc_violet",20000],
			["ivory_m3_gts",450000],
			["ivory_supra_tuned",800000],
			["shounka_avalanche_bleufonce",500000],
			["IVORY_R8",630000],
			["IVORY_R8SPYDER",530000],
			["IVORY_REV",490000],	
			["ivory_lfa",1190000],
			["GeK_S60",500000],
			["GeK_S60_White",500000],
			["BRP_1960_White",500000],
			["BRP_1960_Green",500000],
			["BRP_1960_Black",500000],
			["A3L_RX7_Black",400000],
			["A3L_RX7_Red",400000],
			["A3L_RX7_White",400000],
			["GeK_S60_blue",500000],
			["C_MSSprinter_01_F",115000],
			["C_MSSprinter_02_F",449000]
		];
	};
	
	case "donator3": {
		_return =
		[
			["C_Offroad_02_unarmed_F",1500000],
			["cg_peugeot_207_rc_noir",20000],
			["cg_peugeot_207_rc_violet",20000],
			["ivory_m3_gts",450000],
			["ivory_supra_tuned",800000],
			["shounka_avalanche_bleufonce",500000],
			["IVORY_R8",630000],
			["IVORY_R8SPYDER",530000],
			["IVORY_REV",490000],	
			["ivory_lfa",1190000],
			["C_MSSprinter_01_F",115000],
			["C_MSSprinter_02_F",449000],
			["ivory_elise",2130000],
			["ivory_c",1160000],
			["ivory_wrx",700000],
			["GeK_S60",500000],
			["GeK_S60_White",500000],
			["BRP_1960_White",500000],
			["BRP_1960_Green",500000],
			["BRP_1960_Black",500000],
			["A3L_RX7_Black",400000],
			["A3L_RX7_Red",400000],
			["A3L_RX7_White",400000],
			["GeK_S60_blue",500000],
			["cg_renault_magnum_truck_f_noir",359000]
		];
	};*/
	
	case "exo_car":
	{
		_return = 
		[	


			["cg_peugeot_207_rc_noir",240000],
			["cg_peugeot_207_rc_violet",240000],
			["cg_peugeot_207_rc_rose",240000],
			["cg_peugeot_207_rc_orange",240000],
			["cg_peugeot_207_rc_grise",240000],
			["cg_peugeot_207_rc_vert",240000],
			["cg_peugeot_207_rc_bleufonce",240000],
			["cg_peugeot_207_rc_bleu",240000],
			["cg_peugeot_207_rc_white",240000],
			["cg_peugeot_207_rc_jaune",240000],


			["cg_volkswagen_touareg_noir",360000],
			["cg_volkswagen_touareg_violet",360000],
			["cg_volkswagen_touareg_rose",360000],
			["cg_volkswagen_touareg_orange",360000],
			["cg_volkswagen_touareg_grise",360000],
			["cg_volkswagen_touareg_vert",360000],
			["cg_volkswagen_touareg_bleufonce",360000],
			["cg_volkswagen_touareg_bleu",360000],
			["cg_volkswagen_touareg_white",360000],
			["cg_volkswagen_touareg_jaune",360000],

			["cg_vw_golfvi_noir",330000],
			["cg_vw_golfvi_violet",330000],
			["cg_vw_golfvi_rose",330000],
			["cg_vw_golfvi_orange",330000],
			["cg_vw_golfvi_grise",330000],
			["cg_vw_golfvi_vert",330000],
			["cg_vw_golfvi_bleufonce",330000],
			["cg_vw_golfvi_bleu",330000],
			["cg_vw_golfvi_white",330000],
			["cg_vw_golfvi_jaune",330000],

			["cg_jeep_cherokee_noir",339000],
			["cg_jeep_cherokee_violet",339000],
			["cg_jeep_cherokee_rose",339000],
			["cg_jeep_cherokee_orange",339000],
			["cg_jeep_cherokee_grise",339000],
			["cg_jeep_cherokee_vert",339000],
			["cg_jeep_cherokee_bleufonce",339000],
			["cg_jeep_cherokee_bleu",339000],
			["cg_jeep_cherokee_white",339000],
			["cg_jeep_cherokee_jaune",339000],

			["cg_audi_rs4_noir",340000],
			["cg_audi_rs4_violet",340000],
			["cg_audi_rs4_rose",340000],
			["cg_audi_rs4_orange",340000],
			["cg_audi_rs4_grise",340000],
			["cg_audi_rs4_vert",340000],
			["cg_audi_rs4_bleufonce",340000],
			["cg_audi_rs4_bleu",340000],
			["cg_audi_rs4_white",340000],
			["cg_audi_rs4_jaune",340000],

			["cg_audi_rs5_noir",440000],
			["cg_audi_rs5_violet",440000],
			["cg_audi_rs5_rose",440000],
			["cg_audi_rs5_orange",440000],
			["cg_audi_rs5_grise",440000],
			["cg_audi_rs5_vert",440000],
			["cg_audi_rs5_bleufonce",440000],
			["cg_audi_rs5_bleu",440000],
			["cg_audi_rs5_white",440000],
			["cg_audi_rs5_jaune",440000],




			["cg_bmw_1series_m_noir",1290000],
			["cg_bmw_1series_m_violet",1290000],
			["cg_bmw_1series_m_rose",1290000],
			["cg_bmw_1series_m_orange",1290000],
			["cg_bmw_1series_m_grise",1290000],
			["cg_bmw_1series_m_vert",1290000],
			["cg_bmw_1series_m_bleufonce",1290000],
			["cg_bmw_1series_m_bleu",1290000],
			["cg_bmw_1series_m_white",1290000],
			["cg_bmw_1series_m_jaune",1290000],

			["cg_renault_megane_rs_2015_noir",490000],
			["cg_renault_megane_rs_2015_violet",490000],
			["cg_renault_megane_rs_2015_rose",490000],
			["cg_renault_megane_rs_2015_orange",490000],
			["cg_renault_megane_rs_2015_grise",490000],
			["cg_renault_megane_rs_2015_vert",490000],
			["cg_renault_megane_rs_2015_bleufonce",490000],
			["cg_renault_megane_rs_2015_bleu",490000],
			["cg_renault_megane_rs_2015_white",490000],
			["cg_renault_megane_rs_2015_jaune",490000],



			["Mrshounka_c63_2015_bleufonce",780000],
			["Mrshounka_c63_2015_grise",780000],
			["Mrshounka_c63_2015_jaune",780000],
			["Mrshounka_c63_2015_noir",780000],
			["Mrshounka_c63_2015_orange",780000],
			["Mrshounka_c63_2015_rose",780000],
			["Mrshounka_c63_2015_rouge",780000],
			["Mrshounka_c63_2015_violet",780000],


			["cg_bmw_m6_noir",890000],
			["cg_bmw_m6_violet",890000],
			["cg_bmw_m6_rose",890000],
			["cg_bmw_m6_orange",890000],
			["cg_bmw_m6_grise",890000],
			["cg_bmw_m6_vert",890000],
			["cg_bmw_m6_bleufonce",890000],
			["cg_bmw_m6_bleu",890000],
			["cg_bmw_m6_white",890000],
			["cg_bmw_m6_jaune",890000],

			["cg_raptor_truck_noir",490000],
			["cg_raptor_truck_violet",490000],
			["cg_raptor_truck_rose",490000],
			["cg_raptor_truck_orange",490000],
			["cg_raptor_truck_grise",490000],
			["cg_raptor_truck_vert",490000],
			["cg_raptor_truck_bleufonce",490000],
			["cg_raptor_truck_bleu",490000],
			["cg_raptor_truck_white",490000],
			["cg_raptor_truck_jaune",490000],

			["cg_porsche_911_82_noir",890000],
			["cg_porsche_911_82_violet",890000],
			["cg_porsche_911_82_rose",890000],
			["cg_porsche_911_82_orange",890000],
			["cg_porsche_911_82_grise",890000],
			["cg_porsche_911_82_vert",890000],
			["cg_porsche_911_82_bleufonce",890000],
			["cg_porsche_911_82_bleu",890000],
			["cg_porsche_911_82_white",890000],
			["cg_porsche_911_82_jaune",890000],

			["cg_porsche_cayenne_noir",1490000],
			["cg_porsche_cayenne_violet",1490000],
			["cg_porsche_cayenne_rose",1490000],
			["cg_porsche_cayenne_orange",1490000],
			["cg_porsche_cayenne_grise",1490000],
			["cg_porsche_cayenne_vert",1490000],
			["cg_porsche_cayenne_bleufonce",1490000],
			["cg_porsche_cayenne_bleu",1490000],
			["cg_porsche_cayenne_white",1490000],
			["cg_porsche_cayenne_jaune",1490000],

			["cg_bowler_offroad_noir",490000],
			["cg_bowler_offroad_violet",490000],
			["cg_bowler_offroad_rose",490000],
			["cg_bowler_offroad_orange",490000],
			["cg_bowler_offroad_grise",490000],
			["cg_bowler_offroad_vert",490000],
			["cg_bowler_offroad_bleufonce",490000],
			["cg_bowler_offroad_bleu",490000],
			["cg_bowler_offroad_white",490000],
			["cg_bowler_offroad_jaune",490000],




			["shounka_gt_bleufonce",800000],
			["shounka_gt_grise",800000],
			["shounka_gt_jaune",800000],
			["shounka_gt_noir",800000],
			["shounka_gt_orange",800000],
			["shounka_gt_rose",800000],
			["shounka_gt_rouge",800000],
			["shounka_gt_violet",800000],

			["Mrshounka_mercedes_190_p_bleufonce",920000],
			["Mrshounka_mercedes_190_p_grise",920000],
			["Mrshounka_mercedes_190_p_jaune",920000],
			["Mrshounka_mercedes_190_p_noir",920000],
			["Mrshounka_mercedes_190_p_orange",920000],
			["Mrshounka_mercedes_190_p_rose",920000],
			["Mrshounka_mercedes_190_p_rouge",920000],
			["Mrshounka_mercedes_190_p_violet",920000],



						//HOLDENS
			["AM_Holden_White",785000],
			["AM_Holden_Black",785000],
			["AM_Holden_Green",785000],
			["AM_Holden_DarkGreen",785000],
			["AM_Holden_OffGreen",785000],
			["AM_Holden_blue",785000],
			["AM_Holden_OffYellow",785000],
			["AM_Holden_Pink",785000],
			["AM_Holden_Purple",785000],
			["AM_Holden_Yellow",785000],

			["cg_nissan_gtr_2012_noir",1790000],
			["cg_nissan_gtr_2012_violet",1790000],
			["cg_nissan_gtr_2012_rose",1790000],
			["cg_nissan_gtr_2012_orange",1790000],
			["cg_nissan_gtr_2012_grise",1790000],
			["cg_nissan_gtr_2012_vert",1790000],
			["cg_nissan_gtr_2012_bleufonce",1790000],
			["cg_nissan_gtr_2012_bleu",1790000],
			["cg_nissan_gtr_2012_white",1790000],
			["cg_nissan_gtr_2012_jaune",1790000],
		

			["shounka_mp4_bleufonce",1110000],
			["shounka_mp4_grise",1110000],
			["shounka_mp4_jaune",1110000],
			["shounka_mp4_noir",1110000],
			["shounka_mp4_orange",1110000],
			["shounka_mp4_rose",1110000],
			["shounka_mp4_rouge",1110000],
			["shounka_mp4_violet",1110000],


			["shounka_clk_bleufonce",1110000],
			["shounka_clk_grise",1110000],
			["shounka_clk_jaune",1110000],
			["shounka_clk_noir",1110000],
			["shounka_clk_orange",1110000],
			["shounka_clk_rose",1110000],
			["shounka_clk_rouge",1110000],
			["shounka_clk_violet",1110000],


			["cg_jeep_blinde_noir",4390000],
			["cg_jeep_blinde_violet",4390000],
			["cg_jeep_blinde_rose",4390000],
			["cg_jeep_blinde_orange",4390000],
			["cg_jeep_blinde_grise",4390000],
			["cg_jeep_blinde_vert",4390000],
			["cg_jeep_blinde_bleufonce",4390000],
			["cg_jeep_blinde_bleu",4390000],
			["cg_jeep_blinde_white",4390000],
			["cg_jeep_blinde_jaune",4390000],

			["cg_lancer_evo_x_noir",2590000],
			["cg_lancer_evo_x_violet",2590000],
			["cg_lancer_evo_x_rose",2590000],
			["cg_lancer_evo_x_orange",2590000],
			["cg_lancer_evo_x_grise",2590000],
			["cg_lancer_evo_x_vert",2590000],
			["cg_lancer_evo_x_bleufonce",2590000],
			["cg_lancer_evo_x_bleu",2590000],
			["cg_lancer_evo_x_white",2590000],
			["cg_lancer_evo_x_jaune",2590000],


			["Mrshounka_pagani_c_bleufonce",5590000],
			["Mrshounka_pagani_c_grise",5590000],
			["Mrshounka_pagani_c_jaune",5590000],
			["Mrshounka_pagani_c_noir",5590000],
			["Mrshounka_pagani_c_orange",5590000],
			["Mrshounka_pagani_c_rose",5590000],
			["Mrshounka_pagani_c_rouge",5590000],
			["Mrshounka_pagani_c_violet",5590000],




			["cg_lambo_veneno_noir",4590000],
			["cg_lambo_veneno_violet",4590000],
			["cg_lambo_veneno_rose",4590000],
			["cg_lambo_veneno_orange",4590000],
			["cg_lambo_veneno_grise",4590000],
			["cg_lambo_veneno_vert",4590000],
			["cg_lambo_veneno_bleufonce",4590000],
			["cg_lambo_veneno_bleu",4590000],
			["cg_lambo_veneno_white",4590000],
			["cg_lambo_veneno_jaune",4590000],

			//Holden racing
			["AM_Holden_RBlue",2985000],			
			["AM_Holden_RRed",2985000],
			["AM_Holden_RWhite",2985000],
			["AM_Holden_RBlack",2985000],

			["Mrshounka_lykan_c_bleufonce",6000000],
			["Mrshounka_lykan_c_grise",6000000],
			["Mrshounka_lykan_c_jaune",6000000],
			["Mrshounka_lykan_c_noir",6000000],
			["Mrshounka_lykan_c_orange",6000000],
			["Mrshounka_lykan_c_rose",6000000],
			["Mrshounka_lykan_c_rouge",6000000],
			["Mrshounka_lykan_c_violet",6000000],

			["shounka_f430_spider_bleufonce",5200000],
			["shounka_f430_spider_grise",5200000],
			["shounka_f430_spider_jaune",5200000],
			["shounka_f430_spider_noir",5200000],
			["shounka_f430_spider_orange",5200000],
			["shounka_f430_spider_rose",5200000],
			["shounka_f430_spider_rouge",5200000],
			["shounka_f430_spider_violet",5200000],

			["shounka_porsche911_bleufonce",2100000],
			["shounka_porsche911_grise",2100000],
			["shounka_porsche911_jaune",2100000],
			["shounka_porsche911_noir",2100000],
			["shounka_porsche911_orange",2100000],
			["shounka_porsche911_rose",2100000],
			["shounka_porsche911_rouge",2100000],
			["shounka_porsche911_violet",2100000],

			["CG_Lamborghini_Aventador_Red", 5000000],
			["CG_Lamborghini_Aventador_Black", 5000000],
			["CG_Lamborghini_Aventador_Blue", 5000000],
			["CG_Lamborghini_Aventador_Green", 5000000],
			["CG_Lamborghini_Aventador_Orange", 5000000],
			["CG_Lamborghini_Aventador_Purple", 5000000],
			["CG_Lamborghini_Aventador_White", 5000000],

			["A3L_EvoXrally_green",3999999],
			["A3L_EvoXrally_white",3999999],
			["A3L_EvoXrally_red",3999999],
			["A3L_EvoXrally_blue",3999999]
		];
	};

	case "chev_car":
	{
		_return = 
		[
			["A3L_SuburbanWhite",190000],
			["A3L_SuburbanBlue",190000],
			["A3L_SuburbanRed",190000],
			["A3L_SuburbanBlack",190000],
			["A3L_SuburbanGrey",190000],
			["A3L_SuburbanOrange",190000],
			["ADM_1964_Impala",150000],
			["ADM_1969_Camaro",300000],
			["ADM_1969_Charger",450000],
			["A3L_Camaro",195000]
		];
	};
	case "ford_car":
	{
		_return = 
		[
			["cg_raptor_truck_noir",390000],
			["cg_raptor_truck_violet",390000],
			["cg_raptor_truck_rose",390000],
			["cg_raptor_truck_orange",390000],
			["cg_raptor_truck_grise",390000],
			["cg_raptor_truck_vert",390000],
			["cg_raptor_truck_bleufonce",390000],
			["cg_raptor_truck_bleu",390000],
			["cg_raptor_truck_white",390000],
			["cg_raptor_truck_jaune",390000],
			["bv_the_crowner_2tone1",390000],

			["cg_raptor_truck_va_noir",390000],
			["cg_raptor_truck_va_violet",390000],
			["cg_raptor_truck_va_rose",390000],
			["cg_raptor_truck_va_orange",390000],
			["cg_raptor_truck_va_grise",390000],
			["cg_raptor_truck_va_vert",390000],
			["cg_raptor_truck_va_bleufonce",390000],
			["cg_raptor_truck_va_bleu",390000],
			["cg_raptor_truck_va_white",390000],
			["cg_raptor_truck_va_jaune",390000],

			["cg_ford_mustang_noir",559000],
			["cg_ford_mustang_violet",559000],
			["cg_ford_mustang_rose",559000],
			["cg_ford_mustang_orange",559000],
			["cg_ford_mustang_grise",559000],
			["cg_ford_mustang_vert",559000],
			["cg_ford_mustang_bleufonce",559000],
			["cg_ford_mustang_bleu",559000],
			["cg_ford_mustang_white",559000],
			["cg_ford_mustang_jaune",559000],
			["cg_ford_mustang_rouge",559000]
		];
	};
	case "dodge_car":
	{
		_return =
		[
			["AM_2015C_Black",260000],
			["AM_2015C_blue",260000],
			["AM_2015C_white",260000],

			["cg_dodge_charger_2015_noir",359000],
			["cg_dodge_charger_2015_violet",359000],
			["cg_dodge_charger_2015_rose",359000],
			["cg_dodge_charger_2015_orange",359000],
			["cg_dodge_charger_2015_grise",359000],
			["cg_dodge_charger_2015_vert",359000],
			["cg_dodge_charger_2015_bleufonce",359000],
			["cg_dodge_charger_2015_bleu",359000],
			["cg_dodge_charger_2015_white",359000],
			["cg_dodge_charger_2015_jaune",359000],
			["cg_dodge_charger_2015_rouge",359000]
		];
	};
	case "civ_car":
	{
		_return =
		[
			["CG_Taxi",111100],
			
			["critgamin_vangmcc_food",15000],
			["critgamin_vangmcc_general",15000],
			["critgamin_vangmcc_clothing",15000],
			["A3L_GMC_Van_Candy",45000],
			["A3L_GMC_Van_Fox",45000],
			["A3L_GMC_Van_Gangbang",45000],
			["A3L_GMC_Van_News4",45000],
			["A3L_GMC_Van_Dew",45000],
			["A3L_GMC_Van_Scoobydoo",45000],
			["A3L_GMC_Van_Shark",45000],
			["A3L_GMC_Van_Pokemon",45000],
			["A3L_GMC_Van_SWAGGY",45000],
			["A3L_GMC_Van_HGE",45000],
			["A3L_GMC_Van_Wifi",45000],
			["A3L_GMC_Van_Rockstar",45000],
			["A3L_GMC_Van_Monster",45000],
			["A3L_GMC_Van_LOST",45000],
			["A3L_GMC_Van_Ghost",45000],
			["A3L_GMC_Van_Chill",45000],
			["A3L_GMC_Van_Aqua",45000],
			["cg_van_news",85000],
			["Mrshounka_corbillard_c",50000],
			["ivory_tractor",50000],
			["ivory_tractor2",50000],
			["Jonzie_Quattroporte",150000],
			["Jonzie_30CSL",130000],
			["Jonzie_Viper",4500000],
			["Jonzie_Datsun_Z432",50000],
			["Jonzie_STI",713000],
			["Jonzie_Escalade",410000],
			["Jonzie_Datsun_510",20000],
			["Jonzie_Ceed",75000],
			["Jonzie_Raptor",440000],
			["Jonzie_Galant",50000],
			["Jonzie_Corolla",35000],
			["Jonzie_XB",30000],
			["Jonzie_VE",30000],
			["Jonzie_Ute",30000],
			["critgamin_smart_civ",18000],
			["critgamin_smart_bleu",18000],
			["critgamin_smart_noir",18000],
			["critgamin_smart_bleufonce",18000],
			["critgamin_smart_rouge",18000],
			["critgamin_smart_jaune",18000],
			["critgamin_smart_rose",18000],
			["critgamin_smart_grise",18000],
			["critgamin_smart_violet",18000],
			["critgamin_smart_orange",18000],
			["critgamin_smart_vert",18000],
 
			["critgamin_contown_civ",28000],
			["critgamin_contown_bleu",28000],
			["critgamin_contown_noir",28000],
			["critgamin_contown_bleufonce",28000],
			["critgamin_contown_rouge",28000],
			["critgamin_contown_jaune",28000],
			["critgamin_contown_rose",28000],
			["critgamin_contown_grise",28000],
			["critgamin_contown_violet",28000],
			["critgamin_contown_jaune",28000],
			["critgamin_contown_orange",28000],			
			["critgamin_contown_vert",28000],

			["critgamin_vangmcc_civ_noir",48000],
			["critgamin_vangmcc_civ_bleufonce",48000],
			["critgamin_vangmcc_civ_bleu",48000],
			["critgamin_vangmcc_civ_vert",48000],
			["critgamin_vangmcc_civ_rouge",48000],
			["critgamin_vangmcc_civ_jaune",48000],
			["critgamin_vangmcc_civ_rose",48000],
			["critgamin_vangmcc_civ_grise",48000],
			["critgamin_vangmcc_civ_violet",68000],

			["cg_mercedes_sprint_van_noir",125000],
			["cg_mercedes_sprint_van_violet",125000],
			["cg_mercedes_sprint_van_rose",125000],
			["cg_mercedes_sprint_van_orange",125000],
			["cg_mercedes_sprint_van_grise",125000],
			["cg_mercedes_sprint_van_vert",125000],
			["cg_mercedes_sprint_van_bleufonce",125000],
			["cg_mercedes_sprint_van_bleu",125000],
			["cg_mercedes_sprint_van_white",125000],
			["cg_mercedes_sprint_van_jaune",125000],
			["cg_mercedes_sprint_van_rouge",125000],



			["cg_citroen_c4_noir",49000],
			["cg_citroen_c4_violet",49000],
			["cg_citroen_c4_rose",49000],
			["cg_citroen_c4_orange",49000],
			["cg_citroen_c4_grise",49000],
			["cg_citroen_c4_vert",49000],
			["cg_citroen_c4_bleufonce",49000],
			["cg_citroen_c4_bleu",49000],
			["cg_citroen_c4_white",49000],
			["cg_citroen_c4_jaune",49000],
			["cg_citroen_c4_rouge",49000],

			["cg_renault_twingo_noir",49000],
			["cg_renault_twingo_violet",49000],
			["cg_renault_twingo_rose",49000],
			["cg_renault_twingo_orange",49000],
			["cg_renault_twingo_grise",49000],
			["cg_renault_twingo_vert",49000],
			["cg_renault_twingo_bleufonce",49000],
			["cg_renault_twingo_bleu",49000],
			["cg_renault_twingo_white",49000],
			["cg_renault_twingo_jaune",49000],
			["cg_renault_twingo_rouge",49000],

			["cg_citroen_ds3_noir",49000],
			["cg_citroen_ds3_violet",49000],
			["cg_citroen_ds3_rose",49000],
			["cg_citroen_ds3_orange",49000],
			["cg_citroen_ds3_grise",49000],
			["cg_citroen_ds3_vert",49000],
			["cg_citroen_ds3_bleufonce",49000],
			["cg_citroen_ds3_bleu",49000],
			["cg_citroen_ds3_white",49000],
			["cg_citroen_ds3_jaune",49000],
			["cg_citroen_ds3_rouge",49000],

			["cg_citroen_ds4_noir",59000],
			["cg_citroen_ds4_violet",59000],
			["cg_citroen_ds4_rose",59000],
			["cg_citroen_ds4_orange",59000],
			["cg_citroen_ds4_grise",59000],
			["cg_citroen_ds4_vert",59000],
			["cg_citroen_ds4_bleufonce",59000],
			["cg_citroen_ds4_bleu",59000],
			["cg_citroen_ds4_white",59000],
			["cg_citroen_ds4_jaune",59000],
			["cg_citroen_ds4_rouge",59000],

			["cg_peugeot_308_gti_civ_noir",59000],
			["cg_peugeot_308_gti_civ_violet",59000],
			["cg_peugeot_308_gti_civ_rose",59000],
			["cg_peugeot_308_gti_civ_orange",59000],
			["cg_peugeot_308_gti_civ_grise",59000],
			["cg_peugeot_308_gti_civ_vert",59000],
			["cg_peugeot_308_gti_civ_bleufonce",59000],
			["cg_peugeot_308_gti_civ_bleu",59000],
			["cg_peugeot_308_gti_civ_white",59000],
			["cg_peugeot_308_gti_civ_jaune",59000],
			["cg_peugeot_308_gti_civ_rouge",59000],

			["cg_peugeot_308_rcz_noir",59000],
			["cg_peugeot_308_rcz_violet",59000],
			["cg_peugeot_308_rcz_rose",59000],
			["cg_peugeot_308_rcz_orange",59000],
			["cg_peugeot_308_rcz_grise",59000],
			["cg_peugeot_308_rcz_vert",59000],
			["cg_peugeot_308_rcz_bleufonce",59000],
			["cg_peugeot_308_rcz_bleu",59000],
			["cg_peugeot_308_rcz_white",59000],
			["cg_peugeot_308_rcz_jaune",59000],
			["cg_peugeot_308_rcz_rouge",59000],


			["Mrshounka_Alfa_Romeo_bleufonce",85000],
			["Mrshounka_Alfa_Romeo_grise",85000],
			["Mrshounka_Alfa_Romeo_jaune",85000],
			["Mrshounka_Alfa_Romeo_noir",85000],
			["Mrshounka_Alfa_Romeo_orange",85000],
			["Mrshounka_Alfa_Romeo_rose",85000],
			["Mrshounka_Alfa_Romeo_rouge",85000],
			["Mrshounka_Alfa_Romeo_violet",85000],

			["S_Rangerover_Black",550000],
			["S_Rangerover_Red",550000],
			["S_Rangerover_Blue",550000],
			["S_Rangerover_Green",550000],
			["S_Rangerover_Purple",550000],
			["S_Rangerover_Grey",550000],
			["S_Rangerover_Orange",550000],
			["S_Rangerover_White",550000],

			["cg_peugeot_508_civ_noir",159000],
			["cg_peugeot_508_civ_violet",159000],
			["cg_peugeot_508_civ_rose",159000],
			["cg_peugeot_508_civ_orange",159000],
			["cg_peugeot_508_civ_grise",159000],
			["cg_peugeot_508_civ_vert",159000],
			["cg_peugeot_508_civ_bleufonce",159000],
			["cg_peugeot_508_civ_bleu",159000],
			["cg_peugeot_508_civ_white",159000],
			["cg_peugeot_508_civ_jaune",159000],
			["cg_peugeot_508_civ_rouge",159000]
		];
	};
	case "civ_motorbike":
	{
		_return =
		[
			["TT650_civ",100000],
			["tcg_hrly",25000],
			["tcg_hrly_white",25000],	
			["tcg_hrly_red",25000],
			["tcg_hrly_metal",25000],
			["tcg_hrly_blue",25000],
			["tcg_hrly_limited",45000],
			["tcg_hrly_demon",45000],
			["tcg_hrly_coco",45000],
			["tcg_hrly_orig1",45000],
			["tcg_hrly_orig2",45000],
			["tcg_hrly_skeleton",55000],
			["tcg_hrly_gay",65000],

			["cg_ducati_civ_noir",159000],
			["cg_ducati_civ_violet",159000],
			["cg_ducati_civ_rose",159000],
			["cg_ducati_civ_orange",159000],
			["cg_ducati_civ_grise",159000],
			["cg_ducati_civ_vert",159000],
			["cg_ducati_civ_bleufonce",159000],
			["cg_ducati_civ_bleu",159000],
			["cg_ducati_civ_white",159000],
			["cg_ducati_civ_jaune",159000],
			["cg_ducati_civ_rouge",159000]

		];
	};


	case "civ_truck":
	{
		_return =
		[
			//["Jonzie_Transit",90000],
			["C_Van_01_fuel_F",70000],
			["C_Van_01_box_F",90000],
			["C_Van_01_transport_F",75000],
			
			["C_MSSprinter_Rojo_F",125000],
			["C_MSSprinter_Azul_F",125000],
			["C_MSSprinter_Verde_F",125000],
			["C_MSSprinter_Blanco_F",125000],
			["C_MSSprinter_Negro_F",125000],
			
			["C_MSSprinter2_Rojo_F",125000],
			["C_MSSprinter2_Azul_F",125000],
			["C_MSSprinter2_Verde_F",125000],
			["C_MSSprinter2_Blanco_F",125000],
			["C_MSSprinter2_Negro_F",255000],
			


			["shounka_nemo_bleufonce",55000],
			["shounka_nemo_grise",55000],
			["shounka_nemo_jaune",55000],
			["shounka_nemo_noir",55000],
			["shounka_nemo_orange",55000],
			["shounka_nemo_rose",55000],
			["shounka_nemo_rouge",55000],
			["shounka_nemo_violet",55000],


			["cg_hummer_h1_noir",290000],
			["cg_hummer_h1_violet",290000],
			["cg_hummer_h1_rose",290000],
			["cg_hummer_h1_orange",290000],
			["cg_hummer_h1_grise",290000],
			["cg_hummer_h1_vert",290000],
			["cg_hummer_h1_bleufonce",290000],
			["cg_hummer_h1_bleu",290000],
			["cg_hummer_h1_white",290000],
			["cg_hummer_h1_jaune",290000],

			["shounka_h2_bleufonce",410000],
			["shounka_h2_grise",410000],
			["shounka_h2_jaune",410000],
			["shounka_h2_noir",410000],
			["shounka_h2_orange",410000],
			["shounka_h2_rose",410000],
			["shounka_h2_rouge",410000],
			["shounka_h2_violet",410000],


			["A3L_Bus",130000],
			//["A3L_SchoolBus",130000],
			
			["pop_bus_p_violet",250000],
			["pop_bus_p_rose",250000],
			["pop_bus_p_rouge",250000],
			["pop_bus_p_noir",250000],
			["pop_bus_p_ orange",250000],
			["pop_bus_p_grise",250000],
			["pop_bus_p_jaune",250000],
			["pop_bus_p_p",250000],
			
			["POP_bus_tour_violeta",450000],
			["POP_bus_tour_verde",450000],
			["POP_bus_tour_rosado",450000],
			["POP_bus_tour_rojo",450000],
			["POP_bus_tour_oscuro",450000],
			["POP_bus_tour_negro",450000],
			["POP_bus_tour_naranja",450000],
			["POP_bus_tour_gris",450000],
			["POP_bus_tour_blanco",450000],
			["POP_bus_tour_azul",450000],
			["POP_bus_tour_marino",450000],
			["POP_bus_tour_lima",450000],
			
			["Orel_Agora",220000],

			["cg_daf_xf_euro6_noir",759000],
			["cg_daf_xf_euro6_violet",759000],
			["cg_daf_xf_euro6_rose",759000],
			["cg_daf_xf_euro6_orange",759000],
			["cg_daf_xf_euro6_grise",759000],
			["cg_daf_xf_euro6_vert",759000],
			["cg_daf_xf_euro6_bleufonce",759000],
			["cg_daf_xf_euro6_white",759000],
			["cg_daf_xf_euro6_jaune",759000],
			["cg_daf_xf_euro6_rouge",759000],





			["cg_renault_magnum_truck_f_noir",759000],
			["cg_renault_magnum_truck_f_violet",759000],
			["cg_renault_magnum_truck_f_rose",759000],
			["cg_renault_magnum_truck_f_orange",759000],
			["cg_renault_magnum_truck_f_grise",759000],
			["cg_renault_magnum_truck_f_vert",759000],
			["cg_renault_magnum_truck_f_white",759000],
			["cg_renault_magnum_truck_f_jaune",759000],
			
			//["Jonzie_Flat_Bed",659000],
			["Jonzie_Log_Truck",709000],
			["Jonzie_Box_Truck",1000000],
			//["Jonzie_Tanker_Truck",1200000],
			["Jonzie_Tow_Truck",400000],



			["shounka_avalanche_bleufonce",700000],
			["shounka_avalanche_grise",700000],
			["shounka_avalanche_jaune",700000],
			["shounka_avalanche_noir",700000],
			["shounka_avalanche_orange",700000],
			["shounka_avalanche_rose",700000],
			["shounka_avalanche_rouge",700000],
			["shounka_avalanche_violet",700000],


			["shounka_ivceco_bleufonce",1100000],
			["shounka_ivceco_grise",1100000],
			["shounka_ivceco_jaune",1100000],
			["shounka_ivceco_noir",1100000],
			["shounka_ivceco_orange",1100000],
			["shounka_ivceco_rose",1100000],
			["shounka_ivceco_rouge",1100000],
			["shounka_ivceco_violet",1100000],

			["Nhz_audia8limo",3300000],

			["cg_audi_a8_limo_noir",4190000],
			["cg_audi_a8_limo_violet",4190000],
			["cg_audi_a8_limo_rose",4190000],
			["cg_audi_a8_limo_orange",4190000],
			["cg_audi_a8_limo_grise",4190000],
			["cg_audi_a8_limo_vert",4190000],
			["cg_audi_a8_limo_bleufonce",4190000],
			["cg_audi_a8_limo_bleu",4190000],
			["cg_audi_a8_limo_white",4190000],
			["cg_audi_a8_limo_jaune",4190000],

			["wirk_h3_limo",5130000],
			["shounka_buggy_bleufonce",4130000],
			["A3L_Towtruck",200000],
			["A3L_Towtruck_blue",200000],
			["A3L_Towtruck_green",200000],
			["A3L_Towtruck_orange",200000],
			["A3L_Towtruck_red",200000],
			["A3L_Towtruck_yellow",200000],
			["C_Offroad_01_repair_F",200000],
			
			["Orel_Master",320000],
			["Orel_Rangoo",220000],
			
			["nopixel_garbagetruck",750000]
		];
	};
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",50000],
			["I_G_Van_01_fuel_F",140000],
			["B_Heli_Light_01_F",2600000],
			["B_G_Offroad_01_F",265000],
			["shounka_monsteur_bleufonce",3500000]
		];

		if(license_civ_rebel) then
		{
		};
	};
	case "cop_car":
	{
		_return =
		[
		
			//POLICE
			//CB
			["cnp_Iveco_GOIT",200000],
			["AM_Escalade_SERT",50000],
			["A3L_Suburban_UM_Black",50000],
			//LSPA/REZ
			["kif_cvpi_lspa_lb_1",100000],
			["kif_cvpi_lspa_lb_2",100000],
			["kif_cvpi_lspa_slick_3",100000],
			["kif_cvpi_lspa_slick_4",100000],
			["kif_cvpi_lspa_lb_5",100000],
			//PD
			["kif_cvpi_pd_lb_6",100000],
			["kif_cvpi_pd_lb_7",100000],
			["kif_cvpi_pd_lb_8",100000],
			["kif_cvpi_pd_lb_9",100000],
			["kif_cvpi_pd_lb_10",100000],
			["kif_cvpi_pd_lb_11",100000],
			["kif_cvpi_pd_lb_12",100000],
			["kif_cvpi_pd_slick_13",100000],
			["kif_cvpi_pd_slick_14",100000],
			["kif_cvpi_pd_slick_15",100000],
			["kif_cvpi_pd_lb_16",100000],
			["kif_taurus_pdwhite_lb_22",100000],
			["kif_taurus_pdwhite_pb_24",100000],
			["ivory_m3_pd",250000],
			["charger_pd_skinned_26",100000],
			["charger_pd_skinned_27",100000],
			["kif_evo_pd_28",250000],
			["ivory_wrx_pd_30",200000],
			["ivory_wrx_pd_31",200000],
			["DAR_ExplorerPolice",200000],
			["cg_ducati_pol_reg",50000],
			//DOC
			["kev_taurus_co_lb_90",100000],
			["kev_cvpi_correction_lb_91",100000],
			["kev_cvpi_correction_lb_92",100000],
			["A3L_jailBus",50000],
			//DTU
			["ivory_wrx_unmarked",200000],
			["ivory_m3_unmarked",200000],
			["ivory_rs4_unmarked",200000],
			["ivory_isf_unmarked",200000],
			//SERT
			["charger_sert",250000],
			["Navara_Policia",200000]
			["cg_evoSERT1",250000],
			["DAR_SWATPolice",100000],
			["A3L_TaurusUC",50000],
			["ivory_wrx_marked",200000],
			//SO
			["kif_cvpi_sheriff_lb_19",10000],
			["kif_cvpi_sheriff_slick_20",10000],
			["kif_cvpi_sheriff_lb_21",10000],
			["kif_taurus_so_lb_23",100000],
			["kif_taurus_so_pb_25",100000],
			["kif_evo_so_29",250000],
			["DAR_ExplorerSheriff",150000],
			["ivory_rs4_unmarked",200000],
			["ivory_evox_unmarked",200000],
			["ivory_m3_marked_gts",200000]
		];
	};
	case "cop_car_civ":
	{
		_return =
		[
			["cg_brinks_bank_noir",250000],
			["shounka_transam_noir",30000],
			["IVORY_PRIUS",30000],
			["ivory_supra",30000],
			["ivory_supra_tuned",30000],
			["ivory_isf",30000],
			["ivory_m3",30000],
			["ivory_m3_gts",30000],
			["ivory_r34",30000],
			["ivory_rs4",30000],
			["ivory_rs4_taxi",30000],
			["ivory_190e",30000],
			["ivory_190e_taxi",30000],
			["ivory_e36",30000],
			["ivory_elise",30000],
			["ivory_evox",30000],
			["ivory_f1",30000],
			["ivory_gti",30000],
			["ivory_mp4",30000],
			["ivory_suburban",30000],
			["ivory_veyron",30000],
			["ivory_gt500",30000],
			["shounka_f430_spider_bleufonce",30000],
			["ivory_wrx",30000],
			["ivory_lp560",30000],
			["IVORY_R8",30000],
			["IVORY_R8SPYDER",30000],
			["IVORY_REV",30000],	
			["ivory_lfa",30000],
			["A3L_BMW135Sport1",30000],
			["bv_e60_m5_2tone1",30000],
			["bv_e60_m5_skin_camo_urban",30000],
			["bv_e60_m5_gold",30000],
			["bv_e60_m5_skin_white",30000],
			["bv_ben_dover_2tone1",30000],
			["bv_gtr_spec_v_2tone1",30000],
			["bv_caressa_gt_2tone1",30000],
			["bv_e63_amg_2tone1",30000],
			["bv_458_2tone1",30000],
			["bv_458_black2",30000],
			["bv_458_skin_white",30000],
			["bv_458_skin_camo_urban",30000],
			["bv_shelly_bf_skin",30000],
			["Jonzie_Mini_Cooper",30000],
			["ivory_c",30000],
			["Jonzie_Quattroporte",300000],
			["Jonzie_30CSL",300000],
			["Jonzie_Viper",300000],
			["Jonzie_Datsun_Z432",30000],
			["Jonzie_STI",300000],
			["Jonzie_Escalade",300000],
			["Jonzie_Datsun_510",300000],
			["Jonzie_Ceed",300000],
			["Jonzie_Raptor",300000],
			["Jonzie_Galant",300000],
			["Jonzie_Corolla",300000],
			["Jonzie_Mini_Cooper",300000],
			["Jonzie_Mini_Cooper_R_spec",300000],
			["Jonzie_XB",300000],
			["Jonzie_VE",300000],
			["Jonzie_Ute",300000],
			["A3L_Karts",30000],
			["C_Kart_01_Blu_F",30000],
			["C_Kart_01_Fuel_F",30000],
			["C_Kart_01_Red_F",30000],
			["C_Kart_01_Vrana_F",30000],
			["cg_peugeot_207_rc_noir",30000],
			["cg_peugeot_207_rc_violet",30000],
			["cg_peugeot_207_rc_rose",30000],
			["cg_peugeot_207_rc_orange",30000],
			["cg_peugeot_207_rc_grise",30000],
			["cg_peugeot_207_rc_vert",30000],
			["cg_peugeot_207_rc_bleufonce",30000],
			["cg_peugeot_207_rc_bleu",30000],
			["cg_peugeot_207_rc_white",30000],
			["cg_peugeot_207_rc_jaune",30000],


			["cg_volkswagen_touareg_noir",30000],
			["cg_volkswagen_touareg_violet",30000],
			["cg_volkswagen_touareg_rose",30000],
			["cg_volkswagen_touareg_orange",30000],
			["cg_volkswagen_touareg_grise",30000],
			["cg_volkswagen_touareg_vert",30000],
			["cg_volkswagen_touareg_bleufonce",30000],
			["cg_volkswagen_touareg_bleu",30000],
			["cg_volkswagen_touareg_white",30000],
			["cg_volkswagen_touareg_jaune",30000],

			["cg_vw_golfvi_noir",30000],
			["cg_vw_golfvi_violet",30000],
			["cg_vw_golfvi_rose",30000],
			["cg_vw_golfvi_orange",30000],
			["cg_vw_golfvi_grise",30000],
			["cg_vw_golfvi_vert",30000],
			["cg_vw_golfvi_bleufonce",30000],
			["cg_vw_golfvi_bleu",30000],
			["cg_vw_golfvi_white",30000],
			["cg_vw_golfvi_jaune",30000],

			["cg_jeep_cherokee_noir",30000],
			["cg_jeep_cherokee_violet",30000],
			["cg_jeep_cherokee_rose",30000],
			["cg_jeep_cherokee_orange",30000],
			["cg_jeep_cherokee_grise",30000],
			["cg_jeep_cherokee_vert",30000],
			["cg_jeep_cherokee_bleufonce",30000],
			["cg_jeep_cherokee_bleu",30000],
			["cg_jeep_cherokee_white",30000],
			["cg_jeep_cherokee_jaune",30000],

			["cg_audi_rs4_noir",30000],
			["cg_audi_rs4_violet",30000],
			["cg_audi_rs4_rose",30000],
			["cg_audi_rs4_orange",30000],
			["cg_audi_rs4_grise",30000],
			["cg_audi_rs4_vert",30000],
			["cg_audi_rs4_bleufonce",30000],
			["cg_audi_rs4_bleu",30000],
			["cg_audi_rs4_white",30000],
			["cg_audi_rs4_jaune",30000],

			["cg_audi_rs5_noir",30000],
			["cg_audi_rs5_violet",30000],
			["cg_audi_rs5_rose",30000],
			["cg_audi_rs5_orange",30000],
			["cg_audi_rs5_grise",30000],
			["cg_audi_rs5_vert",30000],
			["cg_audi_rs5_bleufonce",30000],
			["cg_audi_rs5_bleu",30000],
			["cg_audi_rs5_white",30000],
			["cg_audi_rs5_jaune",30000],




			["cg_bmw_1series_m_noir",30000],
			["cg_bmw_1series_m_violet",30000],
			["cg_bmw_1series_m_rose",30000],
			["cg_bmw_1series_m_orange",30000],
			["cg_bmw_1series_m_grise",30000],
			["cg_bmw_1series_m_vert",30000],
			["cg_bmw_1series_m_bleufonce",30000],
			["cg_bmw_1series_m_bleu",30000],
			["cg_bmw_1series_m_white",30000],
			["cg_bmw_1series_m_jaune",30000],

			["cg_renault_megane_rs_2015_noir",30000],
			["cg_renault_megane_rs_2015_violet",30000],
			["cg_renault_megane_rs_2015_rose",30000],
			["cg_renault_megane_rs_2015_orange",30000],
			["cg_renault_megane_rs_2015_grise",30000],
			["cg_renault_megane_rs_2015_vert",30000],
			["cg_renault_megane_rs_2015_bleufonce",30000],
			["cg_renault_megane_rs_2015_bleu",30000],
			["cg_renault_megane_rs_2015_white",30000],
			["cg_renault_megane_rs_2015_jaune",30000],



			["Mrshounka_c63_2015_bleufonce",30000],
			["Mrshounka_c63_2015_grise",30000],
			["Mrshounka_c63_2015_jaune",30000],
			["Mrshounka_c63_2015_noir",30000],
			["Mrshounka_c63_2015_orange",30000],
			["Mrshounka_c63_2015_rose",30000],
			["Mrshounka_c63_2015_rouge",30000],
			["Mrshounka_c63_2015_violet",30000],


			["cg_bmw_m6_noir",30000],
			["cg_bmw_m6_violet",30000],
			["cg_bmw_m6_rose",30000],
			["cg_bmw_m6_orange",30000],
			["cg_bmw_m6_grise",30000],
			["cg_bmw_m6_vert",30000],
			["cg_bmw_m6_bleufonce",30000],
			["cg_bmw_m6_bleu",30000],
			["cg_bmw_m6_white",30000],
			["cg_bmw_m6_jaune",30000],

			["cg_raptor_truck_noir",30000],
			["cg_raptor_truck_violet",30000],
			["cg_raptor_truck_rose",30000],
			["cg_raptor_truck_orange",30000],
			["cg_raptor_truck_grise",30000],
			["cg_raptor_truck_vert",30000],
			["cg_raptor_truck_bleufonce",30000],
			["cg_raptor_truck_bleu",30000],
			["cg_raptor_truck_white",30000],
			["cg_raptor_truck_jaune",30000],

			["cg_porsche_911_82_noir",30000],
			["cg_porsche_911_82_violet",30000],
			["cg_porsche_911_82_rose",30000],
			["cg_porsche_911_82_orange",30000],
			["cg_porsche_911_82_grise",30000],
			["cg_porsche_911_82_vert",30000],
			["cg_porsche_911_82_bleufonce",30000],
			["cg_porsche_911_82_bleu",30000],
			["cg_porsche_911_82_white",30000],
			["cg_porsche_911_82_jaune",30000],

			["cg_porsche_cayenne_noir",30000],
			["cg_porsche_cayenne_violet",30000],
			["cg_porsche_cayenne_rose",30000],
			["cg_porsche_cayenne_orange",30000],
			["cg_porsche_cayenne_grise",30000],
			["cg_porsche_cayenne_vert",30000],
			["cg_porsche_cayenne_bleufonce",30000],
			["cg_porsche_cayenne_bleu",30000],
			["cg_porsche_cayenne_white",30000],
			["cg_porsche_cayenne_jaune",30000],

			["cg_bowler_offroad_noir",30000],
			["cg_bowler_offroad_violet",30000],
			["cg_bowler_offroad_rose",30000],
			["cg_bowler_offroad_orange",30000],
			["cg_bowler_offroad_grise",30000],
			["cg_bowler_offroad_vert",30000],
			["cg_bowler_offroad_bleufonce",30000],
			["cg_bowler_offroad_bleu",30000],
			["cg_bowler_offroad_white",30000],
			["cg_bowler_offroad_jaune",30000],




			["shounka_gt_bleufonce",30000],
			["shounka_gt_grise",30000],
			["shounka_gt_jaune",30000],
			["shounka_gt_noir",30000],
			["shounka_gt_orange",30000],
			["shounka_gt_rose",30000],
			["shounka_gt_rouge",30000],
			["shounka_gt_violet",30000],

			["Mrshounka_mercedes_190_p_bleufonce",30000],
			["Mrshounka_mercedes_190_p_grise",30000],
			["Mrshounka_mercedes_190_p_jaune",30000],
			["Mrshounka_mercedes_190_p_noir",30000],
			["Mrshounka_mercedes_190_p_orange",30000],
			["Mrshounka_mercedes_190_p_rose",30000],
			["Mrshounka_mercedes_190_p_rouge",30000],
			["Mrshounka_mercedes_190_p_violet",30000],



						//HOLDENS
			["AM_Holden_White",30000],
			["AM_Holden_Black",30000],
			["AM_Holden_Green",30000],
			["AM_Holden_DarkGreen",30000],
			["AM_Holden_OffGreen",30000],
			["AM_Holden_blue",30000],
			["AM_Holden_OffYellow",30000],
			["AM_Holden_Pink",30000],
			["AM_Holden_Purple",30000],
			["AM_Holden_Yellow",30000],

			["cg_nissan_gtr_2012_noir",30000],
			["cg_nissan_gtr_2012_violet",30000],
			["cg_nissan_gtr_2012_rose",30000],
			["cg_nissan_gtr_2012_orange",30000],
			["cg_nissan_gtr_2012_grise",30000],
			["cg_nissan_gtr_2012_vert",30000],
			["cg_nissan_gtr_2012_bleufonce",30000],
			["cg_nissan_gtr_2012_bleu",30000],
			["cg_nissan_gtr_2012_white",30000],
			["cg_nissan_gtr_2012_jaune",30000],
		

			["shounka_mp4_bleufonce",30000],
			["shounka_mp4_grise",30000],
			["shounka_mp4_jaune",30000],
			["shounka_mp4_noir",30000],
			["shounka_mp4_orange",30000],
			["shounka_mp4_rose",30000],
			["shounka_mp4_rouge",30000],
			["shounka_mp4_violet",30000],


			["shounka_clk_bleufonce",30000],
			["shounka_clk_grise",30000],
			["shounka_clk_jaune",30000],
			["shounka_clk_noir",30000],
			["shounka_clk_orange",30000],
			["shounka_clk_rose",30000],
			["shounka_clk_rouge",30000],
			["shounka_clk_violet",30000],


			["cg_jeep_blinde_noir",30000],
			["cg_jeep_blinde_violet",30000],
			["cg_jeep_blinde_rose",30000],
			["cg_jeep_blinde_orange",30000],
			["cg_jeep_blinde_grise",30000],
			["cg_jeep_blinde_vert",30000],
			["cg_jeep_blinde_bleufonce",30000],
			["cg_jeep_blinde_bleu",30000],
			["cg_jeep_blinde_white",30000],
			["cg_jeep_blinde_jaune",30000],

			["cg_lancer_evo_x_noir",30000],
			["cg_lancer_evo_x_violet",30000],
			["cg_lancer_evo_x_rose",30000],
			["cg_lancer_evo_x_orange",30000],
			["cg_lancer_evo_x_grise",30000],
			["cg_lancer_evo_x_vert",30000],
			["cg_lancer_evo_x_bleufonce",30000],
			["cg_lancer_evo_x_bleu",30000],
			["cg_lancer_evo_x_white",30000],
			["cg_lancer_evo_x_jaune",30000],


			["Mrshounka_pagani_c_bleufonce",30000],
			["Mrshounka_pagani_c_grise",30000],
			["Mrshounka_pagani_c_jaune",30000],
			["Mrshounka_pagani_c_noir",30000],
			["Mrshounka_pagani_c_orange",30000],
			["Mrshounka_pagani_c_rose",30000],
			["Mrshounka_pagani_c_rouge",30000],
			["Mrshounka_pagani_c_violet",30000],




			["cg_lambo_veneno_noir",30000],
			["cg_lambo_veneno_violet",30000],
			["cg_lambo_veneno_rose",30000],
			["cg_lambo_veneno_orange",30000],
			["cg_lambo_veneno_grise",30000],
			["cg_lambo_veneno_vert",30000],
			["cg_lambo_veneno_bleufonce",30000],
			["cg_lambo_veneno_bleu",30000],
			["cg_lambo_veneno_white",30000],
			["cg_lambo_veneno_jaune",30000],

			//Holden racing
			["AM_Holden_RBlue",30000],			
			["AM_Holden_RRed",30000],
			["AM_Holden_RWhite",30000],
			["AM_Holden_RBlack",30000],

			["Mrshounka_lykan_c_bleufonce",30000],
			["Mrshounka_lykan_c_grise",30000],
			["Mrshounka_lykan_c_jaune",30000],
			["Mrshounka_lykan_c_noir",30000],
			["Mrshounka_lykan_c_orange",30000],
			["Mrshounka_lykan_c_rose",30000],
			["Mrshounka_lykan_c_rouge",30000],
			["Mrshounka_lykan_c_violet",30000],

			["shounka_f430_spider_bleufonce",30000],
			["shounka_f430_spider_grise",30000],
			["shounka_f430_spider_jaune",30000],
			["shounka_f430_spider_noir",30000],
			["shounka_f430_spider_orange",30000],
			["shounka_f430_spider_rose",30000],
			["shounka_f430_spider_rouge",30000],
			["shounka_f430_spider_violet",30000],

			["shounka_porsche911_bleufonce",30000],
			["shounka_porsche911_grise",30000],
			["shounka_porsche911_jaune",30000],
			["shounka_porsche911_noir",30000],
			["shounka_porsche911_orange",30000],
			["shounka_porsche911_rose",30000],
			["shounka_porsche911_rouge",30000],
			["shounka_porsche911_violet",30000],

			["CG_Lamborghini_Aventador_Red", 30000],
			["CG_Lamborghini_Aventador_Black", 30000],
			["CG_Lamborghini_Aventador_Blue", 30000],
			["CG_Lamborghini_Aventador_Green", 30000],
			["CG_Lamborghini_Aventador_Orange", 30000],
			["CG_Lamborghini_Aventador_Purple", 30000],
			["CG_Lamborghini_Aventador_White", 30000],

			["A3L_EvoXrally_green",30000],
			["A3L_EvoXrally_white",30000],
			["A3L_EvoXrally_red",30000],
			["A3L_EvoXrally_blue",30000],
			["A3L_SuburbanWhite",30000],
			["A3L_SuburbanBlue",30000],
			["A3L_SuburbanRed",30000],
			["A3L_SuburbanBlack",30000],
			["A3L_SuburbanGrey",30000],
			["A3L_SuburbanOrange",30000],
			["ADM_1964_Impala",30000],
			["ADM_1969_Camaro",30000],
			["ADM_1969_Charger",30000],
			["ADM_FORD_F100",30000],
			["A3L_Camaro",30000],
			["cg_raptor_truck_noir",30000],
			["cg_raptor_truck_violet",30000],
			["cg_raptor_truck_rose",30000],
			["cg_raptor_truck_orange",30000],
			["cg_raptor_truck_grise",30000],
			["cg_raptor_truck_vert",30000],
			["cg_raptor_truck_bleufonce",30000],
			["cg_raptor_truck_bleu",30000],
			["cg_raptor_truck_white",30000],
			["cg_raptor_truck_jaune",30000],
			["bv_the_crowner_2tone1",30000],

			["cg_raptor_truck_va_noir",30000],
			["cg_raptor_truck_va_violet",30000],
			["cg_raptor_truck_va_rose",30000],
			["cg_raptor_truck_va_orange",30000],
			["cg_raptor_truck_va_grise",30000],
			["cg_raptor_truck_va_vert",30000],
			["cg_raptor_truck_va_bleufonce",30000],
			["cg_raptor_truck_va_bleu",30000],
			["cg_raptor_truck_va_white",30000],
			["cg_raptor_truck_va_jaune",30000],

			["cg_ford_mustang_noir",30000],
			["cg_ford_mustang_violet",30000],
			["cg_ford_mustang_rose",30000],
			["cg_ford_mustang_orange",30000],
			["cg_ford_mustang_grise",30000],
			["cg_ford_mustang_vert",30000],
			["cg_ford_mustang_bleufonce",30000],
			["cg_ford_mustang_bleu",30000],
			["cg_ford_mustang_white",30000],
			["cg_ford_mustang_jaune",30000],
			["cg_ford_mustang_rouge",30000],
			["AM_2015C_Black",30000],
			["AM_2015C_blue",30000],
			["AM_2015C_white",30000],

			["cg_dodge_charger_2015_noir",30000],
			["cg_dodge_charger_2015_violet",30000],
			["cg_dodge_charger_2015_rose",30000],
			["cg_dodge_charger_2015_orange",30000],
			["cg_dodge_charger_2015_grise",30000],
			["cg_dodge_charger_2015_vert",30000],
			["cg_dodge_charger_2015_bleufonce",30000],
			["cg_dodge_charger_2015_bleu",30000],
			["cg_dodge_charger_2015_white",30000],
			["cg_dodge_charger_2015_jaune",30000],
			["cg_dodge_charger_2015_rouge",30000],
			["CG_Taxi",11110],
			
			["critgamin_vangmcc_food",30000],
			["critgamin_vangmcc_general",30000],
			["critgamin_vangmcc_clothing",30000],
			["A3L_GMC_Van_Candy",30000],
			["A3L_GMC_Van_Fox",30000],
			["A3L_GMC_Van_Gangbang",30000],
			["A3L_GMC_Van_News4",30000],
			["A3L_GMC_Van_Dew",30000],
			["A3L_GMC_Van_Scoobydoo",30000],
			["A3L_GMC_Van_Shark",30000],
			["A3L_GMC_Van_SWAGGY",30000],
			["A3L_GMC_Van_HGE",30000],
			["A3L_GMC_Van_Wifi",30000],
			["A3L_GMC_Van_Rockstar",30000],
			["A3L_GMC_Van_Monster",30000],
			["A3L_GMC_Van_LOST",30000],
			["A3L_GMC_Van_Ghost",30000],
			["A3L_GMC_Van_Chill",30000],
			["A3L_GMC_Van_Aqua",30000],
			["cg_van_news",30000],
			["Mrshounka_corbillard_c",30000],
			["ivory_tractor",30000],
			["ivory_tractor2",30000],
			
			["critgamin_smart_civ",30000],
			["critgamin_smart_bleu",30000],
			["critgamin_smart_noir",30000],
			["critgamin_smart_bleufonce",30000],
			["critgamin_smart_rouge",30000],
			["critgamin_smart_jaune",30000],
			["critgamin_smart_rose",30000],
			["critgamin_smart_grise",30000],
			["critgamin_smart_violet",30000],
			["critgamin_smart_orange",30000],
			["critgamin_smart_vert",30000],
 
			["critgamin_contown_civ",30000],
			["critgamin_contown_bleu",30000],
			["critgamin_contown_noir",30000],
			["critgamin_contown_bleufonce",30000],
			["critgamin_contown_rouge",30000],
			["critgamin_contown_jaune",30000],
			["critgamin_contown_rose",30000],
			["critgamin_contown_grise",30000],
			["critgamin_contown_violet",30000],
			["critgamin_contown_jaune",30000],
			["critgamin_contown_orange",30000],			
			["critgamin_contown_vert",30000],

			["critgamin_vangmcc_civ_noir",30000],
			["critgamin_vangmcc_civ_bleufonce",30000],
			["critgamin_vangmcc_civ_bleu",30000],
			["critgamin_vangmcc_civ_vert",30000],
			["critgamin_vangmcc_civ_rouge",30000],
			["critgamin_vangmcc_civ_jaune",30000],
			["critgamin_vangmcc_civ_rose",30000],
			["critgamin_vangmcc_civ_grise",30000],
			["critgamin_vangmcc_civ_violet",30000],

			["cg_mercedes_sprint_van_noir",30000],
			["cg_mercedes_sprint_van_violet",30000],
			["cg_mercedes_sprint_van_rose",30000],
			["cg_mercedes_sprint_van_orange",30000],
			["cg_mercedes_sprint_van_grise",30000],
			["cg_mercedes_sprint_van_vert",30000],
			["cg_mercedes_sprint_van_bleufonce",30000],
			["cg_mercedes_sprint_van_bleu",30000],
			["cg_mercedes_sprint_van_white",30000],
			["cg_mercedes_sprint_van_jaune",30000],
			["cg_mercedes_sprint_van_rouge",30000],



			["cg_citroen_c4_noir",30000],
			["cg_citroen_c4_violet",30000],
			["cg_citroen_c4_rose",30000],
			["cg_citroen_c4_orange",30000],
			["cg_citroen_c4_grise",30000],
			["cg_citroen_c4_vert",30000],
			["cg_citroen_c4_bleufonce",30000],
			["cg_citroen_c4_bleu",30000],
			["cg_citroen_c4_white",30000],
			["cg_citroen_c4_jaune",30000],
			["cg_citroen_c4_rouge",30000],

			["cg_renault_twingo_noir",30000],
			["cg_renault_twingo_violet",30000],
			["cg_renault_twingo_rose",30000],
			["cg_renault_twingo_orange",30000],
			["cg_renault_twingo_grise",30000],
			["cg_renault_twingo_vert",30000],
			["cg_renault_twingo_bleufonce",30000],
			["cg_renault_twingo_bleu",30000],
			["cg_renault_twingo_white",30000],
			["cg_renault_twingo_jaune",30000],
			["cg_renault_twingo_rouge",30000],

			["cg_citroen_ds3_noir",30000],
			["cg_citroen_ds3_violet",30000],
			["cg_citroen_ds3_rose",30000],
			["cg_citroen_ds3_orange",30000],
			["cg_citroen_ds3_grise",30000],
			["cg_citroen_ds3_vert",30000],
			["cg_citroen_ds3_bleufonce",30000],
			["cg_citroen_ds3_bleu",30000],
			["cg_citroen_ds3_white",30000],
			["cg_citroen_ds3_jaune",30000],
			["cg_citroen_ds3_rouge",30000],

			["cg_citroen_ds4_noir",30000],
			["cg_citroen_ds4_violet",30000],
			["cg_citroen_ds4_rose",30000],
			["cg_citroen_ds4_orange",30000],
			["cg_citroen_ds4_grise",30000],
			["cg_citroen_ds4_vert",30000],
			["cg_citroen_ds4_bleufonce",30000],
			["cg_citroen_ds4_bleu",30000],
			["cg_citroen_ds4_white",30000],
			["cg_citroen_ds4_jaune",30000],
			["cg_citroen_ds4_rouge",30000],

			["cg_peugeot_308_gti_civ_noir",30000],
			["cg_peugeot_308_gti_civ_violet",30000],
			["cg_peugeot_308_gti_civ_rose",30000],
			["cg_peugeot_308_gti_civ_orange",30000],
			["cg_peugeot_308_gti_civ_grise",30000],
			["cg_peugeot_308_gti_civ_vert",30000],
			["cg_peugeot_308_gti_civ_bleufonce",30000],
			["cg_peugeot_308_gti_civ_bleu",30000],
			["cg_peugeot_308_gti_civ_white",30000],
			["cg_peugeot_308_gti_civ_jaune",30000],
			["cg_peugeot_308_gti_civ_rouge",30000],

			["cg_peugeot_308_rcz_noir",30000],
			["cg_peugeot_308_rcz_violet",30000],
			["cg_peugeot_308_rcz_rose",30000],
			["cg_peugeot_308_rcz_orange",30000],
			["cg_peugeot_308_rcz_grise",30000],
			["cg_peugeot_308_rcz_vert",30000],
			["cg_peugeot_308_rcz_bleufonce",30000],
			["cg_peugeot_308_rcz_bleu",30000],
			["cg_peugeot_308_rcz_white",30000],
			["cg_peugeot_308_rcz_jaune",30000],
			["cg_peugeot_308_rcz_rouge",30000],


			["Mrshounka_Alfa_Romeo_bleufonce",30000],
			["Mrshounka_Alfa_Romeo_grise",30000],
			["Mrshounka_Alfa_Romeo_jaune",30000],
			["Mrshounka_Alfa_Romeo_noir",30000],
			["Mrshounka_Alfa_Romeo_orange",30000],
			["Mrshounka_Alfa_Romeo_rose",30000],
			["Mrshounka_Alfa_Romeo_rouge",30000],
			["Mrshounka_Alfa_Romeo_violet",30000],

			["S_Rangerover_Black",30000],
			["S_Rangerover_Red",30000],
			["S_Rangerover_Blue",30000],
			["S_Rangerover_Green",30000],
			["S_Rangerover_Purple",30000],
			["S_Rangerover_Grey",30000],
			["S_Rangerover_Orange",30000],
			["S_Rangerover_White",30000],

			["cg_peugeot_508_civ_noir",30000],
			["cg_peugeot_508_civ_violet",30000],
			["cg_peugeot_508_civ_rose",30000],
			["cg_peugeot_508_civ_orange",30000],
			["cg_peugeot_508_civ_grise",30000],
			["cg_peugeot_508_civ_vert",30000],
			["cg_peugeot_508_civ_bleufonce",30000],
			["cg_peugeot_508_civ_bleu",30000],
			["cg_peugeot_508_civ_white",30000],
			["cg_peugeot_508_civ_jaune",30000],
			["cg_peugeot_508_civ_rouge",30000],
			["tcg_hrly",30000],
			["tcg_hrly_white",30000],	
			["tcg_hrly_red",30000],
			["tcg_hrly_metal",30000],
			["tcg_hrly_blue",30000],
			["tcg_hrly_limited",30000],
			["tcg_hrly_demon",30000],
			["tcg_hrly_coco",30000],
			["tcg_hrly_orig1",30000],
			["tcg_hrly_orig2",30000],
			["tcg_hrly_skeleton",30000],
			["tcg_hrly_gay",30000],

			["cg_ducati_civ_noir",30000],
			["cg_ducati_civ_violet",30000],
			["cg_ducati_civ_rose",30000],
			["cg_ducati_civ_orange",30000],
			["cg_ducati_civ_grise",30000],
			["cg_ducati_civ_vert",30000],
			["cg_ducati_civ_bleufonce",30000],
			["cg_ducati_civ_bleu",30000],
			["cg_ducati_civ_white",30000],
			["cg_ducati_civ_jaune",30000],
			["cg_ducati_civ_rouge",30000],
			["C_Van_01_fuel_F",30000],
			["C_Van_01_box_F",30000],
			["C_Van_01_transport_F",30000],
			["C_MSSprinter_01_F",30000],
			["C_MSSprinter_02_F",30000],


			["shounka_nemo_bleufonce",30000],
			["shounka_nemo_grise",30000],
			["shounka_nemo_jaune",30000],
			["shounka_nemo_noir",30000],
			["shounka_nemo_orange",30000],
			["shounka_nemo_rose",30000],
			["shounka_nemo_rouge",30000],
			["shounka_nemo_violet",30000],


			["cg_hummer_h1_noir",30000],
			["cg_hummer_h1_violet",30000],
			["cg_hummer_h1_rose",30000],
			["cg_hummer_h1_orange",30000],
			["cg_hummer_h1_grise",30000],
			["cg_hummer_h1_vert",30000],
			["cg_hummer_h1_bleufonce",30000],
			["cg_hummer_h1_bleu",30000],
			["cg_hummer_h1_white",30000],
			["cg_hummer_h1_jaune",30000],

			["shounka_h2_bleufonce",30000],
			["shounka_h2_grise",30000],
			["shounka_h2_jaune",30000],
			["shounka_h2_noir",30000],
			["shounka_h2_orange",30000],
			["shounka_h2_rose",30000],
			["shounka_h2_rouge",30000],
			["shounka_h2_violet",30000],


			["A3L_Bus",30000],
			["Jonzie_Tow_Truck",30000],

			["cg_daf_xf_euro6_noir",30000],
			["cg_daf_xf_euro6_violet",30000],
			["cg_daf_xf_euro6_rose",30000],
			["cg_daf_xf_euro6_orange",30000],
			["cg_daf_xf_euro6_grise",30000],
			["cg_daf_xf_euro6_vert",30000],
			["cg_daf_xf_euro6_bleufonce",30000],
			["cg_daf_xf_euro6_white",30000],
			["cg_daf_xf_euro6_jaune",30000],
			["cg_daf_xf_euro6_rouge",30000],





			["cg_renault_magnum_truck_f_noir",30000],
			["cg_renault_magnum_truck_f_violet",30000],
			["cg_renault_magnum_truck_f_rose",30000],
			["cg_renault_magnum_truck_f_orange",30000],
			["cg_renault_magnum_truck_f_grise",30000],
			["cg_renault_magnum_truck_f_vert",30000],
			["cg_renault_magnum_truck_f_white",30000],
			["cg_renault_magnum_truck_f_jaune",30000],



			["shounka_avalanche_bleufonce",300000],
			["shounka_avalanche_grise",300000],
			["shounka_avalanche_jaune",300000],
			["shounka_avalanche_noir",300000],
			["shounka_avalanche_orange",300000],
			["shounka_avalanche_rose",300000],
			["shounka_avalanche_rouge",300000],
			["shounka_avalanche_violet",300000],


			["shounka_ivceco_bleufonce",30000],
			["shounka_ivceco_grise",30000],
			["shounka_ivceco_jaune",30000],
			["shounka_ivceco_noir",30000],
			["shounka_ivceco_orange",30000],
			["shounka_ivceco_rose",30000],
			["shounka_ivceco_rouge",30000],
			["shounka_ivceco_violet",30000],

			["Nhz_audia8limo",30000],

			["cg_audi_a8_limo_noir",30000],
			["cg_audi_a8_limo_violet",30000],
			["cg_audi_a8_limo_rose",30000],
			["cg_audi_a8_limo_orange",30000],
			["cg_audi_a8_limo_grise",30000],
			["cg_audi_a8_limo_vert",30000],
			["cg_audi_a8_limo_bleufonce",30000],
			["cg_audi_a8_limo_bleu",30000],
			["cg_audi_a8_limo_white",30000],
			["cg_audi_a8_limo_jaune",30000],

			["wirk_h3_limo",30000],
			["shounka_buggy_bleufonce",30000],
			["bv_monster_2tone1",30000],
			["A3L_Towtruck",30000],
			["A3L_Towtruck_blue",30000],
			["A3L_Towtruck_green",30000],
			["A3L_Towtruck_orange",30000],
			["A3L_Towtruck_red",30000],
			["A3L_Towtruck_yellow",30000],
			["C_Offroad_01_repair_F",30000],
			["I_C_Offroad_02_unarmed_F",30000],
			["I_C_Offroad_02_unarmed_olive_F",30000]
			
		];
	};
	case "civ_air":
	{
		_return =
		[
			["C_Quicksilver_MX_01_F",600000],
			["Sab_af_An2",1000000],
			["Sab_tk_An2",1000000],
			["Sab_ca_An2",1000000],
			["Sab_ana_An2",1000000],
			["Sab_yel_An2",1000000],
			["Sab_fd_An2",1000000],

			["Sab_Sea2_An2",1250000],
			["Sab_Sea4_An2",1250000],
			["Sab_Amphi_An2",1250000],

			["sab_camel",750000],
			["ARMSCor_A109_Civ",2800000],

			["IVORY_T6A_1",1200000],
			["B_Heli_Light_01_F",2400000],
			["ivory_b206",2600000],
			["ivory_b206_news",2600000],
			["C_Plane_Civil_01_F",1500000],
			["CUP_C_DC3_CIV",5000000],
			["CUP_C_C47_CIV",5000000],			
			["GNT_C185",10000000],
			["IVORY_CRJ200_1",10000000],
			["IVORY_ERJ135_1",10000000],
			["IVORY_YAK42D_1",10000000],
			["Sab_737_7",9000000],
			["Sab_737_6",9000000],
			["Sab_737_5",9000000],
			["Sab_737_4",9000000],
			["Sab_737_3",9000000],
			["Sab_737_2",9000000],
			["Sab_737",9000000]
		];
	};
	case "cop_air":
	{
		_return =
		[			
			/*["EC_135_F",45000],*/
			["B_Heli_Light_01_F",45000],
			["C_Heli_Light_01_civil_F",45000],
			["kif_vehicles_helicopter_mh9_police",85000],
			["melb_h6m",85000],
			["A3_Air_F_Heli_Light_02",100000]

		];
	};
	case "cop_airhq":
	{
		_return =
		[
			["B_Heli_Light_01_F",45000],
			["C_Heli_Light_01_civil_F",45000]
		];
	};
	case "med_ship":
	{
		_return = 
		[
			["CG_EMS_Boat",12500]
		];
	};
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",20000],
			["CUP_B_Zodiac_USMC",40000],
			["C_Boat_Civil_01_F",125000],
			["C_Boat_Transport_02_F",150000],
			["CUP_C_Fishing_Boat_Chernarus",150000],
			["A3L_Ship",400000],
			["A3L_Jetski",50000],
			["A3L_Jetski_yellow",50000],
			["C_Scooter_Transport_01_F",75000],
			["A3L_SpeedYacht",800000]
		];
	};
	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["A3PL_Cutter",100000],
			["A3PL_Patrol",500000],
			["C_Boat_Civil_01_police_F",20000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
