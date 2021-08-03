// by Xeno
//#define __DEBUG__
#include "..\x_setup.sqf"

if (!hasInterface) exitWith {};

#ifndef __TT__
if !(d_cas_available) exitWith {
	[playerSide, "HQ"] sideChat (localize "STR_DOM_MISSIONSTRING_1712");
};
#else
if (d_player_side == blufor && {!d_cas_available_w} || {d_player_side == opfor && {!d_cas_available_e}}) exitWith {
	[playerSide, "HQ"] sideChat (localize "STR_DOM_MISSIONSTRING_1712");
};
#endif

if ((d_with_ranked || {d_database_found}) && {score player < (d_ranked_a # 22)}) exitWith {
	[playerSide, "HQ"] sideChat format [localize "STR_DOM_MISSIONSTRING_1713", score player, d_ranked_a # 22];
};

private "_pos_lt";
private _do_exit = false;

if (!d_ifa3lite && {!d_gmcwg && {!d_unsung && {!d_csla && {!d_vn}}}}) then {
	private _lt = laserTarget player;

	__TRACE_1("","_lt")

	if (isNil "_lt" || {isNull _lt}) exitWith {
		// laser target not valid
		_do_exit = true;
	};

	_pos_lt = getPos _lt;
} else {
	_pos_lt = screenToWorld [0.5, 0.5];
};
if (_do_exit) exitWith {};
__TRACE_1("","_pos_lt")

#ifdef __DEBUG__
_arrow = "Sign_Arrow_Large_F" createVehicle [10, 10, 10];
_arrow setPos _pos_lt;
#endif

if (player distance2D _pos_lt < 30) exitWith {
	systemChat (localize "STR_DOM_MISSIONSTRING_1529");
};

[_pos_lt, netId player, 2] remoteExec ["d_fnc_moduleCAS", 2];
