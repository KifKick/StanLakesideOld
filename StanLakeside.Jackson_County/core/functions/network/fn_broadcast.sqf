if(!hasInterface) exitWith {};
private["_type","_message"];
_type = param [0,0,[[],0]];
_message = param [1,"",[""]];
if(_message isEqualTo "") exitwith {};

[format["%1",_message], false] spawn domsg;