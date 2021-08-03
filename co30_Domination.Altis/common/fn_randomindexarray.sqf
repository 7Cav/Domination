// by Xeno
//#define __DEBUG__
#include "..\x_setup.sqf"

// creates an array with count random indices
// parameters: int (number of entries)
// example: _myrandomindexarray = _numberentries call d_fnc_RandomIndexArray;
private _ran_ar = [];
_ran_ar resize _this;
for "_i" from 0 to (_this - 1) do {_ran_ar set [_i, _i]};
__TRACE_1("","_ran_ar")
(_ran_ar call BIS_fnc_arrayShuffle)