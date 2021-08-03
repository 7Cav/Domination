// by Xeno
//#define __DEBUG__
#include "..\x_setup.sqf"

params ["_v", "", "_d"];

if (!alive _v) exitWith {
	_v removeEventHandler ["handleDamage", _thisEventHandler];
	_d
};

private _p = getPosASL _v;
if (surfaceIsWater _p) then {
	if ((_p # 2) < -0.9) then {
		_d = _d * 8;
	};
};

_d
