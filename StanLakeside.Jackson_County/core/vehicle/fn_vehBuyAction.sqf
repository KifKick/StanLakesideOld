/*
	File: fn_vehBuyAction.sqf

	Author:
	Katekarin

	Description:
	Rozpoczyna akcje kupna pojazdu.
*/

private ["_unit","_price","_owner","_vehData","_trunkSpace","_vehicleInfo"];
_unit = cursorTarget; //ustalamy pojazd
_classname = typeOf _unit;
_trunkSpace = [_className] call life_fnc_vehicleWeightCfg;
_vehicleInfo = [_className] call life_fnc_fetchVehInfo;
_vehData = _unit getVariable["vehicle_info_owners",[]]; //pobieramy informacje
_price = _unit getVariable["vehprice",[]]; //dalsze informacje
_owner = _unit getVariable["vehowner",[]]; //ostatnia informacja
_vehOwner = (_vehData select 0) select 0; //wlasciciel pojazdu
if(isNull _unit OR isPlayer _unit OR isNil {_unit}) exitWith {["Cos poszlo nie tak", false] spawn domsg;}; //sprawdzamy czy wszystko jest dobrze
if(count _vehData isEqualTo 0) exitWith {["Pojazd nie pochodzi od bazy danych.", false] spawn domsg;}; //sprawdzamy czy ma informacje
if(!(_unit getVariable["vehselling",false])) exitWith { ["Ten pojazd nie jest na sprzedaz!", false] spawn domsg; }; //sprawdzamy czy jest na sprzedaz drugi raz
if((getPlayerUID player) isEqualTo _vehOwner) exitWith { ["Nie mozesz kupic wlasnego pojazdu!", false] spawn domsg; }; //nie kupuj swojego pojazdu, duh
createDialog "life_vehicle_buy"; //otwieramy dialog
disableSerialization;
waitUntil {!isnull (findDisplay 4250)}; //czekamy az sie otworzy
ctrlSetText [4252, format["Kupno - %1",getText(configFile >> "CfgVehicles" >> _classname >> "displayName")]]; //ustalamy tytul
_display = findDisplay 4250; //ustalamy display
_control = _display displayCtrl 4251; //ustalamy control
_control ctrlSetStructuredText parseText format["<t align='center'><t size='.8px'>" +"%1 chce sprzedać ten pojazd za $%2",name _owner,[(parseNumber _price)] call life_fnc_numberText]; //ustalamy tekst
_control = _display displayCtrl 4253; //ustalamy kontrol
_control ctrlSetStructuredText parseText format[
	(localize "STR_Shop_Veh_UI_MaxSpeed")+ " %1 km/h<br/>
	" +(localize "STR_Shop_Veh_UI_HPower")+ " %2<br/>
	" +(localize "STR_Shop_Veh_UI_PSeats")+ " %3<br/>
	" +(localize "STR_Shop_Veh_UI_Trunk")+ " %4<br/>
	" +(localize "STR_Shop_Veh_UI_Fuel")+ " %5
	",
_vehicleInfo select 8,
_vehicleInfo select 11,
_vehicleInfo select 10,
if(_trunkSpace isEqualTo -1) then {"Brak"} else {_trunkSpace},
_vehicleInfo select 12
]; //ustawiamy informacje o pojezdzie

ctrlShow [4253,true];
ctrlShow [4254,true]; //dialogi
life_vehicle_imbuying = _unit;
life_vehicle_price = parseNumber _price;
life_vehicle_owner = _owner; //zmienne do przekazania