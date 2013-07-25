// Multi Load-out script for Vehicles.
// Activate from trigger provided in example mission.

//  _truk addMagazineCargoGlobal["ACE_TOW_CSWDM",5]; // Used for adding Tow magazine, if needed by unit in the future.

private ["_loader","_loadouttype","_truk","_truk_type"];

_loader = _this select 0;

if (vehicle _loader == player) exitWith{hint "You're not in a Vehicle!";};

_loadouttype = _this select 3;

_truk = vehicle _loader;

_truk_type = typeof _truk;


// Rifleman Loadout
If (_loadouttype == 1) then
{
    _truk vehicleChat format ["Loading Gear %1... Please Wait...", _truk_type];
    sleep 3;
    _truk addWeaponCargoGlobal["ACE_M136_CSRS",4];
    _truk addWeaponCargoGlobal["ACE_M72A2",8];
    _truk addWeaponCargoGlobal["BAF_L85A2_RIS_ACOG",4];
    _truk addWeaponCargoGlobal["M249",2];  
    _truk addMagazineCargoGlobal["30rnd_556x45_stanag",60];
    _truk addMagazineCargoGlobal["ACE_200Rnd_556x45_T_M249",25];
    _truk addMagazineCargoGlobal["BAF_L109A1_HE",10];
    _truk addMagazineCargoGlobal["ACE_Flashbang",6];
    _truk addMagazineCargoGlobal["smokeshell",8];
    _truk addMagazineCargoGlobal["smokeshellgreen",8];
    _truk addMagazineCargoGlobal["smokeshellred",8];
    _truk addMagazineCargoGlobal["1Rnd_HE_M203",25];
    _truk addMagazineCargoGlobal["1rnd_smokered_m203",10];
    _truk addMagazineCargo ["1Rnd_SmokeGreen_M203", 10];
    _truk addMagazineCargo ["1Rnd_SmokeRed_M203", 10];
    _truk addMagazineCargo ["1Rnd_SmokeYellow_M203", 10];
    _truk addMagazineCargoGlobal["ACE_M2_CSWDM",4];
    _truk addWeaponCargoGlobal["ACE_GlassesGasMask_US",4];
    _truk addWeaponCargoGlobal["ACE_WireCutter",1];
    _truk addWeaponCargoGlobal["ACE_Earplugs",5]; 
    
    _truk vehicleChat format ["Loading Complete %1..", _truk_type];

    hint "Rifleman Gear Loaded";
};

// Mortar Team
If (_loadouttype == 2) then
{
    _truk vehicleChat format ["Loading Gear %1... Please Wait...", _truk_type];
    sleep 3;
    _truk addWeaponCargoGlobal["laserdesignator",1];
    _truk addMagazineCargoGlobal["30rnd_556x45_stanag",30];
    _truk addMagazineCargoGlobal["ACE_M224HE_CSWDM",50];
    _truk addMagazineCargoGlobal["ACE_M224WP_CSWDM",30];
    _truk addMagazineCargoGlobal["ACE_M224IL_CSWDM",30];
    _truk addMagazineCargoGlobal["smokeshell",10];
    _truk addMagazineCargoGlobal["smokeshellgreen",10];
    _truk addMagazineCargoGlobal["smokeshellred",10];
    _truk addMagazineCargoGlobal["ACE_Claymore_M",4];
    _truk addMagazineCargoGlobal["ACE_Battery_Rangefinder",12];
    _truk addWeaponCargoGlobal["binocular",1];
    _truk addWeaponCargoGlobal["ACE_DAGR",1];
    _truk addWeaponCargoGlobal["ACE_Rangefinder_OD",1];
    _truk addWeaponCargoGlobal["ACE_WireCutter",1];
    _truk addMagazineCargoGlobal["ACE_Bandage",10];
    _truk addMagazineCargoGlobal["ACE_Morphine",10];
    _truk addMagazineCargoGlobal["ACE_Epinephrine",10];
    _truk addMagazineCargoGlobal["ACE_Medkit",8];
    _truk addWeaponCargoGlobal["ACE_MX2A",1];
    _truk addWeaponCargoGlobal["ace_arty_rangeTable_m224_legacy",2];
    _truk addWeaponCargoGlobal["ACE_M224TripodProxy",1];
    _truk addWeaponCargoGlobal["ACE_M224Proxy",1];
    _truk addWeaponCargoGlobal["ACE_Earplugs",5];
    
    _truk vehicleChat format ["Loading Complete %1..", _truk_type];

    hint "Mortar Team Gear Loaded";
};

// MG Team
If (_loadouttype == 3) then
{
    _truk vehicleChat format ["Loading Gear %1... Please Wait...", _truk_type];
    sleep 3;
    _truk addWeaponCargoGlobal["ACE_M136_CSRS",4];
    _truk addMagazineCargoGlobal["30rnd_556x45_stanag",50];
    _truk addMagazineCargoGlobal["100Rnd_762x51_M240",25];
    _truk addWeaponCargoGlobal["ACE_GlassesGasMask_US",4];
    _truk addMagazineCargoGlobal["BAF_L109A1_HE",12];
    _truk addMagazineCargoGlobal["smokeshell",12];
    _truk addMagazineCargoGlobal["smokeshellgreen",6];
    _truk addMagazineCargoGlobal["smokeshellred",6];
    _truk addMagazineCargoGlobal["1Rnd_HE_M203",12];
    _truk addMagazineCargoGlobal["1rnd_smokered_m203",6];
    _truk addMagazineCargoGlobal["1rnd_smokegreen_m203",6];
    _truk addMagazineCargoGlobal["1Rnd_SmokeYellow_M203",6];
    _truk addMagazineCargoGlobal["ACE_M2_CSWDM",12];
    _truk addWeaponCargoGlobal["ACE_M240L_M145",2];
    _truk addWeaponCargoGlobal["ACE_SpareBarrel",4];
    _truk addMagazineCargoGlobal["ACE_Claymore_M",4];
    _truk addWeaponCargoGlobal["ACE_WireCutter",1];
    _truk addMagazineCargoGlobal["ACE_Bandage",8];
    _truk addMagazineCargoGlobal["ACE_Morphine",2];
    _truk addMagazineCargoGlobal["ACE_Epinephrine",2];
    _truk addMagazineCargoGlobal["ACE_Medkit",2];
    _truk addWeaponCargoGlobal["Laserdesignator",1];
    _truk addMagazineCargoGlobal["Laserbatteries",1];
    _truk addWeaponCargoGlobal["ACE_Earplugs",5];
    
    _truk vehicleChat format ["Loading Complete %1..", _truk_type];

    hint "MG Team Gear Loaded";
};

// AntiArmor Team
If (_loadouttype == 4) then
{
    _truk vehicleChat format ["Loading Gear %1... Please Wait...", _truk_type];
    sleep 3;
    _truk addMagazineCargoGlobal["30rnd_556x45_stanag",30];
    _truk addWeaponCargoGlobal["ACE_GlassesGasMask_US",4];
    _truk addMagazineCargoGlobal["BAF_L109A1_HE",12];
    _truk addMagazineCargoGlobal["smokeshell",12];
    _truk addMagazineCargoGlobal["smokeshellgreen",6];
    _truk addMagazineCargoGlobal["smokeshellred",6];
    _truk addMagazineCargoGlobal["ACE_C4_M",8];
    _truk addWeaponCargoGlobal["ACE_WireCutter",1];
    _truk addMagazineCargoGlobal["ACE_Bandage",8];
    _truk addMagazineCargoGlobal["ACE_Morphine",10];
    _truk addMagazineCargoGlobal["ACE_Epinephrine",10];
    _truk addMagazineCargoGlobal["ACE_Medkit",5];
    _truk addWeaponCargoGlobal["ACE_Javelin_Direct",10];
    _truk addWeaponCargoGlobal["ACE_Javelin_CLU", 2];
    _truk addWeaponCargoGlobal["ACE_MX2A",1];
    _truk addWeaponCargoGlobal["Laserdesignator",1];
    _truk addMagazineCargoGlobal["Laserbatteries",5];
    _truk addWeaponCargoGlobal["ACE_Earplugs",5];
    _truk addWeaponCargoGlobal["BAF_NLAW_Launcher",8];
    
    _truk vehicleChat format ["Loading Complete %1..", _truk_type];

    hint "AntiArmor Team Gear Loaded";
};

// Medical Team
If (_loadouttype == 5) then
{
    _truk vehicleChat format ["Loading Gear %1... Please Wait...", _truk_type];
    sleep 3;
    _truk addMagazineCargoGlobal["30rnd_556x45_stanag",10];
    _truk addMagazineCargoGlobal["smokeshell",10];
    _truk addMagazineCargoGlobal["smokeshellgreen",10];
    _truk addMagazineCargoGlobal["ACE_Bandage",100];
    _truk addMagazineCargoGlobal["ACE_Morphine",100];
    _truk addMagazineCargoGlobal["ACE_Epinephrine",100];
    _truk addMagazineCargoGlobal["ACE_Medkit",100];
    _truk addMagazineCargoGlobal["ACE_Bodybag",100];
    _truk addWeaponCargoGlobal["ACE_Stretcher",4];
    _truk addMagazineCargoGlobal["ACE_LargeBandage",100];
    _truk addWeaponCargoGlobal["ACE_Earplugs",5];
    
    _truk vehicleChat format ["Loading Complete %1..", _truk_type];

    hint "Medical Team Gear Loaded";
};


// Radio Team
If (_loadouttype == 6) then
{
    _truk vehicleChat format ["Loading Gear %1... Please Wait...", _truk_type];
    sleep 3;
    _truk addWeaponCargoGlobal["ACRE_PRC117F",1];
    _truk addWeaponCargoGlobal["ACRE_PRC119",1];
    _truk addWeaponCargoGlobal["ACRE_PRC148_UHF",5];
    _truk addWeaponCargoGlobal["ACRE_PRC148",5];
    _truk addWeaponCargoGlobal["ACE_Earplugs",5];
    
    _truk vehicleChat format ["Loading Complete %1..", _truk_type];

    hint "Radio Team Gear Loaded";
};
_truk removeaction truckzid1;
_truk removeaction truckzid2;
_truk removeaction truckzid3;
_truk removeaction truckzid4;
_truk removeaction truckzid5;
_truk removeaction truckzid6;
