if(side player isEqualTo independent) exitwith {};

client_combatTime = time;
if (!client_firstCombatActive) then {	
	[] spawn	{		
		client_firstCombatActive = true;		
		while {(client_combatTime > (time - 15))} do {			
			if ((cameraView isEqualTo "External")) then {				
				player switchCamera "Internal";			
			};			
			uisleep 0.1;	
			_curWep = currentWeapon player;
			if(_curWep != "" && vehicle player isEqualTo player) then {
				client_combatTime = time;
			};	
		};		
		client_firstCombatActive = false;	
	};
};
