                                                /////////////////////////////////////////////////////
// Called from an ammocrate's init field via:
// null = this execVM "ammo-oaw.sqf";
/////////////////////////////////////////////////////

while {alive _this} do
{

// Remove the stock items from the crate
clearMagazineCargo _this;
clearWeaponCargo _this;

/////////////////////////////////////////////////////
// WEAPONS
/////////////////////////////////////////////////////
//Artillery
_this addMagazineCargo ["ACE_M252HE_CSWDM", 100]; 
_this addMagazineCargo ["ACE_M252WP_CSWDM", 100];  
_this addMagazineCargo ["ACE_M252IL_CSWDM", 100]; 
_this addWeaponCargo ["ACE_M252TripodProxy",100];
_this addWeaponCargo ["ACE_M252Proxy",10];
_this addWeaponCargo ["ace_arty_rangeTable_m252_legacy",50];
_this addWeaponCargo ["ACE_Map_Tools",50];
_this addWeaponCargo ["Binocular_Vector",50];
_this addMagazineCargo ["ACE_Battery_Rangefinder",50];


// Ropes
_this addMagazineCargo ["ACE_Rope_M", 20];
_this addMagazineCargo ["ACE_Rope_M_120", 20];
_this addMagazineCargo ["ACE_Rope_M_50", 20];
_this addMagazineCargo ["ACE_Rope_M_60", 20];
_this addMagazineCargo ["ACE_Rope_M_90", 20];
_this addMagazineCargo ["ACE_Rope_M5", 20];

//CSW

_this addMagazineCargo ["ACE_M2_CSWDM", 100];

// Restock time.
sleep 1800;
}; 