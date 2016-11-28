/*
	File: fn_vehSetPriceAction.sqf

	Author:
	Katekarin

	Description:
	Rozpoczyna akcje ustalania ceny.
*/
private ["_unit","_vehData"];
_unit = cursorTarget; //co chcemy sprzedac
_vehData = _unit getVariable["vehicle_info_owners",[]]; //pobieramy dane o pojezdzie
_vehOwner = (_vehData select 0) select 0; //ustalamy kto jest wlascicielem
if(!((getPlayerUID player) == _vehOwner)) exitWith { ["Nie mozesz sprzedac pojazdu ktory nie nalezy do Ciebie!", false] spawn domsg; }; //sprawdzamy czy wszystko jest dobrze
if(count _vehData == 0) exitWith {["Pojazd nie pochodzi od bazy danych.", false] spawn domsg;}; //sprawdzamy czy jest z garazu
if(isNull _unit OR isPlayer _unit) exitWith {["Albo nie ma pojazdu, albo chce sprzedac czlowieka. To nieetyczne.", false] spawn domsg;}; //sprawdzamy czy pojazd istnieje i czy jest pojazdem
disableSerialization;
if(!(createDialog "life_vehicle_setPrice")) exitWith {["Z jakiegos powodu nie moge ustawic ceny.", false] spawn domsg;}; //tworzymy dialog
ctrlSetText [4201, format[getText(configFile >> "CfgVehicles" >> (typeOf _unit) >> "displayName")]]; //ustalamy tytul
life_vehicle_toSell = _unit; //zmienna ktora trzyma informacje jaki pojazd