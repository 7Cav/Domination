//#define __DEBUG__
#include "..\..\x_setup.sqf"

d_x_sm_pos = "d_sm_180" call d_fnc_smmapos; //  rescue in sea
d_x_sm_type = "normal"; // "convoy"

if (hasInterface) then {
	d_cur_sm_txt = localize "STR_DOM_SIDESTRING_1031A";
	d_current_mission_resolved_text = localize "STR_DOM_SIDESTRING_1032";
};

if (isServer) then {
   [d_x_sm_pos, time + ((15 * 60) + random 60), "ship"] spawn d_fnc_sideevacsea;
};
