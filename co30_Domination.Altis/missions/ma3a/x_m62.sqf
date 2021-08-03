// by Xeno
//#define __DEBUG__
#include "..\..\x_setup.sqf"

d_x_sm_pos = "d_sm_62" call d_fnc_smmapos; //index:62 Specop camp Agios Panagiotis
d_x_sm_type = "specops";

if (hasInterface) then {
	d_cur_sm_txt = localize "STR_DOM_MISSIONSTRING_1806";
	d_current_mission_resolved_text = localize "STR_DOM_MISSIONSTRING_760";
};

if (isServer) then {
	[d_x_sm_pos # 0] spawn d_fnc_sidespecops;
};

