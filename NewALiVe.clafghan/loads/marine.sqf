/*
* For loading custom loadouts | Modified by Ogirdor
* You may change/edit all settings
*
*
* in the unit init line put
* this setVariable ['selection', 6];  this setVariable ['selector', 'scriptnamewithout.sqf'];
* Switch out the number (1) with the case number relevant to the role
*
*
* 1: PLATOON SERGEANT
* 2: PLATOON CO
* 3: AUTOMATIC RIFLEMAN
* 4: CREWMAN
* 5: CREW LEADER
* 6: GRENADIER
* 7: MEDIC
* 8: RIFLEMAN
* 9: RTO
* 10: SQUAD LEADER
* 11: TEAM LEADER
* 12: DM
*/
 
//DEFINES VARIABLES
waitUntil {!isNull player};  //Prevent MP / JIP issues

_unit = _this select 0;
_role = _this select 1;


//PRE REMOVAL AND ADDITIONS
removeallweapons _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;
//OG_BASE_ITEMS
		_unit linkItem "ItemWatch";
//OG_BASE_VEST

//OG_BASE_HEADGEAR
		_unit addGoggles "rhs_googles_clear";
 
//SWITCH
switch (_role) do
{
        //PLATOON SERGEANT
        case 1:
        {
                //HINT "Case 1, PLATOON SERGEANT";
				_unit forceAddUniform "rhs_uniform_cu_ocp";
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
					_unit addItemToUniform "ACE_CableTie";
					_unit addItemToUniform "ACE_microDAGR";
					for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
				_unit addVest "rhsusf_iotv_ocp_Teamleader";
					for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
					for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
					for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
					for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
					for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
				_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
					for "_i" from 1 to 1 do {_unit addItemToBackpack "rhsusf_ANPVS_15";};
					for "_i" from 1 to 1 do {_unit addItemToBackpack "ACE_EarPlugs";};
				_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";
				_unit addGoggles "rhs_googles_clear";

				_unit addWeapon "rhs_weap_m4_carryhandle";
				_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
				_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
				_unit addPrimaryWeaponItem "rhsusf_acc_grip3";
				_unit addWeapon "rhsusf_weap_m9";
				_unit addWeapon "ACE_Vector";

				_unit linkItem "ItemMap";
				_unit linkItem "ItemCompass";
				_unit linkItem "tf_anprc148jem";
        };
		//PLATOON CO
        case 2:
        {
                //HINT "Case 2, PLATOON SERGEANT";
				_unit forceAddUniform "rhs_uniform_cu_ocp";
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
					_unit addItemToUniform "ACE_CableTie";
					_unit addItemToUniform "ACE_microDAGR";
					for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
				_unit addVest "rhsusf_iotv_ocp_Teamleader";
					for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
					for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
					for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
					for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
					for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
				_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
					for "_i" from 1 to 1 do {_unit addItemToBackpack "rhsusf_ANPVS_15";};
					for "_i" from 1 to 1 do {_unit addItemToBackpack "ACE_EarPlugs";};
				_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";

				_unit addWeapon "rhs_weap_m4_carryhandle";
				_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
				_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
				_unit addPrimaryWeaponItem "rhsusf_acc_grip3";
				_unit addWeapon "rhsusf_weap_m9";
				_unit addWeapon "ACE_Vector";

				_unit linkItem "ItemMap";
				_unit linkItem "ItemCompass";
				_unit linkItem "tf_anprc148jem";
        };
		//AUTOMATIC RIFLEMAN
        case 3:
        {
				_unit forceAddUniform "rhs_uniform_cu_ocp";
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
					_unit addItemToUniform "ACE_CableTie";
					_unit addItemToUniform "rhs_mag_m67";
				_unit addVest "rhsusf_iotv_ocp_SAW";
					for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
					_unit addItemToVest "rhs_mag_m67";
					for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
					_unit addItemToVest "rhs_200rnd_556x45_M_SAW";
				_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
					for "_i" from 1 to 1 do {_unit addItemToBackpack "rhsusf_ANPVS_15";};
					for "_i" from 1 to 1 do {_unit addItemToBackpack "ACE_EarPlugs";};
					_unit addItemToBackpack "rhs_200rnd_556x45_M_SAW";
				_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";
				_unit addGoggles "rhs_googles_clear";

				_unit addWeapon "rhs_weap_m249_pip_S_para";
				_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
				_unit addPrimaryWeaponItem "RH_ta31rco_2D";
				_unit addWeapon "rhsusf_weap_m9";

				_unit linkItem "ItemMap";
				_unit linkItem "ItemCompass";
				_unit linkItem "tf_anprc148jem";
        };
		//CREWMAN
        case 4:
        {
                //HINT "Case 4, CREWMAN";
				_unit forceAddUniform "rhs_uniform_cu_ocp";
					_unit addItemToUniform "rhsusf_ANPVS_15";
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
					_unit addItemToUniform "ACE_CableTie";
				_unit addVest "rhsusf_spcs_ocp";
					for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
					for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
					for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
					for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
				_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";
				_unit addGoggles "rhs_googles_clear";

				_unit addWeapon "rhs_weap_m4_carryhandle";
				_unit addWeapon "rhsusf_weap_m9";
				_unit addWeapon "Binocular";

				_unit linkItem "ItemMap";
				_unit linkItem "ItemCompass";
				_unit linkItem "tf_anprc148jem";
        };
		//CREW LEADER
        case 5:
        {
                //HINT "Case 5, CREW LEADER";
				_unit forceAddUniform "rhs_uniform_cu_ocp";
				_unit addItemToUniform "rhsusf_ANPVS_15";
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
					_unit addItemToUniform "ACE_CableTie";
				_unit addVest "rhsusf_spcs_ocp";
					for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
					for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
					for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
					for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
				_unit addBackpack "tfw_ilbe_coy";
					for "_i" from 1 to 1 do {_unit addItemToBackpack "rhsusf_ANPVS_15";};
					for "_i" from 1 to 1 do {_unit addItemToBackpack "ACE_EarPlugs";};
				_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";
				_unit addGoggles "rhs_googles_clear";

				_unit addWeapon "rhs_weap_m4_carryhandle";
				_unit addWeapon "Binocular";

				_unit linkItem "ItemMap";
				_unit linkItem "ItemCompass";
				_unit linkItem "tf_anprc148jem";
        };
		//GRENADIER
        case 6:
        {
                //HINT "Case 6, TEAM LEADER/GRENADIER";
				_unit forceAddUniform "rhs_uniform_cu_ocp";
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
					for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
					_unit addItemToUniform "ACE_CableTie";
				_unit addVest "rhsusf_iotv_ocp_Grenadier";
					for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
					for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
					for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
					for "_i" from 1 to 3 do {_unit addItemToVest "1Rnd_HE_Grenade_shell";};
					for "_i" from 1 to 2 do {_unit addItemToVest "1Rnd_Smoke_Grenade_shell";};
					for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
					for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
				_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
					for "_i" from 1 to 1 do {_unit addItemToBackpack "rhsusf_ANPVS_15";};
					for "_i" from 1 to 1 do {_unit addItemToBackpack "ACE_EarPlugs";};
					for "_i" from 1 to 19 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};
					for "_i" from 1 to 5 do {_unit addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
				_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";
				_unit addGoggles "rhs_googles_clear";

				_unit addWeapon "rhs_weap_m4_m203";
				_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
				_unit addPrimaryWeaponItem "RH_ta31rco_2D";
				_unit addWeapon "rhsusf_weap_m9";

				_unit linkItem "ItemMap";
				_unit linkItem "ItemCompass";
				_unit linkItem "tf_anprc148jem";
        };
		//MEDIC
        case 7:
        {
                //HINT "Case 7, AUTOMATIC RIFLEMAN (M27)";
				_unit forceAddUniform "rhs_uniform_cu_ocp";
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
					for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
					_unit addItemToUniform "rhs_mag_m67";
					_unit addItemToUniform "ACE_CableTie";
				_unit addVest "rhsusf_iotv_ocp_Medic";
					for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
					for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
					for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
					_unit addItemToVest "rhs_mag_m67";
					for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
				_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
					for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_fieldDressing";};
					for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_quikclot";};
					for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_elasticBandage";};
					for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_packingBandage";};
					for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_morphine";};
					for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_epinephrine";};
					for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_salineIV";};
					for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_salineIV_500";};
					for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_salineIV_250";};
					for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_tourniquet";};
					for "_i" from 1 to 1 do {_unit addItemToBackpack "rhsusf_ANPVS_15";};
					for "_i" from 1 to 1 do {_unit addItemToBackpack "ACE_EarPlugs";};
				_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";	
				_unit addGoggles "rhs_googles_clear";

				_unit addWeapon "rhs_weap_m4_carryhandle";
				_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
				_unit addPrimaryWeaponItem "RH_ta31rco_2D";
				_unit addPrimaryWeaponItem "rhsusf_acc_grip3";
				_unit addWeapon "rhsusf_weap_m9";

				_unit linkItem "ItemMap";
				_unit linkItem "ItemCompass";
				_unit linkItem "tf_anprc148jem";
        };
		//RIFLEMAN
        case 8:
        {
                //HINT "Case 8, RIFLEMAN";
				_unit forceAddUniform "rhs_uniform_cu_ocp";
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
					for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
					_unit addItemToUniform "rhsusf_ANPVS_15";
					_unit addItemToUniform "ACE_EarPlugs";
					_unit addItemToUniform "rhs_mag_m67";
					_unit addItemToUniform "ACE_CableTie";
				_unit addVest "rhsusf_iotv_ocp_Rifleman";
					for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
					for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
					for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
					_unit addItemToVest "rhs_mag_m67";
					for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
				_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";
				_unit addGoggles "rhs_googles_clear";

				_unit addWeapon "rhs_weap_m4_carryhandle";
				_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
				_unit addPrimaryWeaponItem "RH_ta31rco_2D";
				_unit addPrimaryWeaponItem "rhsusf_acc_grip3";
				_unit addWeapon "rhsusf_weap_m9";

				_unit linkItem "ItemMap";
				_unit linkItem "ItemCompass";
				_unit linkItem "tf_anprc148jem";
        };
		//RTO
        case 9:
        {
                //HINT "Case 9, RTO";
				_unit forceAddUniform "rhs_uniform_cu_ocp";
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
					_unit addItemToUniform "ACE_CableTie";
				_unit addVest "rhsusf_iotv_ocp_Teamleader";
					for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
					for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
					for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
					for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
					for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
				_unit addBackpack "tfw_ilbe_coy";
					for "_i" from 1 to 1 do {_unit addItemToBackpack "rhsusf_ANPVS_15";};
					for "_i" from 1 to 1 do {_unit addItemToBackpack "ACE_EarPlugs";};
				_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";

				_unit addWeapon "rhs_weap_m4_carryhandle";
				_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
				_unit addPrimaryWeaponItem "RH_ta31rco_2D";
				_unit addPrimaryWeaponItem "rhsusf_acc_grip3";
				_unit addWeapon "rhsusf_weap_m9";
				_unit addWeapon "Binocular";

				_unit linkItem "ItemMap";
				_unit linkItem "ItemCompass";
				_unit linkItem "tf_anprc148jem";
        };
		//SQUAD LEADER
        case 10:
        {
                //HINT "Case 10, SQUAD LEADER";
				_unit forceAddUniform "rhs_uniform_cu_ocp";
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
					_unit addItemToUniform "ACE_microDAGR";
					_unit addItemToUniform "ACE_CableTie";
					for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
				_unit addVest "rhsusf_iotv_ocp_Teamleader";
					for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
					for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
					for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
					for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m67";};
					for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
				_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
					for "_i" from 1 to 1 do {_unit addItemToBackpack "rhsusf_ANPVS_15";};
					for "_i" from 1 to 1 do {_unit addItemToBackpack "ACE_EarPlugs";};
				_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";
				_unit addGoggles "rhs_googles_yellow";

				_unit addWeapon "rhs_weap_m4_carryhandle";
				_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
				_unit addPrimaryWeaponItem "RH_ta31rco_2D";
				_unit addPrimaryWeaponItem "rhsusf_acc_grip3";
				_unit addWeapon "rhsusf_weap_m9";
				_unit addWeapon "Binocular";

				_unit linkItem "ItemMap";
				_unit linkItem "ItemCompass";
				_unit linkItem "tf_anprc148jem";
		};
		//TEAM LEADER
        case 11:
        {
                //HINT "Case 11, TEAM LEADER";
				_unit forceAddUniform "rhs_uniform_cu_ocp";
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
					for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
					_unit addItemToUniform "ACE_EarPlugs";
					_unit addItemToUniform "ACE_CableTie";
					_unit addItemToUniform "rhs_mag_m67";
				_unit addVest "rhsusf_iotv_ocp_Teamleader";
					for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
					for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
					for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
					_unit addItemToVest "rhs_mag_m67";
					_unit addItemToVest "rhsusf_ANPVS_15";
					for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
				_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";

				_unit addWeapon "rhs_weap_m4_carryhandle";
				_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
				_unit addPrimaryWeaponItem "RH_ta31rco_2D";
				_unit addPrimaryWeaponItem "rhsusf_acc_grip3";
				_unit addWeapon "rhsusf_weap_m9";
				_unit addWeapon "Binocular";

				_unit linkItem "ItemMap";
				_unit linkItem "ItemCompass";
				_unit linkItem "tf_anprc148jem";
        };
		//DM
        case 12:
        {
                //HINT "Case 12, DM";
				_unit forceAddUniform "rhs_uniform_cu_ocp";
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
					for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
					_unit addItemToUniform "rhsusf_20Rnd_762x51_m118_special_Mag";
					_unit addItemToUniform "rhs_mag_m67";
					_unit addItemToUniform "ACE_CableTie";
				_unit addVest "rhsusf_iotv_ocp_Rifleman";
					for "_i" from 1 to 4 do {_unit addItemToVest "rhsusf_20Rnd_762x51_m118_special_Mag";};
					for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
					_unit addItemToVest "rhs_mag_m67";
					for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
				_unit addBackpack "rhsusf_assault_eagleaiii_ocp";
					for "_i" from 1 to 3 do {_unit addItemToBackpack "rhsusf_ANPVS_15";};
					for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_EarPlugs";};
					for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_RangeCard";};
					for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_Kestrel4500";};
					_unit addItemToBackpack "ACE_Tripod";
					_unit addItemToBackpack "ACE_SpottingScope";
				_unit addHeadgear "rhsusf_ach_helmet_headset_ocp";

comment "Add weapons";
				_unit addWeapon "rhs_weap_sr25";
				_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
				_unit addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4_2";
				_unit addPrimaryWeaponItem "RH_HBLM";
				_unit addWeapon "rhsusf_weap_m9";
				_unit addWeapon "ACE_Vector";

comment "Add items";
				_unit linkItem "ItemMap";
				_unit linkItem "ItemCompass";
				_unit linkItem "tf_anprc148jem";
        };
        default {hint "Script Error, Variable does not exist"};
};
