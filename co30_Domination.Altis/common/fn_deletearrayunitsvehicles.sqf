//by Longtime
//#define __DEBUG__
#include "..\x_setup.sqf"

// delete all items in an array of units and/or vehicles

{
	if (_x isKindOf "House") then {
		_x setDamage 0;
		deleteVehicle _x;
	} else {
		if (_x isKindOf "LandVehicle" && {!((crew _x) isEqualTo [])}) then {
			if ({alive _x && {_x call d_fnc_isplayer}} count (crew _x) == 0) then {
				_x call d_fnc_DelVecAndCrew;
			};
		} else {
			deleteVehicle _x;
		};
	};
} forEach (_this select {!isNull _x});
