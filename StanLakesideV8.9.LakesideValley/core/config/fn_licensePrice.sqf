/*
	File: fn_licensePrice.sqf
	
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = param [0,"",[""]];
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "MDMA": {15000};
	case "meth": {10000};
	case "coke": {15000};
	case "oskp": {2000};
	case "prokurator": {2000};
	case "driver": {300}; //Drivers License cost
	case "boat": {1500}; //Boating license cost
	case "pilot": {1500}; //Pilot/air license cost
	case "gun": {2000}; //Firearm/gun license cost
	case "dive": {400}; //Diving license cost
	case "oil": {1000}; //Oil processing license cost
	case "cair": {1500}; //Cop Pilot License cost
	case "sert": {3500}; //Swat License cost
	case "dtu": {3500}; //dtu License cost
	case "aiad": {3500}; //aiad License cost
	case "cg": {800}; //Coast guard license cost
	case "heroin": {1000}; //Heroin processing license cost
	case "marijuana": {11500}; //Marijuana processing license cost
	case "medmarijuana": {150}; //Medical Marijuana processing license cost
	case "gang": {1000}; //Gang license cost
	case "rebel": {50000}; //Rebel license cost
	case "truck": {5000}; //Truck license cost
	case "diamond": {3500};
	case "salt": {1200};
	case "cocaine": {15000};
	case "sand": {1450};
	case "iron": {950};
	case "copper": {800};
	case "cement": {650};
	case "mair": {1500};
	case "home": {7500};
	//case "donator1": {2000};
	//case "donator2": {2000};
	//case "donator3": {2000};
	
	case "rifle": {300};
};