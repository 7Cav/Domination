// by Xeno
//#define __DEBUG__
#include "..\x_setup.sqf"

if (_this # 1 == 0) exitWith {
	call {
		if (d_db_type == 0) exitWith {
			"extdb3" callExtension format ["1:dom:revivesAdd:%1", _this # 0];
		};
		if (d_db_type == 1) exitWith {
			["revivesAdd", [_this # 0]] call d_fnc_queryconfigasync;
		};
	};
};