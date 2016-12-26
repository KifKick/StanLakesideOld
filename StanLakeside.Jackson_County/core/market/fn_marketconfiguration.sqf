/*
	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods
*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, Default, Min, Max, changes in action, [Sales multiplied by 1, Purchase multiplied by -1]
	//["gold", 1500, 450, 2300, 8, 5],
	
	["oilp", 440, 220, 650, 2, 1,
		[
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1]
		]
	]
	,
	
	["iron_r", 330, 170, 550, 2, 2,  
		[ 
			["diamondc",1], 
			["oilp",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1]
		] 
	],
	
	["diamondc", 475, 180, 560, 2, 1, 
		[ 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1]
		] 
	],
	
	["copper_r", 290, 145, 420, 2, 2,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1]
		] 
	],
	
	/*["salt_r", 265, 120, 410, 2, 1.5,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["glass",1]
		] 
	],*/
	
	["glass", 230, 110, 350, 2, 1.5,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1]
		] 
	],
	
	["cement", 245, 145, 410, 2, 1.5,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1]
		] 
	],
	
/////////////////////////
	
	["emerald", 650, 440,850, 2, 2,  
		[ 
			["marijuana",1], 
			["mdmap",1],
			["heroinp",1],
			["methp",1],
			["uraniump",1]
		] 
	],

	["marijuana", 530, 320, 770, 2, 2,   
		[ 
			["emerald",1], 
			["mdmap",1],
			["heroinp",1],
			["methp",1],
			["uraniump",1]
		] 
	],
	
    ["MDMAp", 560, 340, 720, 2, 2,   
		[ 
			["marijuana",1], 
			["emerald",1],
			["heroinp",1],
			["methp",1],
			["uraniump",1]
		] 
	],

	["methp", 700, 500, 900, 2, 2,   
		[ 
			["marijuana",1], 
			["emerald",1],
			["mdmap",1],
			["methp",1],
			["uraniump",1]
		] 
	],
	
	["uraniump", 1250, 1100, 1900, 2, 2,
		[ 
			["marijuana",1], 
			["emerald",1],
			["mdmap",1],
			["methp",1]
		]
	]
];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";

//SYNC PRICES WITH SERVER IF EMPTY
if(isNil("life_market_prices")) then
{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	systemChat "Market Prices Generated!";
};