// NATO 2035 Rifleman Loadout
// File: rifleman.sqf

// Remove all existing items
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Assign uniform and gear
player forceAddUniform "U_B_CombatUniform_mcam";
player addItemToUniform "FirstAidKit";
for "_i" from 1 to 3 do {player addItemToUniform "30Rnd_65x39_caseless_mag";};

player addVest "V_PlateCarrier1_rgr";
for "_i" from 1 to 5 do {player addItemToVest "30Rnd_65x39_caseless_mag";};
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShell";

player addBackpack "B_AssaultPack_mcamo";
player addItemToBackpack "FirstAidKit";
player addItemToBackpack "SmokeShellGreen";

player addHeadgear "H_HelmetB";
player addGoggles "G_Bandanna_oli";

// Assign weapons and attachments
player addWeapon "arifle_MX_F";
player addPrimaryWeaponItem "optic_ACO";
player addPrimaryWeaponItem "acc_pointer_IR";

player addWeapon "hgun_P07_F";
player addHandgunItem "16Rnd_9x21_Mag";

// Assign miscellaneous items
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "NVGoggles";
