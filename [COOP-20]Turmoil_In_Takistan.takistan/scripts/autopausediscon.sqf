params ["","_uid"];
private _isPlayer = _uid find "7" == 0;
if _isPlayer then {
["ALIVE_MIL_OPCOM"] call ALiVE_fnc_PauseModule;
};
diag_log format ["autopausediscon.sqf done"];