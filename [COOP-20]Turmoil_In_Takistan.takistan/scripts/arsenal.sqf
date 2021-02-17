
_box = (_this select 0);
//*******************************************************************

_playerRole = roleDescription player;
private "_role";

if ("Commander" in _playerRole) then {_role = "TeamLeader"};
if ("Leader" in _playerRole) then {_role = "TeamLeader"};
if ("Grenadier" in _playerRole) then {_role = "Grenadier"};
if ("edic" in _playerRole) then {_role = "Medic"}; 
if ("Interpreter" in _playerRole) then {_role = "Interpreter"};
if ("JTAC" in _playerRole) then {_role = "JTAC"};
if ("Engineer" in _playerRole) then {_role = "Engineer"}; 
if ("Machinegunner" in _playerRole) then {_role = "Machinegunner"};
if ("Rifleman" in _playerRole) then {_role = "Rifleman"};
if ("Marksman" in _playerRole) then {_role = "Marksman"};
if ("TEST" in _playerRole) then {_role = "Rifleman"};

//*******************************************************************
_genericGear = [
	
	//Uniforms
	"rhs_uniform_cu_ocp_82nd",
	//backpacks 
	"rhsusf_assault_eagleaiii_ocp",
	"B_UGV_02_Demining_backpack_F",
	"B_UAV_01_backpack_F",
	//Headgear
	"rhsusf_ach_helmet_ocp",
	"rhsusf_ach_helmet_ocp_alt",
	"rhsusf_ach_helmet_ESS_ocp",
	"rhsusf_ach_helmet_ESS_ocp_alt",
	"rhsusf_ach_helmet_headset_ocp",
	"rhsusf_ach_helmet_headset_ocp_alt",
	"rhsusf_ach_helmet_headset_ess_ocp",
	"rhsusf_ach_helmet_headset_ess_ocp_alt",
	//goggles
	"rhs_googles_black",
	"rhs_googles_clear",
	"rhs_googles_orange",
	"rhs_googles_yellow",
	"rhsusf_shemagh_tan",
	"rhsusf_shemagh2_tan",
	"rhsusf_shemagh_gogg_tan",
	"rhsusf_shemagh2_gogg_tan",
	"rhsusf_oakley_goggles_blk",
	"rhsusf_oakley_goggles_clr",
	"rhsusf_oakley_goggles_ylw",
	//NVG's 
	"rhsusf_ANPVS_14",
	//ammo
	"rhs_mag_30Rnd_556x45_M855A1_Stanag",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
	"rhsusf_5Rnd_00Buck",
	"rhsusf_5Rnd_Slug",
	"rhsusf_200Rnd_556x45_box",
	"rhsusf_200rnd_556x45_mixed_box",
	"rhsusf_100Rnd_762x51_m61_ap",
	"rhsusf_100Rnd_762x51_m62_tracer",
	"rhsusf_20Rnd_762x51_m993_Mag",
	"rhsusf_5Rnd_762x51_m993_Mag",
	"rhs_mag_M397_HET",
	"rhs_mag_M433_HEDP",
	"rhs_mag_M441_HE",
	"rhs_mag_M585_white",
	"rhs_mag_m661_green",
	"rhs_mag_m662_red",
	"rhs_mag_m713_Red",
	"rhs_mag_m714_White",
	"rhs_mag_m715_Green",
	"rhs_mag_m716_yellow",
	//Throwables
	"ACE_M14",
	"rhs_mag_an_m8hc",
	"rhs_mag_m18_green",
	"rhs_mag_m18_purple",
	"rhs_mag_m18_red",
	"rhs_mag_m18_yellow",
	"rhs_mag_m67",
	"rhs_mag_mk84",
	"ACE_HandFlare_Green",
	"ACE_HandFlare_Red",
	"ACE_HandFlare_White",
	"ACE_HandFlare_Yellow",
	"ACE_Chemlight_HiBlue",
	"ACE_Chemlight_HiGreen",
	"ACE_Chemlight_HiRed",
	"ACE_Chemlight_HiWhite",
	"ACE_Chemlight_HiYellow",
	"ACE_Chemlight_IR",
	"B_IR_Grenade",
	//Explosives
	"DemoCharge_Remote_Mag",
	"SatchelCharge_Remote_Mag",
	"SLAMDirectionalMine_Wire_Mag",
	"ClaymoreDirectionalMine_Remote_Mag",
	//Rail attachments
	"rhsusf_acc_anpeq15side",
	"rhsusf_acc_anpeq15_top",
	"rhsusf_acc_anpeq15side_bk",
	"rhsusf_acc_anpeq15_bk_top",
	"rhsusf_acc_anpeq15",
	"rhsusf_acc_anpeq15_light",
	"rhsusf_acc_anpeq15_bk",
	"rhsusf_acc_anpeq15_bk_light",
	"rhsusf_acc_anpeq16a",
	"rhsusf_acc_anpeq16a_light",
	"rhsusf_acc_anpeq16a_top",
	"rhsusf_acc_anpeq16a_light_top",
	//Muzzle Attachments
	"rhsusf_acc_sf3p556",
	"rhsusf_acc_sfmb556",
	//Bipod Slot
	"rhsusf_acc_grip2",
	"rhsusf_acc_harris_bipod",
	"rhsusf_acc_kac_grip",
	"rhsusf_acc_rvg_blk",
	"rhsusf_acc_tdstubby_blkv",
	"rhsusf_acc_grip3",
	"rhsusf_acc_harris_swivel",
	"rhsusf_acc_saw_bipod",
	"rhsusf_acc_kac_grip_saw_bipod",
	"rhsusf_acc_grip4",
	"rhsusf_acc_grip1",
	//Handguns
	"rhsusf_weap_glock17g4",
	"acc_flashlight_pistol",
	"rhsusf_acc_omega9k",
	"rhsusf_mag_17Rnd_9x19_FMJ",
	"rhsusf_mag_17Rnd_9x19_JHP",
	"rhsusf_weap_m1911a1",
	"rhsusf_mag_7x45acp_MHP",
	"rhsusf_weap_m9",
	"rhsusf_mag_15Rnd_9x19_FMJ",
	"rhsusf_mag_15Rnd_9x19_JHP",
	//Radios 
	"ACRE_PRC343",
	"TFAR_anprc152",
	//Misc
	"B_UavTerminal",
	"ItemMap",
	"ItemCompass",
	"ACE_Altimeter",
	//ACE stuff 
	"ACRE_VHF30108SPIKE",
	"ACE_RangeTable_82mm",
	"ACE_adenosine",
	"ACE_fieldDressing",
	"ACE_quikclot",
	"ACE_CableTie",
	"ACE_EarPlugs",	
	"ACE_IR_Strobe_Item",
	"ACE_MapTools",
	"ACE_morphine",
	"ACE_tourniquet",
	"ACE_microDAGR",
	"ACE_splint",
	"ACE_salineIV_250",
	"ACE_Flashlight_MX991",	
	"ACE_EntrenchingTool",
	"ACE_SpraypaintGreen",
	"ACE_SpraypaintRed",
	"ACE_wirecutter",
	"ACE_Humanitarian_Ration",
	"ACE_WaterBottle"
];

_riflemanWeaponsAndScopes = [

	"rhs_weap_m4a1",
	"rhs_weap_m4a1_mstock",
	"rhs_weap_M590_5RD",
	"rhsusf_acc_acog",
	"rhsusf_acc_acog2",
	"rhsusf_acc_acog3",
	"rhsusf_acc_eotech_552",
	"rhsusf_acc_compm4",
	"rhsusf_acc_t1_high",
	"rhsusf_acc_eotech_xps3",
	"rhs_weap_fgm148",
	"rhs_weap_M136",
	"rhs_weap_M136_hedp",
	"rhs_weap_M136_hp",
	"rhs_weap_maaws",
	"rhs_optic_maaws",
	"rhs_mag_maaws_HE",
	"rhs_mag_maaws_HEDP",
	"rhs_mag_maaws_HEAT",
	"rhs_weap_m72a7"

];

_machinegunnerWeaponsAndScopes = [

	"rhs_weap_m249_pip_L",
	"rhs_weap_m249_light_S",
	"rhs_weap_m240B",
	"rhsusf_acc_elcan",
	"rhsusf_acc_eotech_552",
	"rhsusf_acc_acog_mdo"

];

_marksmanWeaponsAndScopes = [

	"rhs_weap_m14ebrri",
	"rhs_weap_m24sws_d",
	"rhsusf_acc_m8541_low_d",
	"rhsusf_acc_m8541_mrds",
	"rhsusf_acc_premier_mrds"

];

//*******************************************************************
switch (_role) do {

default {
	[_box, _genericGear + _riflemanWeaponsAndScopes + [

			
			"rhsusf_iotv_ocp_Rifleman"

		],false] call ace_arsenal_fnc_initBox;
	};

case "Grenadier": {
		[_box, _genericGear + [

			"rhs_weap_M320",
			"rhsusf_iotv_ocp_Grenadier"

		],false] call ace_arsenal_fnc_initBox;
	};

case "TeamLeader": {
		[_box, _genericGear + _riflemanWeaponsAndScopes + [

			"TFAR_rt1523g_big_rhs",
			"rhsusf_acc_anpas13gv1",
			"rhsusf_acc_acog_rmr",
			"rhs_weap_m4a1_m203",
			"Rangefinder",
			"Binocular",
			"rhsusf_iotv_ocp_Squadleader",	
			"rhsusf_iotv_ocp_Teamleader",
			"ACRE_PRC117F",
			"ACRE_PRC152",
			"ACE_HuntIR_monitor",
			"ACE_HuntIR_M203"

		],false] call ace_arsenal_fnc_initBox;
	};

case "JTAC": {
		[_box, _genericGear + _riflemanWeaponsAndScopes + [
			
			"TFAR_rt1523g_big_rhs",
			"rhs_weap_M320",
			"ACE_Vector",
			"Laserdesignator",
			"Binocular",
			"rhsusf_iotv_ocp_Squadleader",	
			"rhsusf_iotv_ocp_Teamleader",
			"ACRE_PRC117F",
			"ACRE_PRC152",
			"ACE_HuntIR_monitor",
			"ACE_HuntIR_M203"

		],false] call ace_arsenal_fnc_initBox;
	};

case "Medic": {
		[_box, _genericGear + _riflemanWeaponsAndScopes + [

			"rhsusf_iotv_ocp_Medic",
			"ACE_elasticBandage",
			"ACE_packingBandage",
			"ACE_quikclot",
			"ACE_epinephrine",	
			"ACE_personalAidKit",	
			"ACE_salineIV_500",
			"ACE_salineIV",
			"ACE_surgicalKit",
			"ACE_bodyBag"

		],false] call ace_arsenal_fnc_initBox;
	};

case "Engineer": {
		[_box, _genericGear + _riflemanWeaponsAndScopes + [

			"rhsusf_iotv_ocp_Repair",
			"ACE_VMH3",
			"ACE_DefusalKit",
			"ToolKit",
			"ACE_M26_Clacker",
			"ACE_Clacker"

		],false] call ace_arsenal_fnc_initBox;
	};
	
case "Machinegunner": {
		[_box, _genericGear + _machinegunnerWeaponsAndScopes + [
			 
			"rhsusf_iotv_ocp_SAW"

		],false] call ace_arsenal_fnc_initBox;
	};
	
case "Marksman": {
		[_box, _genericGear + _marksmanWeaponsAndScopes + [
			
			"rhsusf_iotv_ocp_Rifleman",
			"ACE_RangeCard",
			"ACE_ATragMX",
			"ACE_Kestrel4500",
			"ACE_Vector",
			"ACE_Tripod",
			"ACRE_PRC152"
			
		],false] call ace_arsenal_fnc_initBox;
	};
	
case "Interpreter": {
		[_box, [
			
			"UK3CB_ANA_B_U_CombatUniform_01_GCAM",
			"UK3CB_ANA_B_U_CombatUniform_Shortsleeve_01_GCAM",
			"UK3CB_ANA_B_U_CombatUniform_02_GCAM",
			"UK3CB_ANA_B_U_CombatUniform_Shortsleeve_02_GCAM",
			"UK3CB_ANA_B_V_RFL_Vest_TAN_01",
			"UK3CB_ANA_B_H_MICH_BARE_DES",
			"UK3CB_ANA_B_H_MICH_BARE_DES_Headset",
			"UK3CB_ANA_B_H_OFF_Beret_MAR",
			"UK3CB_ANA_B_B_RIF",
			"G_Aviator",
			"rhs_googles_black",
			"G_Lowprofile",
			"rhs_1PN138",
			"rhs_weap_m4a1_d",
			"rhs_weap_m4a1_d_mstock",
			"rhs_mag_30Rnd_556x45_M855A1_Stanag",
			"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
			"rhsusf_5Rnd_00Buck",
			"rhsusf_5Rnd_Slug",
			"rhsusf_200Rnd_556x45_box",
			"rhsusf_200rnd_556x45_mixed_box",
			"rhsusf_100Rnd_762x51_m61_ap",
			"rhsusf_100Rnd_762x51_m62_tracer",
			"rhsusf_20Rnd_762x51_m993_Mag",
			"rhsusf_5Rnd_762x51_m993_Mag",
			"rhs_mag_M397_HET",
			"rhs_mag_M433_HEDP",
			"rhs_mag_M441_HE",
			"rhs_mag_M585_white",
			"rhs_mag_m661_green",
			"rhs_mag_m662_red",
			"rhs_mag_m713_Red",
			"rhs_mag_m714_White",
			"rhs_mag_m715_Green",
			"rhs_mag_m716_yellow",
			"ACE_M14",
			"rhs_mag_an_m8hc",
			"rhs_mag_m18_green",
			"rhs_mag_m18_purple",
			"rhs_mag_m18_red",
			"rhs_mag_m18_yellow",
			"rhs_mag_m67",
			"rhs_mag_mk84",
			"ACE_HandFlare_Green",
			"ACE_HandFlare_Red",
			"ACE_HandFlare_White",
			"ACE_HandFlare_Yellow",
			"ACE_Chemlight_HiBlue",
			"ACE_Chemlight_HiGreen",
			"ACE_Chemlight_HiRed",
			"ACE_Chemlight_HiWhite",
			"ACE_Chemlight_HiYellow",
			"ACE_Chemlight_IR",
			"B_IR_Grenade",
			"rhsusf_acc_eotech_552_d",
			"rhsusf_acc_acog_d",
			"rhsusf_acc_grip2_tan",
			"rhsusf_acc_rvg_de",
			"rhsusf_acc_tdstubby_tan",
			"rhsusf_acc_grip3_tan",
			"rhsusf_acc_sf3p556",
			"rhsusf_acc_sfmb556",
			"rhsusf_weap_m1911a1",
			"rhsusf_mag_7x45acp_MHP",
			"TFAR_anprc152",
			"ACRE_PRC343",
			"ItemMap",
			"ItemCompass",
			"ACE_Altimeter",
			"ACE_adenosine",
			"ACE_fieldDressing",
			"ACE_quikclot",
			"ACE_CableTie",
			"ACE_EarPlugs",	
			"ACE_IR_Strobe_Item",
			"ACE_MapTools",
			"ACE_morphine",
			"ACE_tourniquet",
			"ACE_microDAGR",
			"ACE_splint",
			"ACE_salineIV_250",
			"ACE_Flashlight_MX991",	
			"ACE_EntrenchingTool",
			"ACE_SpraypaintGreen",
			"ACE_SpraypaintRed",
			"ACE_wirecutter",
			"ACE_Humanitarian_Ration",
			"ACE_WaterBottle"
			
		],false] call ace_arsenal_fnc_initBox;
	};

};



