/*
	File: fn_vehSetPrice.sqf

	Author:
	Katekarin

	Description:
	Okresla cene pojazdu oraz czy jest na sprzedaz.
*/

private ["_val","_vehname","_vehicle"];
_vehicle = life_vehicle_toSell; //ustalamy pojazd
if(isNil {_vehicle}) exitWith {["Cos poszlo nie tak", false] spawn domsg;}; //nie ma takiej zmiennej?
if(isNull _vehicle) exitWith {["Pojazd juz nie istnieje", false] spawn domsg;}; //zmienna jest pusta
_val = ctrlText 4202; //pobieramy cene
if(!([_val] call fnc_isnumber)) exitWith {["Nie wprowadziles liczby!", false] spawn domsg;}; //sprawdzamy czy jest liczba
_vehname = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName"); //nazwa pojazdu
_vehicle setVariable ["vehselling", true, true]; //ustalamy zmienna na sprzedaz
_vehicle setVariable ["vehprice", _val, true]; //ustalamy zmienna na cene
_vehicle setVariable ["vehowner", player, true]; //ustalamy nazwe wlasciciela pojazdu
[0, format ["KARAKANMOTO: %1 wystawil na sprzedaz %3 za $%2", profileName, [(parseNumber _val)] call life_fnc_numberText, _vehname]] remoteExecCall ["life_fnc_broadcast", -2]; //powiadomienie publiczne
[getPlayerUID player, profileName, typeOf _vehicle, _vehname, 4, _val] remoteExecCall ["ton_fnc_vehicleLog", (call life_fnc_HCC)];
closeDialog 0; //zamykamy dialog