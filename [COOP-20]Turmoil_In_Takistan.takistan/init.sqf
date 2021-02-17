enableSentences false;
CHVD_allowNoGrass = false;

[] execVM"scripts\ied.sqf";

[] call compile preprocessFileLineNumbers "Engima\Traffic\Init.sqf";
[] call compile preprocessFile "staticData.sqf";
//*******************************************************************
//Guilt and Rememberance Settings
GR_CIV_TYPES = ["UK3CB_TKC_C_CIV"];
GR_MISSION_CHANCE = 80;
GR_FACTIONNAME_EAST = "the Taliban";
GR_FACTIONNAME_WEST = "US Forces";
GR_FACTIONNAME_IND = "the Taliban";
//*******************************************************************

inCap = compile preprocessfilelinenumbers "scripts\inCap.sqf";

/*//parameters
_this select 0, true or false, ais war voices,ais will talk with radio or yelling while firing, (default = true)
_this select 1, true or false, drop smoke around injured ai, (default = true)
_this select 2, true or false, drag to cover, dragger will drag injured to covers like bushes or rocks, for longer distance drag set this false, (default = true)
_this select 3, unconscious and drag chance, determine chance unit unconscious if got hit, min 0%-100% max (default = 50%)
_this select 4, hit react chance, determine chance unit have react animation if got hit, min 0%-100% max (default = 20%)
*** Important Note: if you increase hit react chance, it also decrease unconscious and drag chance ***
*/
_null = [false, false, true, 40, 20] execvm "scripts\injured.sqf";



["CBA_loadingScreenDone", {
    execVM "scripts\Intro.sqf";
}] call CBA_fnc_addEventHandler;