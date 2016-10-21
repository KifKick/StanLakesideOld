#include <macro.h>
/*
	File: fn_playerTags.sqf
	
	
	Description:
	Adds the tags above other players heads when close and have visible range.
*/
private["_ui","_units"];
#define iconID 78000
#define scale 0.9

500 cutText["","PLAIN"];
if(visibleMap OR {dialog}) exitWith {
};

_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
if(isNull _ui) then {
	500 cutRsc["Life_HUD_nameTags","PLAIN"];
	_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
};

_units = nearestObjects [player, ["Man"], 6];

{
	private["_text"];
	_pos = [visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2)+.5];
	_sPos = worldToScreen _pos;
	_distance = _x distance player;
	//_name = _x getVariable ["realname", name _x];
	_name =  getplayeruid _x;
	_text = "";
	if(count _sPos > 1 && isPlayer _x && _distance < 14 && _x != player && vehicle player == player && currentweapon player == "") then {
		if(_x isKindOf "Man") then {
			_text = format["<t color='#FFFFFF' font='puristaMedium'>%1</t>",_name, _distance];
		} else {
			_crew = crew (vehicle _x);
			{
				_names = format[" & %1",name (_crew select _n)];
			}foreach _crew;
			_text = format["<t color='#FFFFFF' font='puristaMedium'>%1</t>",_names, _distance];
		};

		_idc = _ui displayCtrl (iconID + _forEachIndex);
		_idc ctrlSetStructuredText parseText _text;
		_idc ctrlSetPosition [_sPos select 0, _sPos select 1, 0.4, 0.65];
		_idc ctrlSetScale scale;
		_idc ctrlSetFade 0;
		_idc ctrlCommit 0;
		_idc ctrlShow true;
	};
} foreach allPlayers;

if(marker_on) then {
	_distance = floor( getpos player distance posinext );     
	_distance = format ["%1 | %2",drawmessage, _distance];
	drawIcon3D ["\A3\ui_f\data\map\markers\military\pickup_ca.paa", [1,1,1,1], posinext, 0.7, 0.7, 5, _distance, 1, 0.036, "PuristaLight"];  
};