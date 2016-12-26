/*
	File: fn_emsInteractionMenu.sqf
*/
#define Btn1 37551
#define Btn2 37552
#define Btn3 37553
#define Btn4 37554
#define Btn5 37555
#define Btn6 37556
#define Btn7 37557
#define Btn8 37558
#define Btn9 37559
#define Btn10 37560
#define Btn11 37561
#define Btn12 37562
#define Btn13 37563
#define Btn14 37564
#define Btn15 37565

private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_Btn8","_diseaseon","_koildebiiii","_koildebiii","_koildebii","_koildebi","_koildeb"];
if(!dialog) then {
	createDialog "medicInteraction_Menu";
};
disableSerialization;
_curTarget = param [0,ObjNull,[ObjNull]];
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target

if(!isPlayer _curTarget) exitWith {closeDialog 0;}; //Bad side check?

_display = findDisplay 37500;
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
life_pInact_curTarget = _curTarget;

_Btn1 ctrlSetText localize "STR_pInAct_Escort";
_Btn1 buttonSetAction "[life_pInact_curTarget] call life_fnc_escortAction; closeDialog 0;";

_Btn2 ctrlSetText localize "STR_pInAct_StopEscort";
_Btn2 buttonSetAction "[life_pInact_curTarget] call life_fnc_stopEscorting; [life_pInact_curTarget] call life_fnc_emsInteractionMenu; closeDialog 0;";

_Btn3 ctrlSetText localize "STR_pInAct_PutInCar";
_Btn3 buttonSetAction "[life_pInact_curTarget] call life_fnc_putInCar;";

_Btn4 ctrlSetText localize "STR_pInAct_ApplyAirKit";
_Btn4 buttonSetAction "[life_pInact_curTarget] call life_fnc_ApplyAir; [life_pInact_curTarget] call life_fnc_emsInteractionMenu;";
if(life_inv_airkit > 0) then { _Btn5 ctrlEnable true; } else { _Btn5 ctrlEnable false; };

_Btn5 ctrlSetText "Severe Injuries";
_Btn5 buttonSetAction "closeDialog 0; [life_pInact_curTarget] call life_fnc_emsInteractionMenu;";
if((life_pInact_curTarget getVariable["severeInjuries",FALSE])) then { _Btn5 ctrlEnable true;} else { _Btn5 ctrlEnable false; _Btn5 ctrlSetText "No Severe Injuries";};

_Btn6 ctrlSetText localize "STR_pInAct_TestIntox";
_Btn6 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_testIntox;";

_Btn7 ctrlSetText localize "STR_pInAct_Unrestrain";
_Btn7 buttonSetAction "[life_pInact_curTarget] call life_fnc_unrestrain; closeDialog 0;";

_Btn8 ctrlSetText localize "STR_pInAct_checkLicenses";
_Btn8 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_licensesLook; closeDialog 0;";

_Btn9 ctrlSetText localize "STR_pInAct_PatDown";
_Btn9 buttonSetAction "[player] remoteExecCall [""life_fnc_removeWeaponActionCiv"",life_pInact_curTarget]; closeDialog 0;";

_Btn10 ctrlSetText "Zaloz Kaftan Bezp";
_Btn10 buttonSetAction "[life_pInact_curTarget] spawn life_fnc_tieingAction; closeDialog 0;";
if( (animationState cursorTarget isEqualTo "Incapacitated" || animationState cursorTarget isEqualTo "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon" ) ) then {

} else {
 _Btn10 ctrlEnable false;		
};

_Btn11 ctrlSetText "Zdejmij Kaftan Bezp";
_Btn11 buttonSetAction "[life_pInact_curTarget] call life_fnc_untie; closeDialog 0;";

if ((_curTarget getVariable ["tied", false])) then {

} else {
_Btn11 ctrlEnable false;		
};

_Btn12 ctrlSetText "Srodek Usypiajacy";
_Btn12 buttonSetAction "[life_pInact_curTarget] call life_fnc_gaggingActionb; closeDialog 0;";
if ((cursorTarget getVariable ["tied", false])) then {
} else {
_Btn12 ctrlEnable false;		
};


_Btn13 ctrlSetText "Obudz";
_Btn13 buttonSetAction "[life_pInact_curTarget] call life_fnc_ungag; closeDialog 0;";
if ((cursorTarget getVariable ["gagged", false])) then {
_Btn12 ctrlEnable false;	
} else {
_Btn13 ctrlEnable false;		
};