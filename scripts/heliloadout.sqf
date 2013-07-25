// Multi Load-out script for Vehicles.
// Made for the 15th MEU(SOC) by Oliver.
// Activate from trigger provided in example mission.

//  _truk addMagazineCargoGlobal["ACE_TOW_CSWDM",5]; // Used for adding Tow magazine, if needed by unit in the future.

private ["_loader","_loadouttype","_truk","_truk_type"];

_loader = _this select 0;

if (vehicle _loader == player) exitWith{hint "Your not in a Choppa!";};

_loadouttype = _this select 3;

_truk = vehicle _loader;

_truk_type = typeof _truk;

// Choppa Resupply
If (_loadouttype == 1) then
{
    _truk vehicleChat format ["Loading Gear %1... Please Wait...", _truk_type];
    sleep 3;
    _truk addWeaponCargoGlobal["ACE_M136_CSRS",1];
    _truk addMagazineCargoGlobal["30rnd_9x19_mp5",8];
    _truk addMagazineCargoGlobal["ACE_Bandage",2];
    _truk addMagazineCargoGlobal["ACE_Morphine",2];
    _truk addMagazineCargoGlobal["ACE_Epinephrine",2];
    _truk addMagazineCargoGlobal["ACE_Medkit",2];
    _truk addMagazineCargoGlobal["smokeshell",2];
    _truk addMagazineCargoGlobal["smokeshellgreen",2];
    _truk addMagazineCargoGlobal["PipeBomb", 2];
    _truk addWeaponCargoGlobal["Laserdesignator",1];
    _truk addMagazineCargoGlobal["Laserbatteries",1];
    _truk addWeaponCargoGlobal["mp5a5",2];
    _truk addWeaponCargoGlobal["ACRE_PRC148",2];
    _truk addWeaponCargoGlobal["ACE_PRC119_MAR",1];

    _truk vehicleChat format ["Loading Complete %1..", _truk_type];

    hint "Flight Crew Loadout Complete";
};

_truk removeaction truckzid6;