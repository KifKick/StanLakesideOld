// command to open HUD:  "cutRsc ["a3lhud", "PLAIN"];"
 
while {true} do {
sleep 0.01;
_playerhealth = myHealth;
_playerstamina = getfatigue player;
_playerhunger = life_hunger;
_playerthirst = life_thirst;
_reputation = karma_level;
_battery = life_battery;
_servertime = [serverTime,"HH:MM:SS"] call BIS_fnc_secondsToString;
 
_healthcolor = "#00FF4C";
_hungercolor = "#00FF4C";
_thirstcolor = "#00FF4C";
_staminacolor = "#00FF4C";
_magcolor = "#FFFFFF";
_ammocolor = "#FFFFFF";
_hungertext = parseText format[""];
_thirsttext = parseText format[""];
_healthtext = parseText format[""];
_zeroingtext = parseText format[""];
_staminatext = parseText format[""];
_ammotext = parseText format[""];
_amountmagtext = parseText format[""];
_weaponname = parseText format[""];
//_scarytext = parseText format[""];
//_amountcandy = candy;
//_playerscary = scarylevel;
//_scarycolor = "#00FF4C";
_hudinfo = weaponState player; // ["arifle_MX_ACO_pointer_F","arifle_MX_ACO_pointer_F","Single","30Rnd_65x39_caseless_mag",30]
_curweapon = _hudinfo select 0;
_curmagazine = _hudinfo select 4;
_className = _hudinfo select 3;
_gunmodeold = _hudinfo select 2;
_gunmode = "";
if ((_gunmodeold == "single") or (_gunmodeold == "FullAuto")) then {
_gunmode = _gunmodeold;
if (_gunmodeold == "single") then {_gunmode = "Pojedynczy"};
if (_gunmodeold == "FullAuto") then {_gunmode = "Automatyczny"};
};
 
_magforpic = "";
if (_curweapon != "") then {
_magforpic = (getArray (configFile >> "CfgWeapons" >> _curweapon >> "magazines")) select 0;
};
_picture = "";
_picture = getText (configFile >> "CfgMagazines" >> _magforpic >> "picture");
_nameofPlayer = name player;
_noweaponsarray = ["","","","",0];
_nothing = _noweaponsarray select 0;
if (_nothing == _curweapon) then {
} else {
 
_zeroing = currentZeroing player;
 
_magazineClass = currentMagazine player;
_weaponname = getText (configFile >> "CfgWeapons" >> _curweapon >> "displayName");
_maxammo = getNumber(configFile >> "CfgMagazines" >> _magazineClass >> "count") ;
_prcentammo = 0;
if (_curmagazine == 0) then {
_prcentammo = 0;
} else {
_prcentammo = (_curmagazine / _maxammo) * 100;
};
 
_amountmag = {_x == (currentmagazine player)} count magazines player;
if (_amountmag == 0) then {
        _amountmagtext = parseText format["Skonczyly mi sie magazynki"];
                _magcolor = "#FFFFFF";
    } else {
    if (_amountmag == 1) then {
        _amountmagtext = parseText format["Zostal mi %1 magazynek", _amountmag];
                _magcolor = "#FFFFFF";
    } else {
    if (_amountmag > 1) then {
        _amountmagtext = parseText format["Zostaly mi %1 magazygnki/ow.", _amountmag];
                _magcolor = "#FFFFFF";
};};};
       
if (_prcentammo == 0) then {
        _ammotext = parseText format["Chyba skonczyla mi sie amunicja."];
                _ammocolor = "#FFFFFF";
    } else {
    if (_prcentammo < 20) then {
        _ammotext = parseText format["Magazynek wydaje sie juz prawie pusty."];
                _ammocolor = "#FFFFFF";
    } else {
    if (_prcentammo < 40) then {
        _ammotext = parseText format["Powinienem sprawdzic ile zostalo mi kul w magazynku."];

                _ammocolor = "#FFFFFF";
    } else {
    if (_prcentammo < 60) then {
        _ammotext = parseText format["Magazynek wazy okolo polowy mniej."];
                _ammocolor = "#FFFFFF";
    } else {
    if (_prcentammo < 80) then {
        _ammotext = parseText format["Mam wystarczajaco duzo amunicji."];
                _ammocolor = "#FFFFFF";
    } else {
    if (_prcentammo < 100) then {
        _ammotext = parseText format["Mam bardzo duzo amunicji."];
                _ammocolor = "#FFFFFF";
    } else {
    if (_prcentammo == 100) then {
        _ammotext = parseText format["Magazynek jest pelen."];
                _ammocolor = "#FFFFFF";
};};};};};};};
 
if (_zeroing == 0) then {
                _zeroingtext = parseText format[""];
        } else {
                _zeroingtext = parseText format["Zerowanie: %1M", _zeroing];
};
 
 
};  
 
if (_playerhealth < 0.10) then {
                _healthcolor = "#00FF4C";
                _healthtext = parseText format["Bardzo zdrowy"];
        } else {
        if (_playerhealth < 0.20) then {
                _healthcolor = "#1AFF00";
                _healthtext = parseText format["Kilka zadrapan"];
        } else {
        if (_playerhealth < 0.30) then {
                _healthcolor = "#7BFF00";
                _healthtext = parseText format["Lekko ranny"];
        } else {
        if (_playerhealth < 0.40) then {
                _healthcolor = "#BFFF00";
                _healthtext = parseText format["Nie czuje sie dobrze"];
        } else {
        if (_playerhealth < 0.50) then {
                _healthcolor = "#EAFF00";
                _healthtext = parseText format["Zaczynam czuc bol"];
        } else {
        if (_playerhealth < 0.60) then {
                _healthcolor = "#FFBF00";
                _healthtext = parseText format["Czuje bol"];
        } else {
        if (_playerhealth < 0.70) then {
                _healthcolor = "#FF8400";
                _healthtext = parseText format["Musialem sobie cos zlamac"];
        } else {
        if (_playerhealth < 0.80) then {
                _healthcolor = "#FF4000";
                _healthtext = parseText format["Bardzo ranny"];
        } else {
        if (_playerhealth < 0.90) then {
                _healthcolor = "#FF0000";
                _healthtext = parseText format["Krytycznie ranny"];
        } else {
        if (_playerhealth == 1) then {
                _healthcolor = "#590000";
                _healthtext = parseText format["Martwy</t>"];
};};};};};};};};};};
 
if (_playerhunger > 90) then {
                _hungercolor = "#00FF4C";
                _hungertext = parseText format["Najedzony"];




        } else {
        if (_playerhunger > 70) then {
                _hungercolor = "#7BFF00";
                _hungertext = parseText format["Przekasilbym cos"];
        } else {
        if (_playerhunger > 60) then {
                _hungercolor = "#BFFF00";
                _hungertext = parseText format["Przydaloby sie cos zjesc"];
        } else {
        if (_playerhunger > 50) then {
                _hungercolor = "#EAFF00";
                _hungertext = parseText format["Pusto mi w brzuszku"];
        } else {
        if (_playerhunger > 40) then {
                _hungercolor = "#FFBF00";
                _hungertext = parseText format["Powininem cos zjesc zaraz"];
        } else {
        if (_playerhunger > 30) then {
                _hungercolor = "#FF8400";
                _hungertext = parseText format["Burczy mi w brzuchu"];
        } else {
        if (_playerhunger > 20) then {
                _hungercolor = "#FF4000";
                _hungertext = parseText format["Musze cos zjesc"];
        } else {
        if (_playerhunger > 10) then {
                _hungercolor = "#FF0000";
                _hungertext = parseText format["Zaczynam glodowac"];
        } else {
        if (_playerhunger == 0) then {
                _hungercolor = "#590000";
                _hungertext = parseText format["Martwy</t>"];
};};};};};};};};};
 
if (_playerthirst > 80) then {
                _thirstcolor = "#1AFF00";
                _thirsttext = parseText format["Nawodniony"];
        } else {
        if (_playerthirst > 70) then {
                _thirstcolor = "#7BFF00";
                _thirsttext = parseText format["Moglbym sie napic szkalnki wody"];
        } else {
        if (_playerthirst > 60) then {
                _thirstcolor = "#BFFF00";
                _thirsttext = parseText format["Nie pogardzilbym szklanka wody"];
        } else {
        if (_playerthirst > 50) then {
                _thirstcolor = "#EAFF00";
                _thirsttext = parseText format["Sucho mi w gardle"];
        } else {
        if (_playerthirst > 40) then {
                _thirstcolor = "#FFBF00";
                _thirsttext = parseText format["Powinienem cos wypic"];
        } else {
        if (_playerthirst > 30) then {
                _thirstcolor = "#FF8400";
                _thirsttext = parseText format["Brakuje mi juz sliny"];
        } else {
        if (_playerthirst > 20) then {
                _thirstcolor = "#FF4000";
                _thirsttext = parseText format["Musze cos wypic"];
        } else {
        if (_playerthirst > 10) then {
                _thirstcolor = "#FF0000";
                _thirsttext = parseText format["Czuje sie okropnie przez dehydracje"];
        } else {
        if (_playerthirst == 0) then {
                _thirstcolor = "#590000";
                _thirsttext = parseText format["MARTWY</t>"];
};};};};};};};};};
 
if (_playerstamina < 0.10) then {
                _staminacolor = "#00FF4C";
                _staminatext = parseText format["W pelni sil"];
        } else {
        if (_playerstamina < 0.30) then {
                _staminacolor = "#1AFF00";
                _staminatext = parseText format["Jeszcze duzo przebiegne"];
        } else {
        if (_playerstamina < 0.50) then {
                _staminacolor = "#BFFF00";
                _staminatext = parseText format["Zaczynam sie meczyc"];
        } else {
        if (_playerstamina < 0.60) then {
                _staminacolor = "#EAFF00";
                _staminatext = parseText format["Potrzebuje chwile przerwy aby odetchnac"];
        } else {
        if (_playerstamina < 0.70) then {
                _staminacolor = "#FF8400";
                _staminatext = parseText format["Naprawde powininem sie na chwile zatrzymac"];
        } else {
        if (_playerstamina < 0.90) then {
                _staminacolor = "#FF4000";
                _staminatext = parseText format["Zaczynam czuc zmeczenie"];
        } else {
        if (_playerstamina > 0.91) then {
                _staminacolor = "#590000";
                _staminatext = parseText format["Jestem zmeczony"];
};};};};};};};

 /*if (_playerscary == 0) then {
                _scarycolor = "#00FF4C";
                _scarytext = parseText format["Nie boje sie"];
        } else {
        if (_playerscary < 0.2) then {
                _scarycolor = "#7BFF00";
                _scarytext = parseText format["Troche przestraszony"];
        } else {
        if (_playerscary < 0.4) then {
                _scarycolor = "#EAFF00";
                _scarytext = parseText format["Przestraszony"];
        } else {
        if (_playerscary < 0.6) then {
                _scarycolor = "#FF8400";
                _scarytext = parseText format["Przerazony"];
        } else {
        if (_playerscary < 0.8) then {
                _scarycolor = "#FF4000";
                _scarytext = parseText format["Serce mi wali"];
        } else {
        if (_playerscary < 1) then {
                _scarycolor = "#FF0000";
                _scarytext = parseText format["Serce mi wali bardzo mocno"];
        } else {
        if (_playerscary == 1) then {
                _scarycolor = "#590000";
                _scarytext = parseText format["Placze ze strachu"];
};};};};};};};

_candyconvtext = parsetext format [""];
if (_amountcandy == 0) then {
_candyconvtext = parseText format ["Brak cukierkow!"];
} else {
_candyconvtext = parseText format ["%1 cukierkow!", _amountcandy];
}; */
 
 
_playerstatustext = parseText format ["<t font='EtelkaNarrowMediumPro' size='0.8' align='right'><t color='%1'>%2</t> | <t color='%3'>%4</t> | <t color='%5'>%6</t> | <t color='%7'>%8 </t>", _healthcolor, _healthtext, _staminacolor, _staminatext, _hungercolor, _hungertext, _thirstcolor, _thirsttext];
_playernametext = parseText format ["<t font='EtelkaNarrowMediumPro' color='#FFFFFF' size='1' align='right'>%1 | </t> <t color='#FFFFFF' size='1' align='right'>LVL: %2 |</t> <t color='#FFFFFF' size='1' align='right'> TEL: %3 | <t color='#FFFFFF' size='1' align='right'>%4", _nameofplayer, _reputation, _battery, _servertime];
_zeroinghudtext = parseText format ["<t font='EtelkaNarrowMediumPro' color='#949494' size='1' align='left'>%1</t>", _zeroingtext];
_ammohudtext = parseText format ["<t font='EtelkaNarrowMediumPro' color='%1' size='0.9' align='left'>%2</t>",_ammocolor, _ammotext];
_maghudtext = parseText format ["<t font='EtelkaNarrowMediumPro' color='%1' size='0.8' align='left'>%2</t>", _magcolor, _amountmagtext];
_gunmodetext = parseText format ["<t font='EtelkaNarrowMediumPro' color='#FFFFFF' size='0.8' align='center'>%1</t>", _gunmode];
 
_weapontexthud = parseText format ["<t font='EtelkaNarrowMediumPro' color='#FFFFFF' size='0.8' align='left'>%1</t>", _weaponname];
((uiNamespace getVariable "a3lhud") displayCtrl 41652) ctrlSetStructuredText _playerstatustext;
((uiNamespace getVariable "a3lhud") displayCtrl 16418) ctrlSetText _picture;
((uiNamespace getVariable "a3lhud") displayCtrl 62362) ctrlSetStructuredText _playernametext;
((uiNamespace getVariable "a3lhud") displayCtrl 16423) ctrlSetStructuredText _zeroinghudtext;
((uiNamespace getVariable "a3lhud") displayCtrl 16422) ctrlSetStructuredText _ammohudtext;
((uiNamespace getVariable "a3lhud") displayCtrl 16419) ctrlSetStructuredText _gunmodetext;
((uiNamespace getVariable "a3lhud") displayCtrl 16421) ctrlSetStructuredText _maghudtext;
((uiNamespace getVariable "a3lhud") displayCtrl 16420) ctrlSetStructuredText _weapontexthud;
 
};