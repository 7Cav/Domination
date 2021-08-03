// by Xeno
//#define __DEBUG__
#include "..\..\x_setup.sqf"

d_x_sm_pos = "d_sm_31" call d_fnc_smmapos; // index: 31,   Tank depot Zavarak
d_x_sm_type = "normal"; // "convoy"

if (hasInterface) then {
	d_cur_sm_txt = localize "STR_DOM_MISSIONSTRING_1810";
	d_current_mission_resolved_text = localize "STR_DOM_MISSIONSTRING_767";
};

if (isServer) then {
	[d_x_sm_pos, [markerDir "d_sm_31_1",markerDir "d_sm_31_2",markerDir "d_sm_31_3",markerDir "d_sm_31_4",markerDir "d_sm_31_5",markerDir "d_sm_31_6"]] spawn d_fnc_sidetanks;
};