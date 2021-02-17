if (!isServer) exitWith {};
 
waitUntil {!isNil "ALiVE_STATIC_DATA_LOADED"};

ALIVE_PLACEMENT_CUSTOM_UNITBLACKLIST = ["UK3CB_TKC_C_PILOT","UK3CB_TKC_C_WORKER"];

 
/*
 * Mil logistics convoy transport vehicles per faction
 */
 
[ALIVE_factionDefaultTransport, "rhs_faction_usarmy_d", ["rhsusf_M1083A1P2_B_D_fmtv_usarmy","rhsusf_M1083A1P2_B_M2_D_fmtv_usarmy", "rhsusf_m1151_usarmy_d"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultTransport, "UK3CB_TKM_O", ["UK3CB_TKM_O_Hilux_Open","UK3CB_TKM_O_V3S_Closed","UK3CB_TKM_O_Ural_Covered","UK3CB_TKM_O_V3S_Open"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultTransport, "UK3CB_TKA_B", ["UK3CB_TKA_B_Hilux_Open","UK3CB_TKA_B_Ural","UK3CB_TKA_B_MaxxPro_M2"]] call ALIVE_fnc_hashSet;
[ALIVE_factionDefaultTransport, "UK3CB_TKM_I", ["UK3CB_TKM_I_Hilux_Open","UK3CB_TKM_I_Ural_Covered"]] call ALIVE_fnc_hashSet;

/*
 * Civ weapon pools
 */
[ALIVE_civilianWeapons, "UK3CB_TKC_C", [["rhs_weap_makarov_pmm","rhs_mag_9x18_12_57N181S"],["rhs_weap_akms","rhs_30Rnd_762x39mm"],["rhs_weap_akm","rhs_30Rnd_762x39mm"]]] call ALIVE_fnc_hashSet;


