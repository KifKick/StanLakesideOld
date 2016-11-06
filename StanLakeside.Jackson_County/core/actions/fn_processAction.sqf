/*
	File: fn_processAction.sqf
	
	
	Description:
	Master handling for processing an item.
*/
private["_vendor","_type","_itemInfo","_oldItem","_newItem","_cost","_upp","_hasLicense","_itemName","_oldVal","_ui","_progress","_pgText","_cP","_cops"];
_vendor = param [0,ObjNull,[ObjNull]];
_type = param [3,"",[""]];
_cops = west countSide playableUnits;
//Error check
if(isNull _vendor OR _type == "" OR (player distance _vendor > 10)) exitWith {};

//unprocessed item,processed item, cost if no license,Text to display (I.e Processing  (percent) ..."
_itemInfo = switch (_type) do
{
	case "oil": {["oilu","oilp",12,(localize "STR_Process_Oil")];};
	case "diamond": {["diamond","diamondc",13,(localize "STR_Process_Diamond")];};
	case "heroin": {["heroinu","heroinp",17,(localize "STR_Process_Heroin")];};
	case "copper": {["copperore","copper_r",9,(localize "STR_Process_Copper")];};
	case "iron": {["ironore","iron_r",11,(localize "STR_Process_Iron")];};
	case "sand": {["sand","glass",6,(localize "STR_Process_Sand")];};
	case "salt": {["salt","salt_r",6,(localize "STR_Process_Salt")];};
	case "marijuana": {["cannabis","marijuana",50,(localize "STR_Process_Marijuana")];};
	case "cement": {["rock","cement",5,(localize "STR_Process_Cement")];};
	case "meth": {["methu","methp",65,"Packaging Meth"];};
	case "MDMA": {["MDMAu","MDMAp",75,"Pill Pressing MDMA"];};
	case "coke": {["cokeu","cokep",73,"Packaging Cocaine"];};
	case "uran": {["uraniumu","uraniumo",115,"Oczyszczam Uran"];};
	case "uranp": {["uraniumo","uraniump",115,"Uszlachetniam Uran"];};
	default {[];};
};

//Error checking
if(count _itemInfo == 0) exitWith {};

//Setup vars.
_oldItem = _itemInfo select 0;
_newItem = _itemInfo select 1;
_cost = _itemInfo select 2;
_upp = _itemInfo select 3;

_hasLicense = missionNamespace getVariable (([_type,0] call life_fnc_licenseType) select 0);

_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
_oldVal = missionNamespace getVariable ([_oldItem,0] call life_fnc_varHandle);
_weight = ([_oldItem] call life_fnc_itemWeight) * _oldVal;
_cost = round(_cost * _oldVal);
//Some more checks
if(_oldVal == 0) exitWith {};

if (_cops < 2 && _type in ["heroin","marijuana","meth","MDMA","coke","uran","uranp"]) exitWith {
	["Mozesz przetwarzac dopiero od 2 policjantow na serwerze!", false] spawn domsg;
};

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_cP = 0.01;

if (life_karma < 0 && _type in ["heroin","marijuana","meth","MDMA","coke"]) then {
	_cP = 0.2;	
};



_progress progressSetPosition _cp;
life_is_processing = true;

if(_hasLicense) then
{
	_delay = (1/450)*_weight;
	while{true} do
	{
		uiSleep _delay;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vendor > 10) exitWith {};
	};
	
	if(player distance _vendor > 10) exitWith {[localize "STR_Process_Stay", false] spawn domsg; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
	5 cutText ["","PLAIN"];
	[format[localize "STR_Process_Processed",_oldVal,_itemName], false] spawn domsg;
	life_is_processing = false;
}
else
{
	if(cash_in_hand < _cost) exitWith {[format[localize "STR_Process_License",[_cost] call life_fnc_numberText], false] spawn domsg; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	_delay = (1/400)*_weight;
	while{true} do
	{
		uiSleep _delay;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vendor > 10) exitWith {};
	};
	
	if(player distance _vendor > 10) exitWith {[localize "STR_Process_Stay", false] spawn domsg; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(cash_in_hand < _cost) exitWith {[format[localize "STR_Process_License",[_cost] call life_fnc_numberText], false] spawn domsg; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
	5 cutText ["","PLAIN"];
	[format[localize "STR_Process_Processed2",_oldVal,_itemName,[_cost] call life_fnc_numberText], false] spawn domsg;
	["cash","take",_cost] call life_fnc_handleCash;
	life_is_processing = false;
};	