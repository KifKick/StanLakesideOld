/*
	File: fn_onFired.sqf
	
	Description:
	Handles various different ammo types being fired.
*/

params ["_unit","","","","_ammo","_magazine","_projectile"];

if(_ammo isEqualTo "GrenadeHand_stone") exitwith {
	_projectile spawn {
		private["_position"];
		while {!isNull _this} do {
			_position = getPosATL _this;
			uiSleep 0.1;
		};
		[_position] remoteExec ["life_fnc_flashbang"];
	};
};

//if(_magazine isEqualTo "RPG32_F" || _magazine isEqualTo "RPG32_HE_F") then { [_projectile] spawn fnc_sendHook; };

if(_ammo isEqualTo "SmokeShellYellow") exitwith {
	[_projectile] spawn {
		params ["_projectile"];
		waitUntil{uiSleep 1; speed _projectile < 0.2};
		_enemies = _projectile nearEntities ["Man", 50];
		_nonUnits = [];
		{if(!isPlayer _x) then {_nonUnits pushBack _x}} forEach _enemies;
		_enemies = _enemies - _nonUnits;
		_projectile remoteExec ["life_fnc_teargas",_enemies];
	};
};



if(currentWeapon _unit isEqualTo "A3L_Extinguisher") exitwith {
	if(player distance fire_loc1 < 20 && !isNull theFire1) then { 
		_chance = round (random 1001);
  		 if(_chance > 999) then {
			["cleaned"] remoteExec ["fnc_deletefire", -2];
			["Otrzymales $15500 za ugaszenie pozaru!", false] spawn domsg; 
			["cash","add", 15500] call life_fnc_handleCash;
			[6] call SOCK_fnc_updatePartial;
		};
	};			
};

if(currentWeapon _unit isEqualTo "vvv_fishing_rod") exitwith {
	[] spawn fnc_castScript;
};


