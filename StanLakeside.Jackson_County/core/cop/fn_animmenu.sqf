/*
Lakeside Help Menu
*/


if(vehicle player != player) exitwith {};

allowanims = false;
#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Btn4 37453
#define Btn5 37454
#define Btn6 37455
#define Btn7 37456
#define Btn8 37457
#define Btn9 37458
#define Btn10 37459
#define Btn11 37460
#define Btn12 37461
#define Btn13 37462
#define Btn14 37463
#define Btn15 37464
#define Btn16 37465
#define Btn17 37466
#define Btn18 37467
#define Btn19 37468
#define Btn20 37469
#define Btn21 37470

#define Title 37401
closedialog 0; 

createDialog "pInteraction_Menu";

disableSerialization;

_display = findDisplay 37400;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;
_Btn5 = _display displayCtrl Btn5;
_Btn6 = _display displayCtrl Btn6;
_Btn7 = _display displayCtrl Btn7;
_Btn8 = _display displayCtrl Btn8;
_Btn9 = _display displayCtrl Btn9;
_Btn10 = _display displayCtrl Btn10;
_Btn11 = _display displayCtrl Btn11;
_Btn12 = _display displayCtrl Btn12;
_Btn13 = _display displayCtrl Btn13;
_Btn14 = _display displayCtrl Btn14;
_Btn15 = _display displayCtrl Btn15;
_Btn16 = _display displayCtrl Btn16;
_Btn17 = _display displayCtrl Btn17;
_Btn18 = _display displayCtrl Btn18;
_Btn19 = _display displayCtrl Btn19;
_Btn20 = _display displayCtrl Btn20;
_Btn21 = _display displayCtrl Btn21;

_Btn1  ctrlSetText "Udawaj niezywego";
_Btn1 buttonSetAction "[] spawn fnc_playdead; closeDialog 0;";

_Btn2 ctrlSetText "Karate";
_Btn2 buttonSetAction "player playmove ""AmovPercMstpSnonWnonDnon_exerciseKata"";  closeDialog 0;";

_Btn3 ctrlSetText "Pompki";
_Btn3 buttonSetAction "player playmove ""cl3_pushups"";  closeDialog 0;";

_Btn4 ctrlSetText "Stan na rekach";
_Btn4 buttonSetAction "player playmove ""cl3_hand_stand"";  closeDialog 0;";

_Btn5 ctrlSetText "Obraz sie";
_Btn5 buttonSetAction "player playmove ""cl3_bouncer""; closeDialog 0;";

_Btn6 ctrlSetText "Blaganie";
_Btn6 buttonSetAction "player playmove ""cl3_bow_pray""; closeDialog 0;";

_Btn7 ctrlSetText "Klaskanie";
_Btn7 buttonSetAction "player playmove ""cl3_clapping""; closeDialog 0;";

_Btn8 ctrlSetText "Taniec 1";
_Btn8 buttonSetAction "player playmove ""cl3_nightclubdance""; closeDialog 0;";

_Btn9 ctrlSetText "Taniec 2";
_Btn9 buttonSetAction "player playmove ""cl3_dubstepdance""; closeDialog 0;";

_Btn10 ctrlSetText "Taniec 3";
_Btn10 buttonSetAction "player playmove ""cl3_crazydrunkdance""; closeDialog 0;";

_Btn11 ctrlSetText "Taniec 4";
_Btn11 buttonSetAction "player playmove ""cl3_dubstepPop""; closeDialog 0;";

_Btn12 ctrlSetText "Taniec 5";
_Btn12 buttonSetAction "player playmove ""cl3_DuoIvan""; closeDialog 0;";

_Btn13 ctrlSetText "Taniec 6";
_Btn13 buttonSetAction "player playmove ""cl3_DuoStephan"";  closeDialog 0;";

_Btn14 ctrlSetText "Taniec 7";
_Btn14 buttonSetAction "player playmove ""cl3_hiphopdance""; closeDialog 0;";

_Btn15 ctrlSetText "Taniec 8";
_Btn15 buttonSetAction "player playmove ""cl3_robotdance""; closeDialog 0;";

fnc_playdead = {
	[player,"DeadState"] remoteExecCall ["life_fnc_animsync"];
	sleep 3;
	[player,""] remoteExecCall ["life_fnc_animsync"];
};

uisleep 15;