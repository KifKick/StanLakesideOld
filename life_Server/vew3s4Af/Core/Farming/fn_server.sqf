svr_plantseed = {
_plants_array = [
["wheat","A3L_Wheat",300,1.2,50],
["sunflower","A3L_Sunflower",300,1.25,50],
["corn Plant","A3L_Corn",350,1.47,100],
["bean Plant","A3L_Beans",350,1.27,100],
["cotton Plant","A3L_Cotton",350,1.18,100],
["olive Plant","Ficus_Bush_1",500,2.7,100],
["pumpkin","A3L_Pumpkin",600,0.3,120],
["opium Poppy","Oleander2",800,1.5,200],
["cannabis Plant","A3L_Cannabis",800,1.22,200]
];

_selectedplant = _this select 1;
_player = _this select 0;
_player action ["A3L_Farming", _player];
_arraypart = "";

{
_selectedarray = _forEachIndex;
_arrselplant = _x select 0;
if(_selectedplant == _arrselplant) then {_arraypart = _selectedarray;};
} foreach _plants_array;

_plantinfo = _plants_array select _arraypart;
_plantclassname = _plantinfo select 1;
_Growingtime = _plantinfo select 2;
_plantinground = _plantinfo select 3;
_plant = createVehicle [_plantclassname,[ getpos _player select 0, getpos _player select 1, (getpos _player select 2) - _plantinground], [], 0, "CAN_COLLIDE"];


_extragrow = _plantinfo select 4;
_Growingtime = _Growingtime + ( round (random _extragrow));
_growtime = _Growingtime / 10;
_plant setVariable ["growtime",_growtime,false];

_growup = _plantinground / 10;
_plant setVariable ["growup",_growup,false];

_growprcnt = 0;
_plant setVariable ["growprcnt",_growprcnt,true];

[_plant] spawn svr_growing;


};



svr_growing = {
_plant = _this select 0;
_growtime = _plant getVariable "growtime";
_growup = _plant getVariable "growup";
_growprcnt = _plant getVariable "growprcnt";
sleep _growtime;
_growprcnt = _growprcnt + 10;
_plant setposATL [ getpos _plant select 0, getpos _plant select 1, (getpos _plant select 2) + _growup];
_plant setVariable ["growtime",_growtime,false];
_plant setVariable ["growup",_growup,false];
_plant setVariable ["growprcnt",_growprcnt,true];
if (_growprcnt == 100) Then {
} else {
[_plant] spawn svr_growing;};
};


svr_harvestplant = {
};
