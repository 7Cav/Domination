scriptName "Enforce Whitelist";

[] call compileFinal preprocessFileLineNumbers "whitelist.sqf";

waitUntil {alive player};
sleep 1;

// add check for mission controller
if (player isEqualTo ([] call d_fnc_getMissioncontroller) && !(serverCommandAvailable "#kick")) then {

    private _match = false;

    [] call {
        if ((getPlayerUID player) in cav_whitelisted_steamids) exitWith {_match = true;};
    };

    if (!_match) then {
        sleep 1;
        endMission "END3";
    };
};

if (player isEqualTo ([] call d_fnc_getMissioncontroller1) && !(serverCommandAvailable "#kick")) then {

    private _match = false;

    [] call {
        if ((getPlayerUID player) in cav_whitelisted_steamids) exitWith {_match = true;};
    };

    if (!_match) then {
        sleep 1;
        endMission "END3";
    };
};
// add check for MP's
if (player isEqualTo ([] call d_fnc_getMilitarypolice) && !(serverCommandAvailable "#kick")) then {

    private _match = false;

    [] call {
        if ((getPlayerUID player) in MP_whitelisted_steamids) exitWith {_match = true;};
    };

    if (!_match) then {
        sleep 1;
        endMission "END2";
    };
};

if (player isEqualTo ([] call d_fnc_getMilitarypolice1) && !(serverCommandAvailable "#kick")) then {

    private _match = false;

    [] call {
        if ((getPlayerUID player) in MP_whitelisted_steamids) exitWith {_match = true;};
    };

    if (!_match) then {
        sleep 1;
        endMission "END2";
    };
};