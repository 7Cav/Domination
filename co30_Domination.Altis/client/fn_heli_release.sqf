// by Xeno
#include "..\x_setup.sqf"

params ["_vec", "_caller"];

if (_caller == currentPilot _vec) then {
	_vec removeAction (_this # 2);
	_vec setVariable ["d_vec_released", true, true];
};