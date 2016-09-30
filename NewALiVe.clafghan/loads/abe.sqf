/*
* For loading custom loadouts | Modified by Ogirdor
* You may change/edit all settings
*
*
* in the unit init line put
* null = [this,1] execVM "loads\lovat.sqf"; this addeventhandler ["respawn","[_this select 0,1] execVM 'loads\lovat.sqf'"]; 
* Switch out the number (1) with the case number relevant to the role
* Make sure there is a folder in your missions folder named loads or alternatively get rid of the loads\ line and have the gear script in the main folder
* 
* 1: Team Leader, Squad Leader, Platoon Command
* 2: Rifleman
* 3: Grenadier
* 4: Automatic Rifleman
* 7: PKM Gunner
* 8: PKM No.2
* 11: CMT
*/

//Defines Variables
waitUntil {!isNull player};  //Prevent MP / JIP issues

_unit = _this select 0;
_role = _this select 1;


//Pre-Removal and Additions
removeallweapons _unit;
removeAllAssignedItems _unit;
removeBackpack _unit;
removeVest _unit;
removeUniform _unit;
removeHeadGear _unit;
//_unit addWeapon "ItemMap";
_unit addWeapon "ItemCompass";
//_unit addItem "NVGoggles";


//Switch hands out weapons and equipment based on role
switch (_role) do 
{ 
	//Leadership
	case 1: 
	{
		//HINT "Case 1, Leadership"; 
		//MAIN CONTAINERS
		_unit forceAddUniform "rhs_uniform_cu_ocp_82nd";
			for "_i" from 1 to 2 do {_unit addItemToUniform "RH_15Rnd_9x19_M9";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_packingBandage";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_quikclot";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_MapTools";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_microDAGR";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_EarPlugs";};
		
		//VEST
		_unit addVest "rhsusf_iotv_ocp_Teamleader";
			for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 1 do {_unit addItemToVest "Binocular";};
		_unit addItemToVest "SmokeShellGreen";
		_unit addItemToVest "Chemlight_red";
		_unit addItemToVest "Chemlight_yellow";
		_unit addItemToVest "Chemlight_blue";

		//BACKPACK
		_unit addBackpack "tfw_ilbe_coy";
			for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_Clacker";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_DefusalKit";};
			for "_i" from 1 to 1 do {_unit addItemToBackpack "AV_ESS_blk_clr";};
		_unit addItemToBackpack "rhsusf_ANPVS_15";

		_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";
		_unit addGoggles "rhs_googles_clear";
		

		//WEAPONS
		_unit addWeapon "rhs_weap_m4_carryhandle_pmag";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
		_unit addPrimaryWeaponItem "rhsusf_acc_ACOG3";
		_unit addWeapon "RH_m9";
		_unit addWeapon "ACE_Vector";

		//ITEMS
		_unit linkItem "tf_anprc152";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";

	};
	//Rifleman
	case 2: 
	{
		//HINT "Case 2, Rifleman"; 
		//MAIN CONTAINERS
		_unit forceAddUniform "rhs_uniform_cu_ocp_82nd";
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_packingBandage";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_quikclot";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_MapTools";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_microDAGR";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_EarPlugs";};
		
		//VEST
		_unit addVest "rhsusf_iotv_ocp_Rifleman";
			for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 1 do {_unit addItemToVest "Binocular";};
		_unit addItemToVest "SmokeShellGreen";
		_unit addItemToVest "Chemlight_red";
		_unit addItemToVest "Chemlight_yellow";
		_unit addItemToVest "Chemlight_blue";

		//BACKPACK
		_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 1 do {_unit addItemToBackpack "AV_ESS_blk_clr";};
		_unit addItemToBackpack "rhsusf_ANPVS_15";
		_unit addItemToBackpack "rhs_m136_mag";

		_unit addHeadgear "rhsusf_ach_helmet_camo_ocp";
		_unit addGoggles "rhs_googles_clear";
		

		//WEAPONS
		_unit addWeapon "rhs_weap_m4_grip";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
		_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
		_unit addWeapon "rhs_weap_M136_hedp";

		//ITEMS
		_unit linkItem "tf_anprc152";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";

	};
	//Grenadier
	case 3: 
	{
		//HINT "Case 3, Grenadier"; 
		//MAIN CONTAINERS
		_unit forceAddUniform "rhs_uniform_cu_ocp_82nd";
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_packingBandage";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_quikclot";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_MapTools";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_microDAGR";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_EarPlugs";};
		
		//VEST
		_unit addVest "rhsusf_iotv_ocp_Grenadier";
			for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 5 do {_unit addItemToVest "1Rnd_HE_Grenade_shell";};
			for "_i" from 1 to 2 do {_unit addItemToVest "UGL_FlareWhite_F";};
			for "_i" from 1 to 2 do {_unit addItemToVest "UGL_FlareCIR_F";};
			for "_i" from 1 to 2 do {_unit addItemToVest "1Rnd_SmokeRed_Grenade_shell";};
			for "_i" from 1 to 1 do {_unit addItemToVest "Binocular";};
		_unit addItemToVest "SmokeShellGreen";
		_unit addItemToVest "Chemlight_red";
		_unit addItemToVest "Chemlight_yellow";
		_unit addItemToVest "Chemlight_blue";

		//BACKPACK
		_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 4 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "UGL_FlareWhite_F";};
			for "_i" from 1 to 1 do {_unit addItemToBackpack "AV_ESS_blk_clr";};
		_unit addItemToBackpack "rhsusf_ANPVS_15";

		_unit addHeadgear "rhsusf_ach_helmet_camo_ocp";
		_unit addGoggles "rhs_googles_clear";

		//WEAPONS
		_unit addWeapon "rhs_weap_m4_m203";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
		_unit addPrimaryWeaponItem "RH_ta31rco_2D";

		//ITEMS
		_unit linkItem "tf_anprc152";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";

	};
	//Automatic Rifleman
	case 4: 
	{
		//HINT "Case 4, Automatic Rifleman"; 
		//MAIN CONTAINERS
		_unit forceAddUniform "rhs_uniform_cu_ocp_82nd";
			for "_i" from 1 to 2 do {_unit addItemToUniform "RH_15Rnd_9x19_M9";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_packingBandage";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_quikclot";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_MapTools";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_EarPlugs";};
		
		//VEST
		_unit addVest "rhsusf_iotv_ocp_SAW";
			for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_100Rnd_556x45_soft_pouch";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 1 do {_unit addItemToVest "Binocular";};
		_unit addItemToVest "SmokeShellGreen";
		_unit addItemToVest "Chemlight_red";
		_unit addItemToVest "Chemlight_yellow";
		_unit addItemToVest "Chemlight_blue";

		//BACKPACK
		_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			for "_i" from 1 to 3 do {_unit addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";};
			for "_i" from 1 to 1 do {_unit addItemToBackpack "AV_ESS_blk_clr";};
		_unit addItemToBackpack "rhsusf_ANPVS_15";

		_unit addHeadgear "rhsusf_ach_helmet_ocp";
		_unit addGoggles "rhs_googles_clear";

		//WEAPONS
		_unit addWeapon "rhs_weap_m249_pip_L";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
		_unit addWeapon "RH_m9";

		//ITEMS
		_unit linkItem "tf_anprc152";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";


	};
	//HMG Gunner
	case 5: 
	{
		//HINT "Case 5, HMG Gunner"; 
		//MAIN CONTAINERS
		_unit forceAddUniform "rhs_uniform_cu_ocp_82nd";
			for "_i" from 1 to 2 do {_unit addItemToUniform "RH_15Rnd_9x19_M9";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_packingBandage";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_quikclot";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_MapTools";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_EarPlugs";};
		
		//VEST
		_unit addVest "rhsusf_iotv_ocp_SAW";
			for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_100Rnd_762x51";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		_unit addItemToVest "SmokeShellGreen";
		_unit addItemToVest "Chemlight_red";
		_unit addItemToVest "Chemlight_yellow";
		_unit addItemToVest "Chemlight_blue";

		//BACKPACK
		_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			for "_i" from 1 to 4 do {_unit addItemToBackpack "rhsusf_100Rnd_762x51";};
			for "_i" from 1 to 1 do {_unit addItemToBackpack "AV_ESS_blk_clr";};
		_unit addItemToBackpack "rhsusf_ANPVS_15";

		_unit addHeadgear "rhsusf_ach_helmet_camo_ocp";
		_unit addGoggles "rhs_googles_clear";

		//WEAPONS
		_unit addWeapon "rhs_weap_m240B";
		_unit addWeapon "RH_m9";

		//ITEMS
		_unit linkItem "tf_anprc152";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";

	};
	//HMG Gunner No.2
	case 6: 
	{
		//HINT "Case 6, HMG Gunner No.2"; 
		//MAIN CONTAINERS
		_unit forceAddUniform "rhs_uniform_cu_ocp_82nd";
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_packingBandage";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_quikclot";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_MapTools";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_EarPlugs";};
		
		//VEST
		_unit addVest "rhsusf_iotv_ocp_SAW";
			for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 1 do {_unit addItemToVest "Binocular";};
		_unit addItemToVest "SmokeShellGreen";
		_unit addItemToVest "Chemlight_red";
		_unit addItemToVest "Chemlight_yellow";
		_unit addItemToVest "Chemlight_blue";

		//BACKPACK
		_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 3 do {_unit addItemToBackpack "rhsusf_100Rnd_762x51";};
			for "_i" from 1 to 1 do {_unit addItemToBackpack "AV_ESS_blk_clr";};
		_unit addItemToBackpack "rhsusf_ANPVS_15";
		_unit addItemToBackpack "rhsusf_acc_ACOG";

		_unit addHeadgear "rhsusf_ach_helmet_ocp";
		_unit addGoggles "rhs_googles_clear";

		//WEAPONS
		_unit addWeapon "rhs_weap_m4a1_carryhandle_grip";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
		_unit addPrimaryWeaponItem "RH_ta31rco_2D";
		_unit addWeapon "ACE_Vector";

		//ITEMS
		_unit linkItem "tf_anprc152";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";

	};
	//CMT
	case 7: 
	{
		//HINT "Case 7, CMT"; 
		//MAIN CONTAINERS
		_unit forceAddUniform "rhs_uniform_cu_ocp_82nd";
			for "_i" from 1 to 2 do {_unit addItemToUniform "RH_15Rnd_9x19_M9";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_packingBandage";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_quikclot";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_MapTools";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_EarPlugs";};
		
		//VEST
		_unit addVest "rhsusf_iotv_ocp_Medic";
			for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 8 do {_unit addItemToVest "ACE_elasticBandage";};
		_unit addItemToVest "SmokeShellGreen";
		_unit addItemToVest "Chemlight_red";
		_unit addItemToVest "ACE_surgicalKit";
		_unit addItemToVest "Chemlight_blue";

		//BACKPACK
		_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_quikclot";};
			for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_salineIV";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_salineIV_500";};
			for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_salineIV_250";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_epinephrine";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_atropine";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_morphine";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_tourniquet";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_elasticBandage";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_packingBandage";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_fieldDressing";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "Chemlight_yellow";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m18_red";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m18_purple";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m18_yellow";};
		_unit addItemToBackpack "rhsusf_ANPVS_15";
		_unit addItemToBackpack "AV_ESS_blk_clr";

		_unit addHeadgear "rhsusf_ach_helmet_ocp";
		_unit addGoggles "rhs_googles_clear";

		//WEAPONS
		_unit addWeapon "rhs_weap_m4";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
		_unit addPrimaryWeaponItem "RH_ta31rco_2D";
		_unit addWeapon "RH_m9";

		//ITEMS
		_unit linkItem "tf_anprc152";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";

	};
	//Combat Engineer
	case 8: 
	{
		//HINT "Case 7, Combat Engineer"; 
		//MAIN CONTAINERS
		_unit forceAddUniform "rhs_uniform_cu_ocp_82nd";
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_packingBandage";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_quikclot";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_MapTools";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_EarPlugs";};
		
		//VEST
		_unit addVest "rhsusf_iotv_ocp_Repair";
			for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 1 do {_unit addItemToVest "Binocular";};
		_unit addItemToVest "SmokeShellGreen";
		_unit addItemToVest "Chemlight_red";
		_unit addItemToVest "Chemlight_yellow";
		_unit addItemToVest "Chemlight_blue";
		//BACKPACK

		_unit addBackpack "B_Kitbag_mcamo";
			for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_Clacker";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_DefusalKit";};
			for "_i" from 1 to 1 do {_unit addItemToBackpack "AV_ESS_blk_clr";};
		_unit addItemToBackpack "rhsusf_ANPVS_15";

		_unit addHeadgear "rhsusf_ach_helmet_ocp";
		_unit addGoggles "rhs_googles_clear";

		//WEAPONS
		_unit addWeapon "rhs_weap_m4_carryhandle_pmag";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
		_unit addPrimaryWeaponItem "RH_ta31rco_2D";
		_unit addWeapon "EODS_Detector_Weapon";

		//ITEMS
		_unit linkItem "tf_anprc152";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";

	};
	
	case 9: 
	{
		//HINT "Case 9, Combat Engineer"; 
		//MAIN CONTAINERS
		_unit forceAddUniform "rhs_uniform_cu_ocp_82nd";
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_packingBandage";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_quikclot";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_MapTools";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
			for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_EarPlugs";};
		
		//VEST
		_unit addVest "rhsusf_iotv_ocp_Repair";
			for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
			for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
			for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
			for "_i" from 1 to 1 do {_unit addItemToVest "Binocular";};
		_unit addItemToVest "SmokeShellGreen";
		_unit addItemToVest "rhsusf_ANPVS_15";
		_unit addItemToVest "Chemlight_red";
		_unit addItemToVest "Chemlight_yellow";
		_unit addItemToVest "Chemlight_blue";
		//BACKPACK

		_unit addBackpack "EODS_THORIII_LOW_OCP";

		_unit addHeadgear "rhsusf_ach_helmet_ocp";
		_unit addGoggles "rhs_googles_clear";

		//WEAPONS
		_unit addWeapon "rhs_weap_m4_carryhandle_pmag";
		_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
		_unit addPrimaryWeaponItem "RH_ta31rco_2D";
		_unit addWeapon "EODS_Detector_Weapon";

		//ITEMS
		_unit linkItem "tf_anprc152";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";

	};
	default {hint "Script Error, Variable does not exist"}; 
};
