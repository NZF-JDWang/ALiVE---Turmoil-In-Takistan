/* 
 * This file contains parameters to config and function call to start an instance of
 * traffic in the mission. The file is edited by the mission developer.
 *
 * See file Engima\Traffic\Documentation.txt for documentation and a full reference of 
 * how to customize and use Engima's Traffic.
 */
 
private ["_parameters"];

_possibleVehicles = [
	"UK3CB_C_Datsun_Closed",
	"UK3CB_C_Datsun_Open",
	"UK3CB_C_Hatchback",
	"UK3CB_C_Hilux_Closed",
	"UK3CB_C_Hilux_Open",
	"UK3CB_C_Lada",
	"UK3CB_C_LandRover_Open",
	"UK3CB_C_Sedan",
	"UK3CB_C_Skoda",
	"UK3CB_C_TT650",
	"UK3CB_C_UAZ_Open",
	"UK3CB_C_YAVA",
	"UK3CB_ADC_C_Lada",
	"UK3CB_ADC_C_Lada_Taxi",
	"UK3CB_ADC_C_Gaz24",
	"UK3CB_C_Datsun_Closed",
	"UK3CB_C_Datsun_Open",
	"UK3CB_C_Hatchback",
	"UK3CB_C_Hilux_Closed",
	"UK3CB_C_Hilux_Open",
	"UK3CB_C_Lada",
	"UK3CB_C_LandRover_Open",
	"UK3CB_C_Sedan",
	"UK3CB_C_Skoda",
	"UK3CB_C_TT650",
	"UK3CB_C_UAZ_Open",
	"UK3CB_C_YAVA",
	"UK3CB_ADC_C_Lada",
	"UK3CB_ADC_C_Lada_Taxi",
	"UK3CB_ADC_C_Gaz24"
];

possibleCivilians = [

	"UK3CB_TKC_C_CIV",
	"UK3CB_TKC_C_CIV",
	"UK3CB_TKC_C_CIV",
	"UK3CB_TKC_C_CIV",
	"UK3CB_TKC_C_CIV",
	"UK3CB_TKC_C_CIV",
	"UK3CB_TKC_C_CIV",
	"UK3CB_TKC_C_CIV",
	"UK3CB_TKC_C_CIV"
];


replaceDriver = {
	_vehicle = _this select 0;
	_group = _this select 1;


	_newDriver = _group createUnit[selectRandom possibleCivilians, getPos _vehicle, [], 20, "NONE"];
	_newDriver2 = _group createUnit[selectRandom possibleCivilians, getPos _vehicle, [], 20, "NONE"];

	deleteVehicle (driver _vehicle);
	waitUntil {isNull (driver _vehicle)};

	_newDriver assignAsDriver _vehicle;
	_newDriver moveInDriver _vehicle;

	_newDriver2 assignAsCargo _vehicle;
	_newDriver2 moveInCargo _vehicle;

//	d = [_newDriver, 750, 2] execVM "scripts\SSSB.sqf";
	_vehicle setUnloadInCombat [false, false];
};

deleteCrew = {
	_vehicle = _this select 0;
	
	{
		deleteVehicle _x;
	} forEach (crew _vehicle);
};

// Set traffic parameters.
_parameters = [
	["SIDE", civilian],
	["VEHICLES", _possibleVehicles],
	["VEHICLES_COUNT", 5],
	["MIN_SPAWN_DISTANCE", 800],
	["MAX_SPAWN_DISTANCE", 1500],
	["AREA_MARKER", "traffic_1"],
	["HIDE_AREA_MARKER", true],
	["MIN_SKILL", 1],
	["MAX_SKILL", 1],
	["ON_UNIT_CREATED", replaceDriver],
	["ON_UNIT_REMOVING", deleteCrew],
	["DEBUG", FALSE]
];

// Start an instance of the traffic
_parameters spawn ENGIMA_TRAFFIC_StartTraffic;

//*********************************************************************************************

insurgentVehicles = [

	"UK3CB_TKM_O_Hilux_Open",
	"UK3CB_TKM_O_Hilux_Dshkm",
	"UK3CB_TKM_O_YAVA"

];

insurgentDrivers = [

	"UK3CB_TKM_O_AT",
	"UK3CB_TKM_O_AT",
	"UK3CB_TKM_O_AT",
	"UK3CB_TKM_O_RIF_2",
	"UK3CB_TKM_O_RIF_1",
	"UK3CB_TKM_O_MG"

];


insurgentPassengers = {
	_vehicle2 = _this select 0;
	_group2 = _this select 1;


	_newInsurgentDriver = _group2 createUnit[selectRandom insurgentDrivers, getPos _vehicle2, [], 20, "NONE"];
	_newInsurgentPassenger = _group2 createUnit[selectRandom insurgentDrivers, getPos _vehicle2, [], 20, "NONE"];

	deleteVehicle (driver _vehicle2);
	waitUntil {isNull (driver _vehicle2)};

	_newInsurgentDriver assignAsDriver _vehicle2;
	_newInsurgentDriver moveInDriver _vehicle2;

	_newInsurgentPassenger assignAsCargo _vehicle2;
	_newInsurgentPassenger moveInCargo _vehicle2;

//	d = [_newInsurgentDriver, 750, 2] execVM "scripts\SSSB.sqf";
	_vehicle2 setUnloadInCombat [false, false];
};

deleteInsurgents = {
	_vehicle2 = _this select 0;
	
	{
		deleteVehicle _x;
	} forEach (crew _vehicle2);
};

_parameters = [
    ["SIDE", east],
    ["VEHICLES", ["UK3CB_TKM_O_Hilux_Dshkm"]],
    ["VEHICLES_COUNT", 1],
    ["MIN_SPAWN_DISTANCE", 800],
    ["MAX_SPAWN_DISTANCE", 1500],
	["AREA_MARKER", "traffic_1"],
	["HIDE_AREA_MARKER", true],
    ["ON_UNIT_CREATING", { 
        private _doSpawnVehicle = false; 

        if (isNil "ME_lastTryTime") then { ME_lastTryTime = 0; }; 

        if (time - ME_lastTryTime > 60) then {
            _doSpawnVehicle = random 100 < 10;
            ME_lastTryTime = time;
        }; 

        _doSpawnVehicle
    }],
	["ON_UNIT_CREATED", insurgentPassengers],
	["ON_UNIT_REMOVING", deleteInsurgents],
    ["DEBUG", FALSE]
];
//*********************************************************************************************

_possibleVehicles = [
	"UK3CB_C_Datsun_Closed",
	"UK3CB_C_Datsun_Open",
	"UK3CB_C_Hatchback",
	"UK3CB_C_Hilux_Closed",
	"UK3CB_C_Hilux_Open",
	"UK3CB_C_Lada",
	"UK3CB_C_LandRover_Open",
	"UK3CB_C_Sedan",
	"UK3CB_C_Skoda",
	"UK3CB_C_TT650",
	"UK3CB_C_UAZ_Open",
	"UK3CB_C_YAVA",
	"UK3CB_ADC_C_Lada",
	"UK3CB_ADC_C_Lada_Taxi",
	"UK3CB_ADC_C_Gaz24",
	"UK3CB_C_Datsun_Closed",
	"UK3CB_C_Datsun_Open",
	"UK3CB_C_Hatchback",
	"UK3CB_C_Hilux_Closed",
	"UK3CB_C_Hilux_Open",
	"UK3CB_C_Lada",
	"UK3CB_C_LandRover_Open",
	"UK3CB_C_Sedan",
	"UK3CB_C_Skoda",
	"UK3CB_C_TT650",
	"UK3CB_C_UAZ_Open",
	"UK3CB_C_YAVA",
	"UK3CB_ADC_C_Lada",
	"UK3CB_ADC_C_Lada_Taxi",
	"UK3CB_ADC_C_Gaz24"
];

possibleCivilians = [

	"UK3CB_TKC_C_CIV",
	"UK3CB_TKC_C_CIV",
	"UK3CB_TKC_C_CIV",
	"UK3CB_TKC_C_CIV",
	"UK3CB_TKC_C_CIV",
	"UK3CB_TKC_C_CIV",
	"UK3CB_TKC_C_CIV",
	"UK3CB_TKC_C_CIV",
	"UK3CB_TKC_C_CIV"
];


replaceDriver = {
	_vehicle = _this select 0;
	_group = _this select 1;


	_newDriver = _group createUnit[selectRandom possibleCivilians, getPos _vehicle, [], 20, "NONE"];
	_newDriver2 = _group createUnit[selectRandom possibleCivilians, getPos _vehicle, [], 20, "NONE"];

	deleteVehicle (driver _vehicle);
	waitUntil {isNull (driver _vehicle)};

	_newDriver assignAsDriver _vehicle;
	_newDriver moveInDriver _vehicle;

	_newDriver2 assignAsCargo _vehicle;
	_newDriver2 moveInCargo _vehicle;

//	d = [_newDriver, 750, 2] execVM "scripts\SSSB.sqf";
	_vehicle setUnloadInCombat [false, false];
};

deleteCrew = {
	_vehicle = _this select 0;
	
	{
		deleteVehicle _x;
	} forEach (crew _vehicle);
};

// Set traffic parameters.
_parameters = [
	["SIDE", civilian],
	["VEHICLES", _possibleVehicles],
	["VEHICLES_COUNT", 3],
	["MIN_SPAWN_DISTANCE", 800],
	["MAX_SPAWN_DISTANCE", 1500],
	["AREA_MARKER", "traffic_2"],
	["HIDE_AREA_MARKER", true],
	["MIN_SKILL", 1],
	["MAX_SKILL", 1],
	["ON_UNIT_CREATED", replaceDriver],
	["ON_UNIT_REMOVING", deleteCrew],
	["DEBUG", FALSE]
];

// Start an instance of the traffic
_parameters spawn ENGIMA_TRAFFIC_StartTraffic;

//*********************************************************************************************

_possibleVehicles = [
	"UK3CB_C_Datsun_Closed",
	"UK3CB_C_Datsun_Open",
	"UK3CB_C_Hatchback",
	"UK3CB_C_Hilux_Closed",
	"UK3CB_C_Hilux_Open",
	"UK3CB_C_Lada",
	"UK3CB_C_LandRover_Open",
	"UK3CB_C_Sedan",
	"UK3CB_C_Skoda",
	"UK3CB_C_TT650",
	"UK3CB_C_UAZ_Open",
	"UK3CB_C_YAVA",
	"UK3CB_ADC_C_Lada",
	"UK3CB_ADC_C_Lada_Taxi",
	"UK3CB_ADC_C_Gaz24",
	"UK3CB_C_Datsun_Closed",
	"UK3CB_C_Datsun_Open",
	"UK3CB_C_Hatchback",
	"UK3CB_C_Hilux_Closed",
	"UK3CB_C_Hilux_Open",
	"UK3CB_C_Lada",
	"UK3CB_C_LandRover_Open",
	"UK3CB_C_Sedan",
	"UK3CB_C_Skoda",
	"UK3CB_C_TT650",
	"UK3CB_C_UAZ_Open",
	"UK3CB_C_YAVA",
	"UK3CB_ADC_C_Lada",
	"UK3CB_ADC_C_Lada_Taxi",
	"UK3CB_ADC_C_Gaz24"
];

possibleCivilians = [

	"UK3CB_TKC_C_CIV",
	"UK3CB_TKC_C_CIV",
	"UK3CB_TKC_C_CIV",
	"UK3CB_TKC_C_CIV",
	"UK3CB_TKC_C_CIV",
	"UK3CB_TKC_C_CIV",
	"UK3CB_TKC_C_CIV",
	"UK3CB_TKC_C_CIV",
	"UK3CB_TKC_C_CIV"
];


replaceDriver = {
	_vehicle = _this select 0;
	_group = _this select 1;


	_newDriver = _group createUnit[selectRandom possibleCivilians, getPos _vehicle, [], 20, "NONE"];
	_newDriver2 = _group createUnit[selectRandom possibleCivilians, getPos _vehicle, [], 20, "NONE"];

	deleteVehicle (driver _vehicle);
	waitUntil {isNull (driver _vehicle)};

	_newDriver assignAsDriver _vehicle;
	_newDriver moveInDriver _vehicle;

	_newDriver2 assignAsCargo _vehicle;
	_newDriver2 moveInCargo _vehicle;

//	d = [_newDriver, 750, 2] execVM "scripts\SSSB.sqf";
	_vehicle setUnloadInCombat [false, false];
};

deleteCrew = {
	_vehicle = _this select 0;
	
	{
		deleteVehicle _x;
	} forEach (crew _vehicle);
};

// Set traffic parameters.
_parameters = [
	["SIDE", civilian],
	["VEHICLES", _possibleVehicles],
	["VEHICLES_COUNT", 1],
	["MIN_SPAWN_DISTANCE", 800],
	["MAX_SPAWN_DISTANCE", 1500],
	["AREA_MARKER", "traffic_3"],
	["HIDE_AREA_MARKER", true],
	["MIN_SKILL", 1],
	["MAX_SKILL", 1],
	["ON_UNIT_CREATED", replaceDriver],
	["ON_UNIT_REMOVING", deleteCrew],
	["DEBUG", FALSE]
];

// Start an instance of the traffic
_parameters spawn ENGIMA_TRAFFIC_StartTraffic;