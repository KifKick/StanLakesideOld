#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
myHealth = 0;
player setvariable["playerInjuries",[0,0,0,0,0,0,0,0,0,0,0],true];
player setvariable["playerInjuriesToUpdate",[0,0,0,0,0,0,0,0,0,0,0],false];
checkFinish = true;
imHealing = false;
Fishing_Active = false;
shooting_death = false;
myUpdate = true;
bite = false;
jailHacking = false;
totalfencing = 0;
spikeAntispam = false;
tryingCall = false;
phonesRinging = false;
life_quitRecently = false;
phoneDisabled = false;
myCallOwner = player;
myPhoneCall = 0;
damageChance = false;
dispatch = false;
trucking = false;
dispatch2 = false;
callInProgress = false;
noleftclick = false;
allowanims = true;
harvesting = false;
isdragging = false;
im_hunting = false;
progress_bj = false;
buy_off = false;
buying_virt_item = false;
buying_phys_item = false;
allow_sat = true;
maintenance_on = false;
phone_s_1 = false;
phone_s_2 = false;
phone_s_3 = false;
previewing_on = false;
has_job = false;
driver_test = false;
start_up = true;
checked_taxi = false;
message1_active = false;
message2_active = false;
message3_active = false;
message4_active = false;
message5_active = false;
message6_active = false;
raceDone = false;
life_rebelbadguyman = false;
life_query_time = time;
life_lastKnownPos = [0,0,0];
life_show_actions = false;
life_actions = [];
skip_all = false;
im_dead = false;
life_isdowned = false;
life_action_time = 0;
life_racing = false;
cheap_buffs = false;
life_crazy = 0;
life_cokeaddict = false;
message_active = 0;
target_licenses = "None";
usingvehicle = false;
target_houses = [];
life_cruise = false;
life_charged = false;
life_gopro = false;
life_racers = [];
koil_antispam = 0;
life_newsJobs = false;
life_bankteller = false;
life_action_delay = time;
life_damagereturn = false;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_taxi = false;
life_seatbelt = false;
life_seatwarn = false;
life_smoking = false;
life_bonging = false;
paid_recently = false;
life_siren_active = false;
life_clothing_filter = 0;
life_hungerpain = false;
life_antispamactive = false;
life_koil_race = 0;
life_koil_race2 = 0;
life_rip = 0;
life_ApplyAir = false;
prevent_loot = false;
life_nos_active = 2;
life_dontsell = 0;
life_clothing_uniform = -1;
life_koil_rally = 0;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_nos_count = 0;
life_impound_inuse = false;
life_action_inUse = false;
life_sickness = false;
life_paintball = false;
life_spikestrip = ObjNull;
life_deathpos = 1;
//life_respawn_timer = 9; //Scaled in minutes
life_knockout = false;
life_rope = 1;
koil_life = 1;
life_stretcher = 1;
hacking = false;
life_poop = 20;
life_std = 0;
life_maxweightdone = 0;
life_eattotal = 0;
life_dirt = 0;
life_bro = 0;
life_num = 0;
life_pizza = 0;
life_koil_parachute = 0;
life_applypressure = 0;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_fadeSound = false;
life_spam_my_dick2 = 0;
life_spam_my_dick = 0;
life_married = "";
life_siren_on = 0;
koil_altcheck = false;
koildeb = 1;
koildebi = 1;
koildebii = 1;
koildebiii = 1;
koildebiiii = 1;
life_breakouton = 1;
life_nospampls = 0;
life_firing_range = false;
life_signedIn = false;
life_pickup_open = false;
life_carSalesman = false;
life_onTestDrive = false;
life_requestingTestDrive = false;
life_testDriveRequests = [];
//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for civs and cops? (Medics excluded for now)

//Revive constant variables.
__CONST__(life_revive_cops,FALSE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,2500); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,2); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,75000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_battery = 75;
life_gift_recent = false;
life_charging = 2;
life_koil_hh = 2;
life_hunger = 100;
life_revivemoney = false;
life_intox = 0.00;
__CONST__(life_paycheck_period,10); //Five minutes
cash_in_hand = 0;
__CONST__(life_impound_car,835);
__CONST__(life_impound_boat,825);
__CONST__(life_impound_air,885);
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west:
	{
		cash_in_bank = 10000; //Starting Bank Money
		life_paycheck = 200; //Paycheck Amount
	};
	case civilian:
	{
		cash_in_bank = 10000; //Starting Bank Money
		life_paycheck = 50; //Paycheck Amount
	};
	case independent: {
		cash_in_bank = 10000;
		life_paycheck = 200;
	};
	case east:
	{
		cash_in_bank = 10000; //Starting Bank Money
		life_paycheck = 400; //Paycheck Amount
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items =
[
	"life_inv_nos",
	"life_inv_condom",
	"life_inv_medkit",
	"life_inv_cleankit",
	"life_inv_weddingring",
	"life_inv_bandage",
	"life_inv_airkit",
	"life_inv_tierope",
	"life_inv_stitches",
	"life_inv_splint",
	"life_inv_mobilephone",
	"life_inv_panicbutton",
	"life_inv_epipen",
	"life_inv_bec",
	"life_inv_MDMAu",
	"life_inv_MDMAp",
	"life_inv_methu",
	"life_inv_emerald",
	"life_inv_sapphire",
	"life_inv_ruby",
	"life_inv_methp",
	"life_inv_cokeu",
	"life_inv_cokep",
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_uraniumu",
	"life_inv_uraniumo",
	"life_inv_uraniump",
	"life_inv_diamond",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_hackingtool",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_wheat",
	"life_inv_sunflower",
	"life_inv_corn",
	"life_inv_bean",
	"life_inv_cotton",
	"life_inv_olive",
	"life_inv_opium",
	"life_inv_cannabis",
	"life_inv_pumpkin",
	"life_inv_wheatseeds",
	"life_inv_sunflowerseeds",
	"life_inv_cornseeds",
	"life_inv_beanseeds",
	"life_inv_cottonseeds",
	"life_inv_oliveseeds",
	"life_inv_opiumseeds",
	"life_inv_cannabisseeds",
	"life_inv_pumpkinseeds",
	"life_inv_rawgoatmeat",
	"life_inv_rawchicken",
	"life_inv_rawsheepmeat",
	"life_inv_rawrabbit",
	//Additions
	"life_inv_zoobeer", // Duff Beer
	"life_inv_RoadCone",
	"life_inv_RoadConeStrip",
	"life_inv_RoadConeB",
	"life_inv_RoadConeStripB",
	"life_inv_RoadBlockWood",
	"life_inv_RoadBlockConc",
	"life_inv_RoadBlockRebel",
	"life_inv_BarGate",
	"life_inv_ziptie",
	"life_inv_tobacco",
	"life_inv_cigarette",
	"life_inv_kidney",
	"life_inv_zoobeer2",
	"life_inv_jackdaniels",
	"life_inv_vodka",
	"life_inv_jagerbomb",
	"life_inv_absinthe",
	"life_inv_redwine",
	"life_inv_whitewine",
	"life_inv_whiterussian",
	"life_inv_sexonthebeach",
	"life_inv_tequila",
	"life_inv_jackdanielsandcoke",
	"life_inv_raxsrum"
];













//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_civ_MDMA","civ"],
	["license_civ_meth","civ"],
	["license_civ_coke","civ"],
	["license_civ_hess","civ"],
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	["license_civ_uran","civ"],
	["license_civ_uranp","civ"],
	["license_civ_gang","civ"],
	["license_civ_gang2","civ"],
	["license_civ_gangTGC","civ"],
	["license_civ_gangANON","civ"],
	/*["license_civ_donator1","civ"],
	["license_civ_donator2","civ"],
	["license_civ_donator3","civ"],*/
	["license_civ_rifle","civ"],
	["license_cop_aiad","cop"],
	["license_cop_dtu","cop"],
	["license_cop_sert","cop"],
	["license_cop_prokurator","cop"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

//life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",120],["heroinp",250],["cokeu",150],["cokep",350],["cannabis",250],["opium",250],["marijuana",300],["turtle",500],["hackingtool",1000],["blastingcharge",1000],["boltcutter",350],["methu",40],["methp",400],["cokeu",40],["cokep",500],["MDMAu",30],["emerald",1220],["sapphire",1520],["ruby",720],["MDMAp",360],["uraniumu",800],["uraniumo",1000],["uraniump",1200]];


/*
	Sell / buy arrays
*/
sell_array =
[
	["weddingring",80],
	["bec",1],
	["medkit",5],
	["cleankit",1],
	["mobilephone",1],
	["panicbutton",1],
	["MDMAu",210],
	["MDMAp",560],
	["emerald",650],
	["sapphire",650],
	["ruby",650],
	["methu",120],
	["methp",600],
	["cokeu",210],
	["cokep",700],
	["apple",5],
	["heroinu",185],
	["heroinp",295],
	["salema",90],
	["ornate",90],
	["mackerel",65],
	["tuna",131],
	["mullet",65],
	["catshark",100],
	["marijuana",430],
	["turtle",410],
	["rabbit",1],
	["oilp",340],
	["water",1],
	["coffee",1],
	["bandage",1],
	["airkit",1],
	["tierope",50],
	["stitches",1],
	["splint",1],
	["epipen",1],
	["turtlesoup",90],
	["donuts",1],
	["tbacon",1],
	["lockpick",1],
	["pickaxe",5],
	["redgull",1],
	["peach",5],
	["diamond",35],
	["diamondc",290],
	["iron_r",230],
	["uraniumu",700],
	["uraniumo",700],
	["uraniump",1200],
	["copper_r",190],
	["salt_r",165],
	["glass",130],
	["fuelF",50],
	["wheat",20],
	["sunflower",50],
	["corn",90],
	["bean",80],
	["cotton",10],
	["olive",277],
	["opium",100],
	["cannabis",100],
	["pumpkin",110],
	["wheat seed",1],
	["sunflower seed",1],
	["corn seed",1],
	["bean seed",1],
	["cotton seed",1],
	["olive seed",1],
	["opium seed",15],
	["cannabis seed",15],
	["pumpkin seed",5],
	["Raw Meat",550],
	["raw chicken",70],
	["raw sheep meat",50],
	["raw rabbit",70],
	["spikeStrip",12],
	["cement",190],
	["goldbar",9500],
	//Deo Additions
	["zoobeer",1],
	["zoobeer2",1],
	["vodka",1],
	["jackdaniels",1],
	["jagerbomb",2],
	["absinthe",2],
	["redwine",2],
	["whitewine",2],
	["whiterussian",2],
	["sexonthebeach",2],
	["tequila",2],
	["jackdanielsandcoke",2],
	["condom",10],
	["nos",10],
	["BarGate",5],
	["RoadBlockConc",2],
	["RoadBlockWood",7],
	["RoadCone",1],
	["RoadConeStrip",2],
	["RoadConeB",1],
	["RoadConeStripB",5],
	["cigarette",1],
	["Rax's Rum",1]
];
__CONST__(sell_array,sell_array);

buy_array =
[
       ["cleankit",100],
        ["medkit",1200],
        ["condom",100],
        ["weddingring",10000],
        ["bandage",25],
        ["airkit",5],
        ["nos",4500],
        ["tierope",1125],
        ["stitches",1],
        ["splint",1],
        ["epipen",1],
        ["marijuana",3000],
        ["methp",2400],
        ["MDMAp",3600],
        ["cokep",3200],
        ["apple",6],
        ["rabbit",7],
        ["bec",50],
        ["mobilephone",1],
        ["panicbutton",1],
        ["salema",129],
        ["ornate",119],
        ["mackerel",125],
        ["tuna",295],
        ["mullet",125],
        ["catshark",220],
        ["turtle",700],
        ["water",1],
        ["turtlesoup",250],
        ["donuts",12],
        ["coffee",1],
        ["tbacon",7],
        ["lockpick",1500],
        ["pickaxe",120],
        ["redgull",12],
        ["fuelF",85],
        ["wheat",150],
        ["sunflower",160],
        ["corn",180],
        ["bean",80],
        ["cotton",50],
        ["olive",277],
        ["opium",400],
        ["cannabis",400],
        ["pumpkin",120],
        ["wheat seed",2],
        ["sunflower seed",2],
        ["corn seed",2],
        ["bean seed",2],
        ["cotton seed",2],
        ["olive seed",2],
        ["opium seed",25],
        ["cannabis seed",25],
        ["pumpkin seed",10],
        ["Raw Meat",580],
        ["raw chicken",80],
        ["raw sheep meat",60],
        ["raw rabbit",80],
        ["peach",6],
        ["spikeStrip",250],
        ["blastingcharge",15000],
        ["hackingtool",15000],
        ["boltcutter",2500],
        ["defusekit",250],
        ["storagesmall",7500],
        ["storagebig",15000],
        // Deo's Adds
        ["zoobeer",2],
        ["zoobeer2",2],
        ["vodka",12],
        ["jackdaniels",12],
        ["jagerbomb",22],
        ["absinthe",25],
        ["redwine",22],
        ["whitewine",35],
        ["whiterussian",32],
        ["sexonthebeach",32],
        ["tequila",32],
        ["jackdanielsandcoke",32],
        ["BarGate",50],
        ["RoadBlockConc",3000],
        ["RoadBlockWood",70],
        ["RoadCone",5],
        ["RoadConeStrip",25],
        ["RoadConeB",10],
        ["RoadConeStripB",50],
        ["cigarette",925],
        ["Rax's Rum",5]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["Fish_1_i",70],
	["Fish_2_i",120],
	["Fish_3_i",160],
	["Fish_4_i",100],
	["Fish_5_i",45],
	["ItemGPS",1],
	["ToolKit",1]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[







			["tcg_hrly",0],
			["tcg_hrly_white",0],
			["tcg_hrly_red",0],
			["tcg_hrly_metal",0],
			["tcg_hrly_blue",0],
			["tcg_hrly_limited",0],
			["tcg_hrly_demon",0],
			["tcg_hrly_coco",0],
			["tcg_hrly_orig1",0],
			["tcg_hrly_orig2",0],
			["tcg_hrly_skeleton",0],
			["tcg_hrly_gay",0],

			["wirk_h3_limo",0],






			["C_Van_01_fuel_F",0],
			["I_G_Van_01_fuel_F",0],

			["A3L_BMW135Sport1",0],
			["A3L_BMW135Sport2",0],
			["A3L_BMW135Sport3",0],
			["A3L_BMW135Sport4",0],
			["A3L_BMW135Sport5",0],
			["A3L_BMW135White",0],
			["A3L_BMW135Black",0],
			["A3L_BMW135Blue",0],
			["A3L_BMW135Purple",0],
			["A3L_BMW135Red",0],

			["AM_Holden_RBlue",0],
			["AM_Holden_RRed",0],
			["AM_Holden_RWhite",0],
			["AM_Holden_RBlack",0],

	["AM_Holden_EMS",0],
		["AM_Holden_Police",0],
		["GNT_C185",0],
		["M1030",0],
		["A3L_EvoXrally_green",0],
		["A3L_EvoXrally_white",0],
		["A3L_EvoXrally_red",0],
		["A3L_EvoXrally_blue",0],
		["A3L_EvoXDarkGreen",0],
		["A3L_OffGreen",0],
		["A3L_EvoXOffYellow",0],
		["A3L_EvoXYellow",0],
		["A3L_EvoXPink",0],
		["A3L_EvoXPurple",0],
		["A3L_EvoXWhite",0],
		["A3L_EvoXBlack",0],
		["A3L_EvoXRed",0],
		["EvoXSo1",0],
		["EvoXSo2",0],
		["EvoXSo3",0],
		["EvoXSo4",0],
		["A3L_TaurusPD1",0],
		["A3L_TaurusPD2",0],
		["A3L_SuburbanCSO",0],
		["A3L_Suburban",0],
		["A3L_SuburbanUM",0],
	["B_QuadBike_01_F",0],
	["C_Hatchback_01_F",0],
	["C_Offroad_01_F", 0],
	["B_G_Offroad_01_F",0],
	["C_SUV_01_F",0],
	["C_Van_01_transport_F",0],
	["C_Hatchback_01_sport_F",0],
	["C_Van_01_fuel_F",0],
	["I_Heli_Transport_02_F",0],
	["C_Van_01_box_F",0],
	["I_Truck_02_transport_F",0],
	["I_Truck_02_covered_F",0],
	["B_Truck_01_transport_F",0],
	["B_Truck_01_box_F", 0],
	["O_MRAP_02_F",0],
	["B_Heli_Light_01_F",0],
	["O_Heli_Light_02_unarmed_F",0],
	["C_Rubberboat",0],
	["C_Boat_Civil_01_F",0],
	["B_Boat_Transport_01_F",0],
	["C_Boat_Civil_01_police_F",0],
	["B_Boat_Armed_01_minigun_F",0],
	["B_SDV_01_F",0],
	["A3L_Bus",0],
	["A3L_Karts",0],
	["A3L_AmberLamps",0],
	["A3L_Laddertruck",0],
	["A3L_Cooper_concept_blue",0],
	["A3L_Cooper_concept_black",0],
	["A3L_Cooper_concept_red",0],
	["A3L_Cooper_concept_white",0],
	["A3L_AMC",0],
	["A3L_AMXRed",0],
	["A3L_AMXWhite",0],
	["A3L_AMXBlue",0],
	["A3L_AMXGL",0],
	["A3L_VolvoS60RBlack",0],
	["A3L_VolvoS60Rred",0],
	["S_Skyline_Red",0],
	["S_Skyline_Blue",0],
	["S_Skyline_Black",0],
	["S_Skyline_Yellow",0],
	["S_Skyline_Purple",0],
	["S_Skyline_White",0],
	["A3L_Ferrari458black",0],
	["A3L_Ferrari458white",0],
	["A3L_Ferrari458blue",0],
	["A3L_SuburbanWhite",0],
	["A3L_SuburbanBlue",0],
	["A3L_SuburbanRed",0],
	["A3L_SuburbanBlack",0],
	["A3L_SuburbanGrey",0],
	["A3L_SuburbanOrange",0],
	["A3L_TahoeWhite",0],
	["A3L_TahoeRed",0],
	["A3L_TahoeBlue",0],
	["A3L_Camaro",0],
	["A3L_FordKaBlue",0],
	["A3L_FordKaRed",0],
	["A3L_FordKaBlack",0],
	["A3L_FordKaWhite",0],
	["A3L_FordKaGrey",0],
	["A3L_Taurus",0],
	["A3L_TaurusBlack",0],
	["A3L_TaurusBlue",0],
	["A3L_TaurusRed",0],
	["A3L_TaurusWhite",0],
	["A3L_GrandCaravan",0],
	["A3L_GrandCaravanBlk",0],
	["A3L_GrandCaravanBlue",0],
	["A3L_GrandCaravanGreen",0],
	["A3L_GrandCaravanRed",0],
	["A3L_GrandCaravanPurple",0],
	["A3L_Challenger",0],
	["A3L_ChallengerGreen",0],
	["A3L_ChallengerRed",0],
	["A3L_ChallengerWhite",0],
	["A3L_ChallengerBlack",0],
	["A3L_ChallengerBlue",0],

	["A3L_ChargerRed",0],
	["A3L_ChargerBlue",0],
	["A3L_ChargerBlack",0],
	["A3L_ChargerWhite",0],
	["A3L_Charger",0],

	["Jonzie_Viper",0],
	["A3L_Escort",0],
	["CG_Taxi",0],
	["A3L_EscortBlack",0],
	["A3L_EscortBlue",0],
	["A3L_EscortWhite",0],
	["A3L_EscortPink",0],
	["A3L_PuntoRed",0],
	["A3L_PuntoBlack",0],
	["A3L_PuntoWhite",0],
	["A3L_PuntoGrey",0],
	["A3L_RegalBlack",0],
	["A3L_RegalBlue",0],
	["A3L_RegalOrange",0],
	["A3L_RegalRed",0],
	["A3L_RegalWhite",0],
	["A3L_JeepWhiteBlack",0],
	["A3L_JeepGreenBlack",0],
	["A3L_JeepRedTan",0],
	["A3L_JeepRedBlack",0],
	["A3L_JeepGrayBlack",0],
	["A3L_VolksWagenGolfGTired",0],
	["A3L_VolksWagenGolfGTiblack",0],
	["A3L_VolksWagenGolfGTiblue",0],
	["A3L_VolksWagenGolfGTiwhite",0],
	["A3L_F350Black",0],
	["A3L_F350Blue",0],
	["A3L_F350Red",0],
	["A3L_F350White",0],
	["A3L_Dumptruck",0],
	["C_Van_01_box_F",0],
	["C_Van_01_transport_F",0],
	["A3L_GrandCaravanUC",0],
	["A3L_GrandCaravanUCBlack",0],
	["A3L_TaurusFPBLBPD",0],
	["A3L_TaurusFPBLBCSO",0],
	["A3L_TaurusFPBPD",0],
	["A3L_TaurusFPBPDGM",0],
	["A3L_TaurusFPBCSO",0],
	["A3L_TaurusUCBlack",0],
	["A3L_TaurusUCGrey",0],
	["A3L_TaurusUCWhite",0],
	["A3L_TaurusUCBlue",0],
	["A3L_TaurusUCRed",0],
	["A3L_CVPIFPBPD",0],
	["A3L_CVPIFPBCSO",0],
	["A3L_CVPIFPBFG",0],
	["A3L_CVPIFPBLBPD",0],
	["A3L_CVPIFPBLBCSO",0],
	["A3L_CVPIFPBLBFG",0],
	["A3L_TahoeUCPB",0],
	["A3L_TahoeUC",0],
	["A3L_TahoeUCGMPB",0],
	["A3L_TahoeCSOLBPB",0 ],
	["A3L_jailBus",0],
	["A3L_Suburban",0],
	["A3L_SuburbanCSO",0],
	["A3L_SuburbanFG",0],
	["B_MRAP_01_F",7500]


];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[

			["ivory_supra",17500],
			["ivory_isf",13000],
			["ivory_m3",22950],
			["ivory_m3_gts",26500],
			["ivory_gt500",18000],
			["ivory_wrx",28500],
			["ivory_lp560",31300],
			["IVORY_R8",28300],
			["IVORY_REV",29900],
			["ivory_lfa",33900],
			["ivory_r34",32200],
			["ivory_rs4",11900],
			["ivory_rs4_taxi",12200],
			["ivory_190e",8800],
			["ivory_190e_taxi",9100],
			["ivory_e36",9800],
			["ivory_elise",39000],
			["ivory_evox",24000],
			["ivory_f1",32200],
			["ivory_gti",4500],
			["ivory_mp4",39800],
			["ivory_suburban",6600],
			["ivory_veyron",42200],
			["shounka_f430_spider_bleufonce",350],
			["bv_458_2tone1",37000],
			["bv_458_black2",37000],
			["bv_458_skin_white",37000],
			["bv_458_skin_camo_urban",37000],
			["bv_shelly_bf_skin",41500],
			["Jonzie_Mini_Cooper",1500],
			["ivory_c",22600],

			["Mustang_01",14500],
			["Mustang_02",14500],
			["Mustang_03",14500],
			["Mustang_04",14500],
			["Mustang_05",14500],
			["Mustang_06",14500],
			["Mustang_07",14500],
			["Mustang_08",14500],
			["Mustang_09",14500],
			["Mustang_10",14500],
			["Mustang_11",14500],
			["Mustang_Flame",14500],

			["LandRover_01",17000],
			["LandRover_02",17000],
			["LandRover_03",17000],
			["LandRover_04",17000],
			["LandRover_05",17000],
			["LandRover_06",17000],
			["LandRover_07",17000],
			["LandRover_08",17000],
			["LandRover_09",17000],
			["LandRover_10",17000],
			["LandRover_11",17000],
			["LandRover_12",17000],
			["LandRover_13",17000],
			["LandRover_14",17000],
			["LandRover_14",17000],

			["red_beetle_66_black",5500],
			["red_beetle_66_fontanagrey",5500],
			["red_beetle_66_pearlwhite",5500],
			["red_beetle_66_rubyred",5500],
			["red_beetle_66_seablue",5500],
			["red_beetle_66_vwblue",5500],
			["red_beetle_66_yukonyellow",5500],
			["red_beetle_66_seasand",5500],
			["red_beetle_66_bahamablue",5500],

			["red_corvette_14_black",16000],
			["red_corvette_14_aqua",16000],
			["red_corvette_14_darkblue",16000],
			["red_corvette_14_green",16000],
			["red_corvette_14_red",16000],
			["red_corvette_14_pink",16000],
			["red_corvette_14_yellow",16000],
			["red_corvette_14_orange",16000],
			["red_corvette_14_white",16000],
			["red_corvette_14_purple",16000],
			["red_corvette_14_darkgreen",16000],
			["red_corvette_14_darkred",16000],

			["red_genesis_16_black",11000],
			["red_genesis_16_aqua",11000],
			["red_genesis_16_darkblue",11000],
			["red_genesis_16_green",11000],
			["red_genesis_16_red",11000],
			["red_genesis_16_pink",11000],
			["red_genesis_16_yellow",11000],
			["red_genesis_16_orange",11000],
			["red_genesis_16_white",11000],
			["red_genesis_16_purple",11000],
			["red_genesis_16_darkgreen",11000],
			["red_genesis_16_darkred",11000],

			["red_gs350_13_black",13000],
			["red_gs350_13_blue",13000],
			["red_gs350_13_darkblue",13000],
			["red_gs350_13_red",13000],
			["red_gs350_13_brown",13000],
			["red_gs350_13_white",13000],
			["red_gs350_13_purple",13000],
			["red_gs350_13_grey",13000],
			["red_gs350_13_darkred",130000],

			["red_porsche_12_black",10500],
			["red_porsche_12_aqua",10500],
			["red_porsche_12_blue",10500],
			["red_porsche_12_darkblue",10500],
			["red_porsche_12_green",10500],
			["red_porsche_12_red",10500],
			["red_porsche_12ink",10500],
			["red_porsche_12_yellow",10500],
			["red_porsche_12_orange",10500],
			["red_porsche_12_white",10500],
			["red_porsche_12urple",10500],
			["red_porsche_12_darkgreen",10500],
			["red_porsche_12_darkred",10500],

			["red_ram_06_black",10000],
			["red_ram_06_aqua",10000],
			["red_ram_06_darkblue",10000],
			["red_ram_06_green",10000],
			["red_ram_06_red",10000],
			["red_ram_06_pink",10000],
			["red_ram_06_yellow",10000],
			["red_ram_06_orange",10000],
			["red_ram_06_white",10000],
			["red_ram_06_purple",10000],
			["red_ram_06_darkgreen",10000],
			["red_ram_06_darkred",10000],

			["red_s65_12_black",16500],
			["red_s65_12_aqua",16500],
			["red_s65_12_darkblue",16500],
			["red_s65_12_green",16500],
			["red_s65_12_red",16500],
			["red_s65_12_pink",16500],
			["red_s65_12_orange",16500],
			["red_s65_12_white",16500],
			["red_s65_12_purple",16500],
			["red_s65_12_darkgreen",16500],
			["red_s65_12_darkred",16500],

			["red_taurus_10_black",11500],
			["red_taurus_10_aqua",11500],
			["red_taurus_10_darkblue",11500],
			["red_taurus_10_blue",11500],
			["red_taurus_10_green",11500],
			["red_taurus_10_red",11500],
			["red_taurus_10_pink",11500],
			["red_taurus_10_yellow",11500],
			["red_taurus_10_orange",11500],
			["red_taurus_10_white",11500],
			["red_taurus_10_purple",11500],
			["red_taurus_10_darkgreen",11500],
			["red_taurus_10_darkred",11500],

			["red_xkrs_12_black",16500],
			["red_xkrs_12_aqua",16500],
			["red_xkrs_12_darkblue",16500],
			["red_xkrs_12_red",16500],
			["red_xkrs_12_orange",16500],
			["red_xkrs_12_white",16500],
			["red_xkrs_12_purple",16500],
			["red_xkrs_12_darkgreen",16500],
			["red_xkrs_12_darkred",16500],

			["shounka_rs6_violet",11000],
			["shounka_rs6_jaune",11000],
			["shounka_rs6_rouge",11000],
			["shounka_rs6_rose",11000],
			["shounka_rs6_orange",11000],
			["shounka_rs6_violet",11000],
			["shounka_rs6_grise",11000],
			["shounka_rs6_bleufonce",11000],
			["shounka_rs6_noir",11000],
			["ivory_m3_gts_Hess_Company",26500],
			["ivory_wrx_hess",28500],

			["BMWX5_01",3000],
			["BMWX5_02",3000],
			["BMWX5_03",3000],
			["BMWX5_04",3000],
			["BMWX5_05",3000],
			["BMWX5_06",3000],
			["BMWX5_07",3000],
			["BMWX5_08",3000],
			["BMWX5_09",3000],
			["BMWX5_10",3000],
			["BMWX5_11",3000],

			["Tahoe_01",7000],
			["Tahoe_02",7000],
			["Tahoe_03",7000],
			["Tahoe_04",7000],
			["Tahoe_05",7000],
			["Tahoe_06",7000],
			["Tahoe_07",7000],
			["Tahoe_08",7000],
			["Tahoe_09",7000],
			["Tahoe_10",7000],
			["Tahoe_11",7000],

			["cg_peugeot_207_rc_noir",2400],
			["cg_peugeot_207_rc_violet",2400],
			["cg_peugeot_207_rc_rose",2400],
			["cg_peugeot_207_rc_orange",2400],
			["cg_peugeot_207_rc_grise",2400],
			["cg_peugeot_207_rc_vert",2400],
			["cg_peugeot_207_rc_bleufonce",2400],
			["cg_peugeot_207_rc_bleu",2400],
			["cg_peugeot_207_rc_white",2400],
			["cg_peugeot_207_rc_jaune",2400],


			["cg_volkswagen_touareg_noir",3600],
			["cg_volkswagen_touareg_violet",3600],
			["cg_volkswagen_touareg_rose",3600],
			["cg_volkswagen_touareg_orange",3600],
			["cg_volkswagen_touareg_grise",3600],
			["cg_volkswagen_touareg_vert",3600],
			["cg_volkswagen_touareg_bleufonce",3600],
			["cg_volkswagen_touareg_bleu",3600],
			["cg_volkswagen_touareg_white",3600],
			["cg_volkswagen_touareg_jaune",3600],

			["cg_vw_golfvi_noir",3300],
			["cg_vw_golfvi_violet",3300],
			["cg_vw_golfvi_rose",3300],
			["cg_vw_golfvi_orange",3300],
			["cg_vw_golfvi_grise",3300],
			["cg_vw_golfvi_vert",3300],
			["cg_vw_golfvi_bleufonce",3300],
			["cg_vw_golfvi_bleu",3300],
			["cg_vw_golfvi_white",3300],
			["cg_vw_golfvi_jaune",3300],

			["cg_jeep_cherokee_noir",3390],
			["cg_jeep_cherokee_violet",3390],
			["cg_jeep_cherokee_rose",3390],
			["cg_jeep_cherokee_orange",3390],
			["cg_jeep_cherokee_grise",3390],
			["cg_jeep_cherokee_vert",3390],
			["cg_jeep_cherokee_bleufonce",33900],
			["cg_jeep_cherokee_bleu",3390],
			["cg_jeep_cherokee_white",3390],
			["cg_jeep_cherokee_jaune",3390],

			["cg_audi_rs4_noir",3400],
			["cg_audi_rs4_violet",3400],
			["cg_audi_rs4_rose",3400],
			["cg_audi_rs4_orange",3400],
			["cg_audi_rs4_grise",3400],
			["cg_audi_rs4_vert",3400],
			["cg_audi_rs4_bleufonce",3400],
			["cg_audi_rs4_bleu",3400],
			["cg_audi_rs4_white",3400],
			["cg_audi_rs4_jaune",3400],

			["cg_audi_rs5_noir",4400],
			["cg_audi_rs5_violet",4400],
			["cg_audi_rs5_rose",4400],
			["cg_audi_rs5_orange",4400],
			["cg_audi_rs5_grise",4400],
			["cg_audi_rs5_vert",4400],
			["cg_audi_rs5_bleufonce",4400],
			["cg_audi_rs5_bleu",4400],
			["cg_audi_rs5_white",4400],
			["cg_audi_rs5_jaune",4400],




			["cg_bmw_1series_m_noir",12900],
			["cg_bmw_1series_m_violet",12900],
			["cg_bmw_1series_m_rose",12900],
			["cg_bmw_1series_m_orange",12900],
			["cg_bmw_1series_m_grise",12900],
			["cg_bmw_1series_m_vert",12900],
			["cg_bmw_1series_m_bleufonce",12900],
			["cg_bmw_1series_m_bleu",12900],
			["cg_bmw_1series_m_white",12900],
			["cg_bmw_1series_m_jaune",12900],

			["cg_renault_megane_rs_2015_noir",4900],
			["cg_renault_megane_rs_2015_violet",4900],
			["cg_renault_megane_rs_2015_rose",4900],
			["cg_renault_megane_rs_2015_orange",4900],
			["cg_renault_megane_rs_2015_grise",4900],
			["cg_renault_megane_rs_2015_vert",4900],
			["cg_renault_megane_rs_2015_bleufonce",4900],
			["cg_renault_megane_rs_2015_bleu",4900],
			["cg_renault_megane_rs_2015_white",4900],
			["cg_renault_megane_rs_2015_jaune",4900],



			["Mrshounka_c63_2015_bleufonce",7800],
			["Mrshounka_c63_2015_grise",7800],
			["Mrshounka_c63_2015_jaune",7800],
			["Mrshounka_c63_2015_noir",7800],
			["Mrshounka_c63_2015_orange",7800],
			["Mrshounka_c63_2015_rose",7800],
			["Mrshounka_c63_2015_rouge",7800],
			["Mrshounka_c63_2015_violet",7800],


			["cg_bmw_m6_noir",8900],
			["cg_bmw_m6_violet",8900],
			["cg_bmw_m6_rose",8900],
			["cg_bmw_m6_orange",8900],
			["cg_bmw_m6_grise",8900],
			["cg_bmw_m6_vert",8900],
			["cg_bmw_m6_bleufonce",8900],
			["cg_bmw_m6_bleu",8900],
			["cg_bmw_m6_white",8900],
			["cg_bmw_m6_jaune",8900],

			["cg_raptor_truck_noir",4900],
			["cg_raptor_truck_violet",4900],
			["cg_raptor_truck_rose",4900],
			["cg_raptor_truck_orange",4900],
			["cg_raptor_truck_grise",4900],
			["cg_raptor_truck_vert",4900],
			["cg_raptor_truck_bleufonce",4900],
			["cg_raptor_truck_bleu",4900],
			["cg_raptor_truck_white",4900],
			["cg_raptor_truck_jaune",4900],

			["cg_porsche_911_82_noir",8900],
			["cg_porsche_911_82_violet",8900],
			["cg_porsche_911_82_rose",8900],
			["cg_porsche_911_82_orange",8900],
			["cg_porsche_911_82_grise",8900],
			["cg_porsche_911_82_vert",8900],
			["cg_porsche_911_82_bleufonce",8900],
			["cg_porsche_911_82_bleu",8900],
			["cg_porsche_911_82_white",8900],
			["cg_porsche_911_82_jaune",8900],

			["cg_porsche_cayenne_noir",14900],
			["cg_porsche_cayenne_violet",14900],
			["cg_porsche_cayenne_rose",14900],
			["cg_porsche_cayenne_orange",14900],
			["cg_porsche_cayenne_grise",14900],
			["cg_porsche_cayenne_vert",14900],
			["cg_porsche_cayenne_bleufonce",14900],
			["cg_porsche_cayenne_bleu",14900],
			["cg_porsche_cayenne_white",14900],
			["cg_porsche_cayenne_jaune",14900],

			["cg_bowler_offroad_noir",4900],
			["cg_bowler_offroad_violet",4900],
			["cg_bowler_offroad_rose",4900],
			["cg_bowler_offroad_orange",4900],
			["cg_bowler_offroad_grise",4900],
			["cg_bowler_offroad_vert",4900],
			["cg_bowler_offroad_bleufonce",4900],
			["cg_bowler_offroad_bleu",4900],
			["cg_bowler_offroad_white",4900],
			["cg_bowler_offroad_jaune",4900],




			["shounka_gt_bleufonce",8000],
			["shounka_gt_grise",8000],
			["shounka_gt_jaune",8000],
			["shounka_gt_noir",8000],
			["shounka_gt_orange",8000],
			["shounka_gt_rose",8000],
			["shounka_gt_rouge",8000],
			["shounka_gt_violet",8000],

			["Mrshounka_mercedes_190_p_bleufonce",9200],
			["Mrshounka_mercedes_190_p_grise",9200],
			["Mrshounka_mercedes_190_p_jaune",9200],
			["Mrshounka_mercedes_190_p_noir",9200],
			["Mrshounka_mercedes_190_p_orange",9200],
			["Mrshounka_mercedes_190_p_rose",9200],
			["Mrshounka_mercedes_190_p_rouge",9200],
			["Mrshounka_mercedes_190_p_violet",9200],



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

			["cg_nissan_gtr_2012_noir",17900],
			["cg_nissan_gtr_2012_violet",17900],
			["cg_nissan_gtr_2012_rose",17900],
			["cg_nissan_gtr_2012_orange",17900],
			["cg_nissan_gtr_2012_grise",17900],
			["cg_nissan_gtr_2012_vert",17900],
			["cg_nissan_gtr_2012_bleufonce",17900],
			["cg_nissan_gtr_2012_bleu",17900],
			["cg_nissan_gtr_2012_white",17900],
			["cg_nissan_gtr_2012_jaune",17900],


			["shounka_mp4_bleufonce",11100],
			["shounka_mp4_grise",11100],
			["shounka_mp4_jaune",11100],
			["shounka_mp4_noir",11100],
			["shounka_mp4_orange",11100],
			["shounka_mp4_rose",11100],
			["shounka_mp4_rouge",11100],
			["shounka_mp4_violet",11100],


			["shounka_clk_bleufonce",11100],
			["shounka_clk_grise",11100],
			["shounka_clk_jaune",11100],
			["shounka_clk_noir",11100],
			["shounka_clk_orange",11100],
			["shounka_clk_rose",11100],
			["shounka_clk_rouge",11100],
			["shounka_clk_violet",11100],


			["cg_jeep_blinde_noir",43900],
			["cg_jeep_blinde_violet",43900],
			["cg_jeep_blinde_rose",43900],
			["cg_jeep_blinde_orange",43900],
			["cg_jeep_blinde_grise",43900],
			["cg_jeep_blinde_vert",43900],
			["cg_jeep_blinde_bleufonce",43900],
			["cg_jeep_blinde_bleu",43900],
			["cg_jeep_blinde_white",43900],
			["cg_jeep_blinde_jaune",43900],

			["cg_lancer_evo_x_noir",25900],
			["cg_lancer_evo_x_violet",25900],
			["cg_lancer_evo_x_rose",25900],
			["cg_lancer_evo_x_orange",25900],
			["cg_lancer_evo_x_grise",25900],
			["cg_lancer_evo_x_vert",25900],
			["cg_lancer_evo_x_bleufonce",25900],
			["cg_lancer_evo_x_bleu",25900],
			["cg_lancer_evo_x_white",25900],
			["cg_lancer_evo_x_jaune",25900],


			["Mrshounka_pagani_c_bleufonce",55900],
			["Mrshounka_pagani_c_grise",55900],
			["Mrshounka_pagani_c_jaune",55900],
			["Mrshounka_pagani_c_noir",55900],
			["Mrshounka_pagani_c_orange",55900],
			["Mrshounka_pagani_c_rose",55900],
			["Mrshounka_pagani_c_rouge",55900],
			["Mrshounka_pagani_c_violet",55900],




			["cg_lambo_veneno_noir",45900],
			["cg_lambo_veneno_violet",45900],
			["cg_lambo_veneno_rose",45900],
			["cg_lambo_veneno_orange",45900],
			["cg_lambo_veneno_grise",45900],
			["cg_lambo_veneno_vert",45900],
			["cg_lambo_veneno_bleufonce",45900],
			["cg_lambo_veneno_bleu",45900],
			["cg_lambo_veneno_white",45900],
			["cg_lambo_veneno_jaune",45900],

			//Holden racing
			["AM_Holden_RBlue",29850],
			["AM_Holden_RRed",29850],
			["AM_Holden_RWhite",29850],
			["AM_Holden_RBlack",29850],

			["Mrshounka_lykan_c_bleufonce",60000],
			["Mrshounka_lykan_c_grise",60000],
			["Mrshounka_lykan_c_jaune",60000],
			["Mrshounka_lykan_c_noir",60000],
			["Mrshounka_lykan_c_orange",60000],
			["Mrshounka_lykan_c_rose",60000],
			["Mrshounka_lykan_c_rouge",60000],
			["Mrshounka_lykan_c_violet",60000],

			["shounka_f430_spider_bleufonce",52000],
			["shounka_f430_spider_grise",52000],
			["shounka_f430_spider_jaune",52000],
			["shounka_f430_spider_noir",52000],
			["shounka_f430_spider_orange",52000],
			["shounka_f430_spider_rose",52000],
			["shounka_f430_spider_rouge",52000],
			["shounka_f430_spider_violet",52000],

			["shounka_porsche911_bleufonce",21000],
			["shounka_porsche911_grise",21000],
			["shounka_porsche911_jaune",21000],
			["shounka_porsche911_noir",21000],
			["shounka_porsche911_orange",21000],
			["shounka_porsche911_rose",21000],
			["shounka_porsche911_rouge",21000],
			["shounka_porsche911_violet",21000],

			["CG_Lamborghini_Aventador_Red", 50000],
			["CG_Lamborghini_Aventador_Black", 50000],
			["CG_Lamborghini_Aventador_Blue", 50000],
			["CG_Lamborghini_Aventador_Green", 50000],
			["CG_Lamborghini_Aventador_Orange", 50000],
			["CG_Lamborghini_Aventador_Purple", 50000],
			["CG_Lamborghini_Aventador_White", 50000],

			["A3L_SuburbanWhite",1900],
			["A3L_SuburbanBlue",1900],
			["A3L_SuburbanRed",1900],
			["A3L_SuburbanBlack",1900],
			["A3L_SuburbanGrey",1900],
			["A3L_SuburbanOrange",1900],
			["ADM_1964_Impala",1500],
			["ADM_1969_Camaro",3000],
			["ADM_1969_Charger",4500],
			["A3L_Camaro",1950],

			["cg_raptor_truck_va_noir",3900],
			["cg_raptor_truck_va_violet",3900],
			["cg_raptor_truck_va_rose",3900],
			["cg_raptor_truck_va_orange",3900],
			["cg_raptor_truck_va_grise",3900],
			["cg_raptor_truck_va_vert",3900],
			["cg_raptor_truck_va_bleufonce",3900],
			["cg_raptor_truck_va_bleu",3900],
			["cg_raptor_truck_va_white",3900],
			["cg_raptor_truck_va_jaune",3900],

			["cg_ford_mustang_noir",5590],
			["cg_ford_mustang_violet",5590],
			["cg_ford_mustang_rose",5590],
			["cg_ford_mustang_orange",5590],
			["cg_ford_mustang_grise",5590],
			["cg_ford_mustang_vert",5590],
			["cg_ford_mustang_bleufonce",5590],
			["cg_ford_mustang_bleu",5590],
			["cg_ford_mustang_white",5590],
			["cg_ford_mustang_jaune",5590],
			["cg_ford_mustang_rouge",5590],

			["AM_2015C_Black",2600],
			["AM_2015C_blue",2600],
			["AM_2015C_white",2600],

			["cg_dodge_charger_2015_noir",3590],
			["cg_dodge_charger_2015_violet",3590],
			["cg_dodge_charger_2015_rose",3590],
			["cg_dodge_charger_2015_orange",3590],
			["cg_dodge_charger_2015_grise",3590],
			["cg_dodge_charger_2015_vert",3590],
			["cg_dodge_charger_2015_bleufonce",3590],
			["cg_dodge_charger_2015_bleu",3590],
			["cg_dodge_charger_2015_white",3590],
			["cg_dodge_charger_2015_jaune",3590],
			["cg_dodge_charger_2015_rouge",3590],

			["CG_Taxi",1111],

			["critgamin_vangmcc_food",150],
			["critgamin_vangmcc_general",150],
			["critgamin_vangmcc_clothing",150],
			["A3L_GMC_Van_Candy",450],
			["A3L_GMC_Van_Fox",450],
			["A3L_GMC_Van_Gangbang",450],
			["A3L_GMC_Van_News4",450],
			["A3L_GMC_Van_Dew",450],
			["A3L_GMC_Van_Scoobydoo",450],
			["A3L_GMC_Van_Shark",450],
			["A3L_GMC_Van_Pokemon",450],
			["A3L_GMC_Van_SWAGGY",450],
			["A3L_GMC_Van_HGE",450],
			["A3L_GMC_Van_Wifi",450],
			["A3L_GMC_Van_Rockstar",450],
			["A3L_GMC_Van_Monster",450],
			["A3L_GMC_Van_LOST",450],
			["A3L_GMC_Van_Ghost",450],
			["A3L_GMC_Van_Chill",450],
			["A3L_GMC_Van_Aqua",450],
			["cg_van_news",850],
			["Mrshounka_corbillard_c",500],
			["ivory_tractor",500],
			["ivory_tractor2",500],
			["Jonzie_Quattroporte",1500],
			["Jonzie_30CSL",1300],
			["Jonzie_Viper",45000],
			["Jonzie_Datsun_Z432",500],
			["Jonzie_STI",713000],
			["Jonzie_Escalade",4100],
			["Jonzie_Datsun_510",200],
			["Jonzie_Ceed",75000],
			["Jonzie_Raptor",4400],
			["Jonzie_Galant",500],
			["Jonzie_Corolla",35000],
			["Jonzie_XB",300],
			["Jonzie_VE",300],
			["Jonzie_Ute",300],
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

			["critgamin_contown_civ",280],
			["critgamin_contown_bleu",280],
			["critgamin_contown_noir",280],
			["critgamin_contown_bleufonce",280],
			["critgamin_contown_rouge",280],
			["critgamin_contown_jaune",280],
			["critgamin_contown_rose",280],
			["critgamin_contown_grise",280],
			["critgamin_contown_violet",280],
			["critgamin_contown_jaune",280],
			["critgamin_contown_orange",280],
			["critgamin_contown_vert",280],

			["critgamin_vangmcc_civ_noir",4800],
			["critgamin_vangmcc_civ_bleufonce",4800],
			["critgamin_vangmcc_civ_bleu",4800],
			["critgamin_vangmcc_civ_vert",4800],
			["critgamin_vangmcc_civ_rouge",4800],
			["critgamin_vangmcc_civ_jaune",4800],
			["critgamin_vangmcc_civ_rose",4800],
			["critgamin_vangmcc_civ_grise",4800],
			["critgamin_vangmcc_civ_violet",4800],

			["cg_mercedes_sprint_van_noir",1250],
			["cg_mercedes_sprint_van_violet",1250],
			["cg_mercedes_sprint_van_rose",1250],
			["cg_mercedes_sprint_van_orange",1250],
			["cg_mercedes_sprint_van_grise",1250],
			["cg_mercedes_sprint_van_vert",1250],
			["cg_mercedes_sprint_van_bleufonce",1250],
			["cg_mercedes_sprint_van_bleu",1250],
			["cg_mercedes_sprint_van_white",1250],
			["cg_mercedes_sprint_van_jaune",1250],
			["cg_mercedes_sprint_van_rouge",1250],



			["cg_citroen_c4_noir",4900],
			["cg_citroen_c4_violet",4900],
			["cg_citroen_c4_rose",4900],
			["cg_citroen_c4_orange",4900],
			["cg_citroen_c4_grise",4900],
			["cg_citroen_c4_vert",4900],
			["cg_citroen_c4_bleufonce",4900],
			["cg_citroen_c4_bleu",4900],
			["cg_citroen_c4_white",4900],
			["cg_citroen_c4_jaune",4900],
			["cg_citroen_c4_rouge",4900],

			["cg_renault_twingo_noir",4900],
			["cg_renault_twingo_violet",4900],
			["cg_renault_twingo_rose",4900],
			["cg_renault_twingo_orange",4900],
			["cg_renault_twingo_grise",4900],
			["cg_renault_twingo_vert",4900],
			["cg_renault_twingo_bleufonce",4900],
			["cg_renault_twingo_bleu",4900],
			["cg_renault_twingo_white",4900],
			["cg_renault_twingo_jaune",4900],
			["cg_renault_twingo_rouge",4900],

			["cg_citroen_ds3_noir",4900],
			["cg_citroen_ds3_violet",4900],
			["cg_citroen_ds3_rose",4900],
			["cg_citroen_ds3_orange",4900],
			["cg_citroen_ds3_grise",4900],
			["cg_citroen_ds3_vert",4900],
			["cg_citroen_ds3_bleufonce",4900],
			["cg_citroen_ds3_bleu",4900],
			["cg_citroen_ds3_white",4900],
			["cg_citroen_ds3_jaune",4900],
			["cg_citroen_ds3_rouge",4900],

			["cg_citroen_ds4_noir",5900],
			["cg_citroen_ds4_violet",5900],
			["cg_citroen_ds4_rose",5900],
			["cg_citroen_ds4_orange",5900],
			["cg_citroen_ds4_grise",5900],
			["cg_citroen_ds4_vert",5900],
			["cg_citroen_ds4_bleufonce",5900],
			["cg_citroen_ds4_bleu",5900],
			["cg_citroen_ds4_white",5900],
			["cg_citroen_ds4_jaune",5900],
			["cg_citroen_ds4_rouge",5900],

			["cg_peugeot_308_gti_civ_noir",5900],
			["cg_peugeot_308_gti_civ_violet",5900],
			["cg_peugeot_308_gti_civ_rose",5900],
			["cg_peugeot_308_gti_civ_orange",5900],
			["cg_peugeot_308_gti_civ_grise",5900],
			["cg_peugeot_308_gti_civ_vert",5900],
			["cg_peugeot_308_gti_civ_bleufonce",5900],
			["cg_peugeot_308_gti_civ_bleu",5900],
			["cg_peugeot_308_gti_civ_white",5900],
			["cg_peugeot_308_gti_civ_jaune",5900],
			["cg_peugeot_308_gti_civ_rouge",5900],

			["cg_peugeot_308_rcz_noir",5900],
			["cg_peugeot_308_rcz_violet",5900],
			["cg_peugeot_308_rcz_rose",5900],
			["cg_peugeot_308_rcz_orange",5900],
			["cg_peugeot_308_rcz_grise",5900],
			["cg_peugeot_308_rcz_vert",5900],
			["cg_peugeot_308_rcz_bleufonce",5900],
			["cg_peugeot_308_rcz_bleu",5900],
			["cg_peugeot_308_rcz_white",5900],
			["cg_peugeot_308_rcz_jaune",5900],
			["cg_peugeot_308_rcz_rouge",5900],


			["Mrshounka_Alfa_Romeo_bleufonce",8500],
			["Mrshounka_Alfa_Romeo_grise",8500],
			["Mrshounka_Alfa_Romeo_jaune",8500],
			["Mrshounka_Alfa_Romeo_noir",8500],
			["Mrshounka_Alfa_Romeo_orange",8000],
			["Mrshounka_Alfa_Romeo_rose",8500],
			["Mrshounka_Alfa_Romeo_rouge",8500],
			["Mrshounka_Alfa_Romeo_violet",8000],

			["S_Rangerover_Black",5500],
			["S_Rangerover_Red",5500],
			["S_Rangerover_Blue",5500],
			["S_Rangerover_Green",5500],
			["S_Rangerover_Purple",5500],
			["S_Rangerover_Grey",5500],
			["S_Rangerover_Orange",5500],
			["S_Rangerover_White",5500],

			["cg_peugeot_508_civ_noir",1590],
			["cg_peugeot_508_civ_violet",1590],
			["cg_peugeot_508_civ_rose",1590],
			["cg_peugeot_508_civ_orange",1590],
			["cg_peugeot_508_civ_grise",1590],
			["cg_peugeot_508_civ_vert",1590],
			["cg_peugeot_508_civ_bleufonce",1590],
			["cg_peugeot_508_civ_bleu",1590],
			["cg_peugeot_508_civ_white",1590],
			["cg_peugeot_508_civ_jaune",1590],
			["cg_peugeot_508_civ_rouge",1590],

			["TT650_civ",1000],
			["tcg_hrly",250],
			["tcg_hrly_white",250],
			["tcg_hrly_red",250],
			["tcg_hrly_metal",250],
			["tcg_hrly_blue",250],
			["tcg_hrly_limited",450],
			["tcg_hrly_demon",450],
			["tcg_hrly_coco",450],
			["tcg_hrly_orig1",450],
			["tcg_hrly_orig2",450],
			["tcg_hrly_skeleton",550],
			["tcg_hrly_gay",650],

			["C_Van_01_fuel_F",700],
			["C_Van_01_box_F",900],
			["C_Van_01_transport_F",750],

			["C_MSSprinter_Rojo_F",1250],
			["C_MSSprinter_Azul_F",1250],
			["C_MSSprinter_Verde_F",1250],
			["C_MSSprinter_Blanco_F",1250],
			["C_MSSprinter_Negro_F",1250],

			["C_MSSprinter2_Rojo_F",1250],
			["C_MSSprinter2_Azul_F",1250],
			["C_MSSprinter2_Verde_F",1250],
			["C_MSSprinter2_Blanco_F",1250],
			["C_MSSprinter2_Negro_F",2550],



			["shounka_nemo_bleufonce",550],
			["shounka_nemo_grise",550],
			["shounka_nemo_jaune",550],
			["shounka_nemo_noir",550],
			["shounka_nemo_orange",550],
			["shounka_nemo_rose",550],
			["shounka_nemo_rouge",550],
			["shounka_nemo_violet",550],


			["cg_hummer_h1_noir",2900],
			["cg_hummer_h1_violet",2900],
			["cg_hummer_h1_rose",2900],
			["cg_hummer_h1_orange",2900],
			["cg_hummer_h1_grise",2900],
			["cg_hummer_h1_vert",2900],
			["cg_hummer_h1_bleufonce",2900],
			["cg_hummer_h1_bleu",2900],
			["cg_hummer_h1_white",2900],
			["cg_hummer_h1_jaune",2900],

			["shounka_h2_bleufonce",4100],
			["shounka_h2_grise",4100],
			["shounka_h2_jaune",4100],
			["shounka_h2_noir",4100],
			["shounka_h2_orange",4100],
			["shounka_h2_rose",4100],
			["shounka_h2_rouge",4100],
			["shounka_h2_violet",4100],


			["A3L_Bus",1300],
			//["A3L_SchoolBus",1300],

			["pop_bus_p_violet",2500],
			["pop_bus_p_rose",2500],
			["pop_bus_p_rouge",2500],
			["pop_bus_p_noir",2500],
			["pop_bus_p_ orange",2500],
			["pop_bus_p_grise",2500],
			["pop_bus_p_jaune",2500],
			["pop_bus_p_p",2500],

			["POP_bus_tour_violeta",4500],
			["POP_bus_tour_verde",4500],
			["POP_bus_tour_rosado",4500],
			["POP_bus_tour_rojo",4500],
			["POP_bus_tour_oscuro",4500],
			["POP_bus_tour_negro",4500],
			["POP_bus_tour_naranja",4500],
			["POP_bus_tour_gris",4500],
			["POP_bus_tour_blanco",4500],
			["POP_bus_tour_azul",4500],
			["POP_bus_tour_marino",4500],
			["POP_bus_tour_lima",4500],

			["Orel_Agora",2200],

			["cg_daf_xf_euro6_noir",7590],
			["cg_daf_xf_euro6_violet",7590],
			["cg_daf_xf_euro6_rose",7590],
			["cg_daf_xf_euro6_orange",7590],
			["cg_daf_xf_euro6_grise",7590],
			["cg_daf_xf_euro6_vert",7590],
			["cg_daf_xf_euro6_bleufonce",7590],
			["cg_daf_xf_euro6_white",7590],
			["cg_daf_xf_euro6_jaune",7590],
			["cg_daf_xf_euro6_rouge",7590],





			["cg_renault_magnum_truck_f_noir",7590],
			["cg_renault_magnum_truck_f_violet",7590],
			["cg_renault_magnum_truck_f_rose",7590],
			["cg_renault_magnum_truck_f_orange",7590],
			["cg_renault_magnum_truck_f_grise",7590],
			["cg_renault_magnum_truck_f_vert",7590],
			["cg_renault_magnum_truck_f_white",7590],
			["cg_renault_magnum_truck_f_jaune",7590],

			//["Jonzie_Flat_Bed",659000],
			["Jonzie_Log_Truck",70900],
			["Jonzie_Box_Truck",1000],
			//["Jonzie_Tanker_Truck",1200],
			["Jonzie_Tow_Truck",4000],



			["shounka_avalanche_bleufonce",700],
			["shounka_avalanche_grise",700],
			["shounka_avalanche_jaune",700],
			["shounka_avalanche_noir",700],
			["shounka_avalanche_orange",700],
			["shounka_avalanche_rose",700],
			["shounka_avalanche_rouge",700],
			["shounka_avalanche_violet",700],


			["shounka_ivceco_bleufonce",1100],
			["shounka_ivceco_grise",1100],
			["shounka_ivceco_jaune",1100],
			["shounka_ivceco_noir",1100],
			["shounka_ivceco_orange",1100],
			["shounka_ivceco_rose",1100],
			["shounka_ivceco_rouge",1100],
			["shounka_ivceco_violet",1100],

			["Nhz_audia8limo",33000],

			["cg_audi_a8_limo_noir",4190],
			["cg_audi_a8_limo_violet",4190],
			["cg_audi_a8_limo_rose",4190],
			["cg_audi_a8_limo_orange",4190],
			["cg_audi_a8_limo_grise",4190],
			["cg_audi_a8_limo_vert",4190],
			["cg_audi_a8_limo_bleufonce",4190],
			["cg_audi_a8_limo_bleu",4190],
			["cg_audi_a8_limo_white",4190],
			["cg_audi_a8_limo_jaune",4190],

			["wirk_h3_limo",5130],
			["shounka_buggy_bleufonce",4130],
			["A3L_Towtruck",2000],
			["A3L_Towtruck_blue",2000],
			["A3L_Towtruck_green",2000],
			["A3L_Towtruck_orange",2000],
			["A3L_Towtruck_red",2000],
			["A3L_Towtruck_yellow",2000],
			["C_Offroad_01_repair_F",2000],

			["Orel_Master",3200],
			["Orel_Rangoo",2200],

			["nopixel_garbagetruck",7500],

			["cg_ducati_civ_noir",1590],
			["cg_ducati_civ_violet",1590],
			["cg_ducati_civ_rose",1590],
			["cg_ducati_civ_orange",1590],
			["cg_ducati_civ_grise",1590],
			["cg_ducati_civ_vert",1590],
			["cg_ducati_civ_bleufonce",1590],
			["cg_ducati_civ_bleu",1590],
			["cg_ducati_civ_white",1590],
			["cg_ducati_civ_jaune",1590],
			["cg_ducati_civ_rouge",1590],

			["A3L_EvoXrally_green",399],
			["A3L_EvoXrally_white",399],
			["A3L_EvoXrally_red",399],
			["A3L_EvoXrally_blue",399]


];
__CONST__(life_garage_sell,life_garage_sell);
