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
	case "MDMA": {25000};
	case "meth": {20000};
	case "coke": {25000};
	case "hess": {2000};
	case "prokurator": {2000};
	case "driver": {500}; //Drivers License cost
	case "boat": {5000}; //Boating license cost
	case "pilot": {50000}; //Pilot/air license cost
	case "gun": {800}; //Firearm/gun license cost
	case "dive": {4750}; //Diving license cost
	case "oil": {7500}; //Oil processing license cost
	case "cair": {35000}; //Cop Pilot License cost
	case "swat": {3500}; //Swat License cost
	case "sert": {3500}; //Swat License cost
	case "dtu": {3500}; //dtu License cost
	case "aiad": {3500}; //aiad License cost
	case "cg": {5000}; //Coast guard license cost
	case "heroin": {15000}; //Heroin processing license cost
	case "marijuana": {14500}; //Marijuana processing license cost
	case "medmarijuana": {150}; //Medical Marijuana processing license cost
	case "gang": {1000}; //Gang license cost
	case "rebel": {75000}; //Rebel license cost
	case "truck": {2500}; //Truck license cost
	case "diamond": {7500};
	case "salt": {2200};
	case "cocaine": {20000};
	case "sand": {2150};
	case "iron": {3950};
	case "uran": {17200};
	case "uranp": {17200};
	case "copper": {2800};
	case "cement": {2450};
	case "mair": {1500};
	case "home": {50000};
	case "gang": {50000};
	case "gang2": {50000};
	//case "donator1": {2000};
	//case "donator2": {2000};
	//case "donator3": {2000};
	
	case "rifle": {10000};
};