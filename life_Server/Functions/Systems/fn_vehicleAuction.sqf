/*
	File: fn_vehBuy.sqf

	Author:
	Katekarin

	Description:
	Zmienia wlasciciela w bazie danych
*/

private["_classname","_buyerid","_sellerid"];
_classname = _this select 0;
_buyerid = _this select 1;
_sellerid = _this select 2;
_plate = _this select 3;

_query = format["UPDATE vehicles SET pid='%1' WHERE plate='%2' AND classname='%3'",_buyerid, _plate, _classname];

[_query,1] call DB_fnc_asyncCall;