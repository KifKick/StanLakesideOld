/*
	File: fn_itemWeight.sqf
	
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = param [0,"",[""]];
if(_item == "") exitWith {};

switch (_item) do
{
	case "emerald": {4};
	case "sapphire": {4};
	case "ruby": {4};
	case "nos": {10};
	case "tierope": {2};
	case "cleankit": {1};
	case "airkit": {0.1};
	case "bandage": {0.1};
	case "stitches": {0.1};
	case "condom": {0.5};
	case "splint": {2};
	case "epipen": {1};
	case "medkit": {1};
	case "mobilephone": {1};
	case "panicbutton": {1};
	case "bec": {1};
	case "methu": {5};
	case "methp": {3};
	case "cokeu": {5};
	case "cokep": {3};
	case "MDMAu": {5};
	case "MDMAp": {3};
	case "oilu": {6};
	case "oilp": {5};
	case "heroinu": {5};
	case "heroinp": {4};
	case "marijuana": {2};
	case "apple": {0.5};
	case "peach": {0.5};
	case "uraniumu": {8};
	case "uraniumo": {6};
	case "uraniump": {5};
	case "water": {0.5};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {4};
	case "tuna": {6};
	case "mullet": {4};
	case "catshark": {6};
	case "turtle": {6};
	case "fishing": {2};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "coffee": {0.5};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {2};
	case "copperore": {5};
	case "ironore": {6};
	case "copper_r": {3};
	case "iron_r": {5};
	case "sand": {4};
	case "salt": {3};
	case "salt_r": {1};
	case "glass": {2};
	case "diamond": {5};
	case "diamondc": {4};
	case "spikeStrip": {5};
	case "rock": {4};
	case "cement": {3};
	case "goldbar": {12};
	case "blastingcharge": {20};
	case "hackingtool": {20};
	case "boltcutter": {20};
	case "defusekit": {2};
	case "storagesmall": {25};
	case "storagebig": {35};
	case "wheat": {0.5};
	case "sunflower": {2};
	case "corn": {2};
	case "bean": {1};
	case "cotton": {1};
	case "olive": {1};
	case "opium": {2};
	case "cannabis": {3};
	case "pumpkin": {2};
	case "wheat seed": {0.5};
	case "sunflower seed": {0.5};
	case "corn seed": {0.5};
	case "bean seed": {0.5};
	case "cotton seed": {0.5};
	case "olive seed": {0.5};
	case "opium seed": {0.5};
	case "cannabis seed": {0.5};
	case "pumpkin seed": {0.5};
	case "Raw Meat": {2};
	case "raw chicken": {2.5};
	case "raw sheep meat": {2};
	case "raw rabbit": {2.5};
	case "cigarette": {1};
	case "RoadConeStripB": {5};
	case "RoadConeB": {2};
	case "RoadConeStrip": {5};
	case "RoadCone": {2};
	case "RoadBlockWood": {15};
	case "RoadBlockConc": {25};
	case "RoadBlockRebel": {30};
	case "BarGate": {23};
	case "Rax's Rum" : {1};
	case "zoobeer": {1}; // Duff Beer
	case "zoobeer2": {1}; // Duff Beer
	case "vodka": {1};
	case "jackdaniels": {1};
	case "vodka": {1};
	case "jagerbomb": {1};
	case "absinthe": {1};
	case "redwine": {1};
	case "whitewine": {1};
	case "whiterussian": {1};
	case "sexonthebeach": {1};
	case "tequila": {1};
	case "jackdanielsandcoke": {1};

	default {1};
};
