params ["_veh"];

clearItemCargoGlobal _veh;
clearWeaponCargoGlobal _veh; 
clearMagazineCargoGlobal _veh;

_veh addItemCargoGlobal ["toolkit",1];
_veh addWeaponCargoGlobal ["ACE_EarPlugs",2];

_veh addItemCargoGlobal ["ACE_tourniquet",2];
_veh addItemCargoGlobal ["ACE_fieldDressing",10];
_veh addItemCargoGlobal ["ACE_salineIV_250",2];

_veh addItemCargoGlobal ["ACE_EntrenchingTool",1];
_veh addItemCargoGlobal ["ACE_Humanitarian_Ration",2];
_veh addItemCargoGlobal ["ACE_WaterBottle",2];

