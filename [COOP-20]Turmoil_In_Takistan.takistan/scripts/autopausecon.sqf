params ["","_uid"];
private _isPlayer = parseNumber _uid != 0;
if _isPlayer then {
["ALIVE_MIL_OPCOM"] call ALiVE_fnc_unPauseModule;
};
diag_log format ["autopausecon.sqf done"];