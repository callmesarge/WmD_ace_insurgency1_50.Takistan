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

// Rifles
// Medical
_this addWeaponCargo ["ACE_Stretcher", 20];
_this addMagazineCargo ["ACE_Bandage", 100];
_this addMagazineCargo ["ACE_LargeBandage", 100]; 
_this addMagazineCargo ["ACE_Epinephrine", 100];
_this addMagazineCargo ["ACE_Medkit", 100]; 
_this addMagazineCargo ["ACE_Morphine", 100]; 
_this addMagazineCargo ["ACE_Bodybag", 100];
sleep 120;
}; 