// by Xeno
//#define __DEBUG__
#include "..\..\x_setup.sqf"

d_x_sm_pos = [[16582.7,4690.99,0], [16430.9,4617.28,0]]; // index: 11,   Lighthouse on Isla del Zorra
d_x_sm_type = "normal"; // "convoy"

if (hasInterface) then {
	d_cur_sm_txt = localize "STR_DOM_MISSIONSTRING_732";
	d_current_mission_resolved_text = localize "STR_DOM_MISSIONSTRING_731";
};

if (isServer) then {
	d_x_sm_pos params ["_poss"];
	private _vec = createVehicle ["Land_majak2", _poss, [], 0, "NONE"];
	_vec setPos _poss;
	_vec setVectorUp [0,0,1];
	_vec call d_fnc_addKilledEHSM;
	d_x_sm_vec_rem_ar pushBack _vec;
	sleep 2.22;
	["aa", 0, "tracked_apc", 1, "tank", 1, d_x_sm_pos # 1, 1, 110, true] spawn d_fnc_CreateArmor;
	sleep 2.333;
	["specops", 1, "allmen", 2, _poss, 100, true] spawn d_fnc_CreateInf;
};
