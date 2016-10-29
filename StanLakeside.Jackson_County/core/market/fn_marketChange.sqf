/*
	Some random and dynamical stuff for market
*/

private["_rand","_modifier","_price", "_globalchange","_defaultprice","_shortname","_difference"];

_rand = [0,200] call life_fnc_randomRound; //0-200

/*
	HINWEIS: increase in random number above to make all events less frequently!
	
*/

diag_log "[MARKET] marketChange called.";

switch(true) do
{
	case (_rand <= 30): //30% default market change value (strong version)
	{
		{
			if(random(10) <= 4) then //Random for each resource
			{
				/*_price = _x select 1;
				_globalchange = _x select 2;*/
				
				_modifier = [-20,20] call life_fnc_randomRound; //Sold / Bought Items
				/*_modifier = _price * _modifier;
				
				_price = _price + _modifier;
				_globalchange = _globalchange + _modifier;
				
				life_market_prices set [_forEachIndex, [_x select 0, _price, _globalchange, _modifier] ];*/
				
				if(_modifier < 0) then
				{
					[_x select 0, -(_modifier), true] call life_fnc_marketSell; 
				}
				else
				{
					[_x select 0, _modifier, true] call life_fnc_marketBuy; 
				};
			};
		}
		foreach life_market_prices;
	};
	case (_rand <= 36): //Increase 6% drug price
	{
		[[0,"News: Interpol has excavated an international drug gang"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["marijuana", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["cocaine", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["cocainep", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["heroinu", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["heroinp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["froglsd", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		
		diag_log "+Market+ Event drugp";
	};
	case (_rand <= 44): //8% increase in oil prices
	{
		[[0,"News: Oil tanker sunk!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["oilp", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		
		diag_log "+Market+ Event oilp";
	};
	case (_rand <= 54): //Increase 10% Price + iron + glass cement price price
	{
		[[0,"News: China builds world-China Center!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["cement", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["iron_r", [20,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["glass", [25,35] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		
		diag_log "+Market+ Event wcc";
	};
	case (_rand <= 60): //4% Gold price drops
	{
		[[0,"News: Investors lose confidence in gold!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["gold", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["goldr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		
		diag_log "+Market+ Event goldm";
	};
	case (_rand <= 68): //8% copper / silver increases
	{
		[[0,"News: Electronics industry requires precious metals!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["gold", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["goldr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silver", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["silverr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		diag_log "+Market+ Event copperp";
	};
	case (_rand <= 74): //6% gold price increases
	{
		[[0,"News: Investors lose confidence in dollars!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["gold", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["goldr", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		
		diag_log "+Market+ Event goldp";
	};
	case (_rand <= 80): //6% lower drug prices
	{
		[[0,"News: New synthetic drug drugs flooded the market!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["marijuana", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["cocaine", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["cocainep", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["heroinu", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["heroinp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["froglsd", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		
		diag_log "+Market+ Event drugm";
	};
	case (_rand <= 90): //10% higher turtles
	{
		[[0,"News: China discovers turtles as a new medicine! Animal rights activists are concerned!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["turtle", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		
		diag_log "+Market+ Event turtlep";
	};
	default //market change: default version
	{
		//diag_log format["[MARKET] marketChange did nothing. Rand=%1", _rand];
		{
			//Get default price
			_defaultprice = 0;
			_shortname = _x select 0;
			_price = _x select 1;
			_globalchange = _x select 2;
		
			{
				if((_x select 0) == _shortname) exitWith
				{
					_defaultprice = _x select 1;
				};
			}
			foreach life_market_resources;
			
			if(_defaultprice > 0) then
			{
			
				//Get difference
				_difference = _defaultprice - _price; //Defaultprice - current price
			
				_modifier = _difference * (random 0.4);
				_modifier = round _modifier;
			
				//Protecting hard caps
				/*if( _modifier < -700) then {_modifier = -700;};
				if( _modifier > 700) then {_modifier = 700;};*/
			
				//_modifier = [-15,25] call life_fnc_randomRound; //Verkaufte/Gekaufte Items
				
				/*if(_modifier < 0) then
				{
					[_x select 0, -(_modifier), true] call life_fnc_marketSell; 
				}
				else
				{
					[_x select 0, _modifier, true] call life_fnc_marketBuy; 
				};*/
				
				diag_log format["+Market+ Correcting market value of %1 from %2 to %3 by %4", _shortname, _price, (_price + _modifier), _modifier];
				
				_price = _price + _modifier;
				_globalchange = _globalchange + _modifier;
				
				
				
				//New price arr
				life_market_prices set [_forEachIndex, [_shortname, _price,_globalchange,_modifier] ]; //set raw values
			
			}
			else
			{
				diag_log format["+Market+ Cannot correct market value of %1", _shortname];
			};
		}
		foreach life_market_prices;
	};
};

publicVariable "life_market_prices";