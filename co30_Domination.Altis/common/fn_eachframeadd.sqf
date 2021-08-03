// by Xeno
//#define __DEBUG__
#include "..\x_setup.sqf"

__TRACE_1("","_this")

params ["_name", "_code", ["_delta", 0], ["_type", "seconds"]];

_type = [1, 0] select (_type == "seconds");

if (_delta == 0 || {_type == 1}) then {
	if (_delta == 0) then {
		if (isNil "d_ef_n_hash") then {
			d_ef_n_hash = createHashMap;
		};
		__TRACE("First 1")
		
		d_ef_n_hash set [_name, addMissionEventhandler ["EachFrame", _code]];
	} else {
		if (isNil "d_ef_hash") then {
			d_ef_hash = createHashMap;
		};
		__TRACE("First")
		d_ef_hash set [_name, [_code, _delta, -1, _type]];

		if (isNil "d_ef_running") then {
			d_ef_running = addMissionEventhandler ["EachFrame", {call d_fnc_eachframerun}];
		};
	};
} else {
	if (isNil "d_ef_trig_hash") then {
		d_ef_trig_hash = createHashMap;
	};
	__TRACE("Second")
	if !(_delta in (keys d_ef_trig_hash)) then {
		private _trig = [
			[10, 10, 0],
			[0, 0, 0, false],
			["ANYPLAYER", "PRESENT", true],
			["thisTrigger call d_fnc_triggerrun;false", "", ""],
			_delta
		] call d_fnc_createtriggerlocal;
		private _hm = createHashMap;
		_hm set [_name, _code];
		_trig setVariable ["d_trig_hm", _hm];
		d_ef_trig_hash set [_delta, _trig];
		__TRACE_1("1","_trig")
	} else {
		private _trig = d_ef_trig_hash get _delta;
		(_trig getVariable "d_trig_hm") set [_name, _code];
		__TRACE_1("2","_trig")
	};
};
