removeGoggles player;
//*******************************************************************
//Save gear on death
params ["_unit"];

_unit addEventHandler ["Killed", {
    params ["_unit"];
    Mission_loadout = getUnitLoadout _unit;
}];

_unit addEventHandler ["Respawn", {
    params ["_unit"];

    if (!isNil "Mission_loadout") then {
        _unit setUnitLoadout Mission_loadout;
    };
}];
//*******************************************************************
//Fuel usage increase
player addEventHandler ["GetInMan", {[ _this select 2] execVM "scripts\kp_fuel_consumption.sqf";}];
//*******************************************************************
[] execVM "scripts\QS_icons.sqf";
[] execVM "scripts\diary.sqf";
//*******************************************************************
//Arsenal setups
[arsenal_1] execVM "scripts\arsenal.sqf";
[arsenal_2] execVM "scripts\arsenal.sqf";
[arsenal_3] execVM "scripts\arsenal.sqf";

[arsenal_4] execVM "scripts\arsenal.sqf";
[arsenal_5] execVM "scripts\arsenal.sqf";
[arsenal_6] execVM "scripts\arsenal.sqf";

//*******************************************************************
addMissionEventHandler
[
	"Draw3D",
	{
		alphaText = linearConversion[2, 5, player distance arsenal_1, 1, 0, true];
		drawIcon3D ["", [1,1,1, alphaText], arsenal_1 modelToWorld[0,0,0.1], 0, 0, 0, "Arsenal", 0.5, 0.05, "PuristaLight"];
	}
];

addMissionEventHandler
[
	"Draw3D",
	{
		alphaText = linearConversion[2, 5, player distance arsenal_2, 1, 0, true];
		drawIcon3D ["", [1,1,1, alphaText], arsenal_2 modelToWorld[0,0,0.1], 0, 0, 0, "Arsenal", 0.5, 0.05, "PuristaLight"];
	}
];

addMissionEventHandler
[
	"Draw3D",
	{
		alphaText = linearConversion[2, 5, player distance arsenal_3, 1, 0, true];
		drawIcon3D ["", [1,1,1, alphaText], arsenal_3 modelToWorld[0,0,0.1], 0, 0, 0, "Arsenal", 0.5, 0.05, "PuristaLight"];
	}
];

//*******************************************************************

addMissionEventHandler
[
	"Draw3D",
	{
		alphaText = linearConversion[2, 5, player distance arsenal_4, 1, 0, true];
		drawIcon3D ["", [1,1,1, alphaText], arsenal_4 modelToWorld[0,0,0.1], 0, 0, 0, "Arsenal", 0.5, 0.05, "PuristaLight"];
	}
];

addMissionEventHandler
[
	"Draw3D",
	{
		alphaText = linearConversion[2, 5, player distance arsenal_5, 1, 0, true];
		drawIcon3D ["", [1,1,1, alphaText], arsenal_5 modelToWorld[0,0,0.1], 0, 0, 0, "Arsenal", 0.5, 0.05, "PuristaLight"];
	}
];

addMissionEventHandler
[
	"Draw3D",
	{
		alphaText = linearConversion[2, 5, player distance arsenal_6, 1, 0, true];
		drawIcon3D ["", [1,1,1, alphaText], arsenal_6 modelToWorld[0,0,0.1], 0, 0, 0, "Arsenal", 0.5, 0.05, "PuristaLight"];
	}
];