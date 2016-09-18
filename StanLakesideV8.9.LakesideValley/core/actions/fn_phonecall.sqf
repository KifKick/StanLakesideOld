/*
phone call
phonecall
*/
if(cash_in_bank < 50) exitWith { ["Nie masz $50 w banku aby to zrobic", false] spawn domsg; };

["bank","take", 50] call life_fnc_handleCash;
[1] call SOCK_fnc_updatePartial;
[] call fnc_opentablet;