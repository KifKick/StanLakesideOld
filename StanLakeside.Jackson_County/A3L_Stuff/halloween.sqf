candy = 0;
scarylevel = 0;

fnc_hlw_pumpkin = {
_pumpkin_arr = _this select 0;
{
_x addAction ["<t color='#ff1111'>Podnies dynie</t>", "[(_this select 0)] call fnc_pickpumpkin"];  
} foreach _pumpkin_arr;
};  
 
 
fnc_createpumpkin = {
_arr = [];
_location = getpos player;
_plumpkin = "A3L_Pumpkin" createvehicle _location;
_arr = _arr + [_plumpkin];
[[_arr],"fnc_hlw_pumpkin",true,false] spawn life_fnc_MP;
};
 
 
fnc_pickpumpkin = {
        _hour = date select 3;
        test = _this select 0;
        deletevehicle test;
        if ((_hour <= 5) OR (_hour >= 19)) then {
                if (scarylevel isEqualTo 0) then {
                        [] spawn startangel;
                } else {
                        _extracandy = round (random 20);
                        _candy = 10 + _extracandy;
                        candy = candy + _candy;
                        _msgtext1 = format ["Ona uwaza ze jestes tchorzem i dala Ci tylko %1 cukierkow!",_candy];
                        [_msgtext1,20,"orange"] call A3L_Fnc_Msg;
                };
        } else {
                _extracandy = round (random 50);
                _candy = 10 + _extracandy;
                _msgtext1 = format ["Znalazles %1 cukierkow!",_candy];
                [_msgtext1,20,"green"] call A3L_Fnc_Msg;
                candy = candy + _candy;
        };
};
 
fnc_turnObject = {
        _object = _this select 0;  
        _dir = ((getPos player select 0) - (getPos _object select 0)) atan2 ((getPos player select 1) - (getPos _object select 1));
        _object setDir _dir;
};
 
 
fnc_eyecheck = {
private["_pos","_eyeDir","_pPos","_impactPos","_norm","_angle","_blurEffect","_ppEffect"];
_object = _this select 0;
_pos = position _object;
_pos set[2,(_pos select 2)+0.2];
_eyeDir = eyeDirection player;
_pPos = getPosATL player;
_impactPos = [(_pos select 0)-(_pPos select 0),(_pos select 1)-(_pPos select 1),(_pos select 2)-(_pPos select 2)];
_norm = sqrt((_impactPos select 0)^2+(_impactPos select 1)^2+(_impactPos select 2)^2);
_angle = aCos ((_eyeDir select 0)*((_impactPos select 0) / _norm)+((_impactPos select 1) / _norm)*(_eyeDir select 1)+((_impactPos select 2) / _norm)*(_eyeDir select 2));
if(_angle < 90) then {
isLookingAt = 1;
} else {
isLookingAt = 0;
};
isLookingAt;
};
 
 
startangel = {
_angel1 = "A3L_Angel_Idle" createVehicleLocal (player modelToWorld [0,10,0]);
[_angel1] call fnc_turnObject;
"colorCorrections" ppEffectEnable true;
"colorCorrections" ppEffectAdjust [0.2, 0.75, 0, [0.8,0.9,1,-0.1], [1,1,1,3], [-0.5,0,-1,5]];
"colorCorrections" ppEffectCommit 1;
"filmGrain" ppEffectEnable true;
"filmGrain" ppEffectAdjust [0.1, -1, 0.1, 0.05, 2, false];
"filmGrain" ppEffectCommit 1;
_somelogic = "logic" createvehiclelocal (getpos player);
_somelogic say3D "halloweentheme";
_angel1 say3D "halloweenhorn";
scarylevel = 0.4;
_timer = 120;
_alarm = time + _timer;
_alarm2 = time + (_timer - 1);
_delete = 0;
_moveseconds = 0;
_walkseconds = 0;
_invehicle = 0;
 
while {_delete isEqualTo 0} do {
sleep 0.01;
 
if (_walkseconds isEqualTo 70) then {
        scarylevel = 1;
        _walkseconds = 0;
};
 
if (((speed player) > 12) OR ((speed player) < -7)) then {
_walkseconds = 0;
} else {
_walkseconds = _walkseconds + 1;
};
 
_somelogic setpos (getpos player);
if ((_alarm <= time) OR (scarylevel >= 1) OR (_invehicle isEqualTo 1)) then {
_delete = 1;
deleteVehicle _angel1;
deleteVehicle _somelogic;
"colorCorrections" ppEffectEnable false;
"filmGrain" ppEffectEnable false;
if (scarylevel >= 1) then {
["Ona zniknela gdy uslyszala Twoj placz.",20,"red"] call A3L_Fnc_Msg;
} else {
if (_invehicle >= 1) then {
["Ona zniknela gdy wsiadles do pojazdu, nie pozostawiajac cukierkow",20,"red"] call A3L_Fnc_Msg;
} else {
_extracandy = round (random 100);
_candy = 100 + _extracandy;
candy = candy + _candy;
_msgtext1 = format ["Zostawila cie z %1 cukierkami!", _candy];
[_msgtext1,20,"green"] call A3L_Fnc_Msg;
};};
[] spawn fnc_endedhunt;
};
 
 
if (vehicle player != player) then {
_invehicle = 1;
};
 
_angel1 setVectorDirAndUp [[-1,0,0],[0,0,1]];
_angel1 setVectorDirAndUp [vectorDir player,vectorUp player];
[_angel1] call fnc_eyecheck;
        if (isLookingAt isEqualTo 1) then {
        sleep 0.25;
        if (_moveseconds isEqualTo 24) then {
        deleteVehicle _angel1;
        _angel1 = createVehicle ["A3L_Angel_Attack",(player modelToWorld [0,1,0]), [], 0, "CAN_COLLIDE"];  
        _angel1 say3D "halloweenhorn";
        [_angel1] call fnc_turnObject;
        _moveseconds = 0;
        } else {
        _moveseconds = _moveseconds + 1;
        };
       
                if (player distance _angel1 <= 2 and isLookingAt isEqualTo 1) then {
                        "filmGrain" ppEffectAdjust [0.2, -2, 0.2, 0.1, 3, false];
                        "filmGrain" ppEffectCommit 1;
                        [_angel1] call fnc_turnObject;
                        _angel1 setPos (player modelToWorld [0,1,0]);
                        addCamShake [100, 2.5, 50];
                        titleText ["Ona Cie zlapala, BIEGNIJ!", "PLAIN DOWN", 1];
                        sleep 1;
                        switch (true) do {
                                case (scarylevel <= 0.39): { scarylevel = 0.4; };
                                case (scarylevel <= 0.59): { scarylevel = 0.6; };
                                case (scarylevel <= 0.69): { scarylevel = 0.7; };
                                case (scarylevel <= 0.79): { scarylevel = 0.8; };
                                case (scarylevel <= 0.99): { scarylevel = 1; };
                        };
                        };
        } else {
                switch (true) do
                {
                        case (player distance _angel1 >= 10): {
                        deleteVehicle _angel1;
                        _angel1 = "A3L_Angel_Idle" createVehicleLocal (player modelToWorld [0,7,0]);
                        addCamShake [10, 1, 25];
                        [_angel1] call fnc_turnObject;
                        _angel1 setPos (player modelToWorld [0,9,0]);
                        _moveseconds = 0;
                        };
                        case (player distance _angel1 >= 9): {
                        deleteVehicle _angel1;
                        _angel1 = "A3L_Angel_Idle" createVehicleLocal (player modelToWorld [0,7,0]);
                        addCamShake [10, 1, 25];
                        [_angel1] call fnc_turnObject;
                        _angel1 setPos (player modelToWorld [0,8,0]);
                        _moveseconds = 0;
                        };
                        case (player distance _angel1 >= 8): {
                        deleteVehicle _angel1;
                        _angel1 = "A3L_Angel_Idle" createVehicleLocal (player modelToWorld [0,7,0]);
                        addCamShake [10, 1, 25];
                        [_angel1] call fnc_turnObject;
                        _moveseconds = 0;
                        };
                        case (player distance _angel1 >= 7): {
                        deleteVehicle _angel1;
                        _angel1 = "A3L_Angel_Idle" createVehicleLocal (player modelToWorld [0,7,0]);
                        addCamShake [10, 1, 25];
                        [_angel1] call fnc_turnObject;
                        _angel1 setPos (player modelToWorld [0,6,0]);
                        _moveseconds = 0;
                        };
                        case (player distance _angel1 >= 6): {
                        deleteVehicle _angel1;
                        _angel1 = "A3L_Angel_Idle" createVehicleLocal (player modelToWorld [0,7,0]);
                        addCamShake [10, 1, 25];
                        [_angel1] call fnc_turnObject;
                        _angel1 setPos (player modelToWorld [0,5,0]);
                        _moveseconds = 0;
                        };
                        case (player distance _angel1 >= 5): {
                        deleteVehicle _angel1;
                        _angel1 = "A3L_Angel_Point" createVehicleLocal (player modelToWorld [0,7,0]);
                        addCamShake [10, 1, 25];
                        [_angel1] call fnc_turnObject;
                        _moveseconds = 0;
                        };
                        case (player distance _angel1 >= 4): {
                        deleteVehicle _angel1;
                        _angel1 = "A3L_Angel_Attack" createVehicleLocal (player modelToWorld [0,2,0]);
                        addCamShake [10, 1, 25];
                        [_angel1] call fnc_turnObject;
                        _moveseconds = 0;
                        };
                        case (player distance _angel1 >= 3): {
                        deleteVehicle _angel1;
                        _angel1 = "A3L_Angel_Attack" createVehicleLocal (player modelToWorld [0,2,0]);
                        addCamShake [10, 1, 25];
                        [_angel1] call fnc_turnObject;
                        _moveseconds = 0;
                        };
                        case (player distance _angel1 >= 2): {
                        deleteVehicle _angel1;
                        _angel1 = "A3L_Angel_Attack" createVehicleLocal (player modelToWorld [0,1,0]);
                        addCamShake [10, 1, 25];
                        _angel1 say3D "halloweenhorn";
                        [_angel1] call fnc_turnObject;
                        _moveseconds = 0;
                        };
                };
        };
}; };
 
 
fnc_endedhunt = {
sleep 200;
switch (true) do {
        case (scarylevel >= 0.91): { scarylevel = 0.9; [] spawn fnc_endedhunt; };
        case (scarylevel >= 0.81): { scarylevel = 0.8; [] spawn fnc_endedhunt; };
        case (scarylevel >= 0.71): { scarylevel = 0.7; [] spawn fnc_endedhunt; };
        case (scarylevel >= 0.61): { scarylevel = 0.6; [] spawn fnc_endedhunt; };
        case (scarylevel >= 0.51): { scarylevel = 0.5; [] spawn fnc_endedhunt; };
        case (scarylevel >= 0.41): { scarylevel = 0.4; [] spawn fnc_endedhunt; };
        case (scarylevel >= 0.31): { scarylevel = 0.3; [] spawn fnc_endedhunt; };
        case (scarylevel >= 0.21): { scarylevel = 0.2; [] spawn fnc_endedhunt; };
        case (scarylevel >= 0.11): { scarylevel = 0.1; [] spawn fnc_endedhunt; };
        case (scarylevel >= 0.01): { scarylevel = 0.0; };
};
};
 
 
 
 
fnc_hallowmenu = {
createdialog "halloweenshop";
((uiNamespace getVariable "halloweenshop") displayCtrl 55125) lbadd "Hat";
((uiNamespace getVariable "halloweenshop") displayCtrl 55125) lbadd "Uniform";
((uiNamespace getVariable "halloweenshop") displayCtrl 55125) lbadd "Vest";
((uiNamespace getVariable "halloweenshop") displayCtrl 55125) lbSetCurSel 0;
};
 
fnc_updatehalshop = {
_listboxtxt = "";
hallselitemlst = [];
lbClear ((uiNamespace getVariable "halloweenshop") displayCtrl 55126);
_halloitems_arr = [
["Hat","Glowa Dynii","A3L_Halloween_Pumpkinhead",50],
["Hat","Pacholek","conehead",50],
["Hat","Maska Predatora","A3L_Halloween_PredatorMask",75],
["Hat","Maska Pily","A3L_Halloween_JigSaw",75],
["Hat","Czapka wiedzmy","witch_hat",75],
["Hat","Czapka UFO","sab_EXT_Helmet3",120],


["Uniform","Kurtka i dzinsy gangowe","skull_gang",60],
["Uniform","Egipska Mumia","A3L_SpookyMummy",90],
["Uniform","Straszny Stroj Szkieleta","A3L_SECRET",120],
["Uniform","Kobieta w bieliznie","U_BasicBodyICE123",120],
["Uniform","Straszne Zombie","A3L_Zombie",150],
["Uniform","Stroj Smierci","U_C_Squelette_Noir",150],
["Uniform","Stroj UFO","sab_ext_uniform",250],

 
["Vest","Pajonczek","A3L_SpiderVest",25],
["Vest","Duszek i Pajonczek","A3L_SpookyVest",40],
["Vest","Straszne odnogi","V_Slender",100],
["Vest","Kamizelka UFO","sab_ext_vest",150]

];
_tempstyle = ["Hat","Uniform","Vest"];
_selectednumb = lbCurSel ((uiNamespace getVariable "halloweenshop") displayCtrl 55125);
_selectedtype = _tempstyle select _selectednumb;
{
_arrnumber = _forEachIndex;
_itemtype = _x select 0;
_itemname = _x select 1;
_itemclsnme = _x select 2;
_itemprice = _x select 3;
 
if (_itemtype isEqualTo _selectedtype) then {
_listboxtxt = format["%1 (%2)", _itemname,_itemprice];
((uiNamespace getVariable "halloweenshop") displayCtrl 55126) lbadd _listboxtxt;
hallselitemlst = hallselitemlst + [[_itemclsnme,_itemprice,_itemname,_itemtype]];
};
} foreach _halloitems_arr;
};
 
 
fnc_buyitem = {
_curselected = lbCurSel ((uiNamespace getVariable "halloweenshop") displayCtrl 55126);
_selectedarr = hallselitemlst select _curselected;
_classname = _selectedarr select 0;
_price = _selectedarr select 1;
_itemname = _selectedarr select 2;
_itemtype = _selectedarr select 3;
 
if (candy >= _price) then {
candy = candy - _price;
 
_msgtext1 = format ["Pomyslnie kupiles %1 za %2",_itemname,_price];
[_msgtext1,20,"green"] call A3L_Fnc_Msg;
if (_itemtype isEqualTo "Hat") then {
player addheadgear _classname;
} else {
if (_itemtype isEqualTo "Vest") then {
player addvest _classname;
} else {
if (_itemtype isEqualTo "Uniform") then {
player adduniform _classname;
};};};
} else {
["Nie masz tyle cukierkow!",20,"red"] call A3L_Fnc_Msg;
};};