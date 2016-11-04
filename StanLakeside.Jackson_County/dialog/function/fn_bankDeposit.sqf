/*
	File: fn_bankDeposit.sqf
	
	
	Description:
	Figure it out.
*/
private["_value"];
_param = param [0,0,[0]];

if(_param == 1) then {
	_value = round(cash_in_hand);
} else {
	_value = round(parseNumber(ctrlText 2702)); 
};

//Series of stupid checks
if(_value > 999999) exitWith {[localize "STR_ATM_GreaterThan", false] spawn domsg;};
if(_value < 0) exitWith {};
if(!([str(_value)] call life_fnc_isnumeric)) exitWith {[localize "STR_ATM_notnumeric", false] spawn domsg;};
if(_value > cash_in_hand) exitWith {[localize "STR_ATM_NotEnoughCash", false] spawn domsg;};

["cash","take",_value] call life_fnc_handleCash;
["bank","add", _value] call life_fnc_handleCash;
[format[localize "STR_ATM_DepositMSG",[_value] call life_fnc_numberText], false] spawn domsg;
[] call life_fnc_atmMenu;
[6] call SOCK_fnc_updatePartial;
_playerID = getPlayerUID player;
_playerName = name player;
_type = 0;
_amount = _value;
[_playerID,_playerName,"","",_type,_amount] remoteExecCall ["TON_fnc_moneyLog", (call life_fnc_HCC)];