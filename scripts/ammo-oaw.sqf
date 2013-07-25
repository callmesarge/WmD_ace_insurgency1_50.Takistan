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
_this addWeaponCargo ["ACE_M14_ACOG", 30];
_this addWeaponCargo ["m16a4", 30];
_this addWeaponCargo ["ACE_M16A4_ACG_GL_UP", 30];
_this addWeaponCargo ["ACE_M16A4_Iron", 30];
_this addWeaponCargo ["ACE_M16A4_EOT_GL", 30];
_this addWeaponCargo ["m16a4_acg", 30];	
_this addWeaponCargo ["ACE_M16A4_EOT", 30];
_this addWeaponCargo ["ACE_M16A4_CCO_GL", 30];
_this addWeaponCargo ["M4A1", 30];
_this addWeaponCargo ["M4A3_RCO_GL_EP1", 30];
_this addWeaponCargo ["M4A3_CCO_EP1", 30];
_this addWeaponCargo ["ACE_M4_Eotech", 30];  
_this addWeaponCargo ["ACE_M4_ACOG", 30];  
_this addWeaponCargo ["ACE_M4_AIM_GL_UP_F", 30]; 
_this addWeaponCargo ["ACE_SOC_M4A1_RCO_GL", 30]; 
_this addWeaponCargo ["ACE_M4_Eotech_GL", 30];
_this addWeaponCargo ["ACE_SOC_M4A1_Eotech_F", 30]; 
_this addWeaponCargo ["ACE_M4_ACOG_PVS14", 30]; 

_this addWeaponCargo ["SCAR_L_STD_EGLM_RCO", 30];
_this addWeaponCargo ["SCAR_L_STD_EGLM_TWS", 30];
_this addWeaponCargo ["SCAR_L_STD_HOLO", 30];
_this addWeaponCargo ["SCAR_L_STD_Mk4CQT", 30];
_this addWeaponCargo ["SCAR_H_STD_EGLM_Spect", 30];
_this addWeaponCargo ["SCAR_H_LNG_Sniper", 30];
_this addWeaponCargo ["ACE_SCAR_H_STD_Spect", 30];  


_this addWeaponCargo ["ACE_M27_IAR_ACOG", 30];
_this addWeaponCargo ["ACE_M27_IAR", 30];
_this addWeaponCargo ["ACE_M27_IAR_CCO", 30];


//Shotguns
_this addWeaponCargo ["ACE_M1014_Eotech", 30];
_this addWeaponCargo ["M1014", 30];
_this addWeaponCargo ["ACE_SPAS12", 30];	


// Machineguns (LMG & GPMG)
_this addWeaponCargo ["ACE_M249_AIM", 20];
_this addWeaponCargo ["ACE_M249_PIP_ACOG", 20]; 
_this addWeaponCargo ["ACE_M240L", 20];  
_this addWeaponCargo ["ACE_M240L_M145", 20];


// Sniper rifles
_this addWeaponCargo ["m107", 10];
_this addWeaponCargo ["ACE_TAC50", 10];
_this addWeaponCargo ["M110_TWS_EP1", 10];
_this addWeaponCargo ["M110_NVG_EP1", 10];
_this addWeaponCargo ["DMR", 10];
_this addWeaponCargo ["M40A3", 10]; 

// Sidearm
_this addWeaponCargo ["M9", 50];
_this addWeaponCargo ["M9SD", 50];
_this addWeaponCargo ["Colt1911", 50];


// AT & AA
_this addWeaponCargo ["ACE_Javelin_Direct", 30];
_this addWeaponCargo ["Stinger", 20];
_this addWeaponCargo ["ACE_M72A2", 100]; 
_this addWeaponCargo ["ACE_M136_CSRS", 60];  
_this addWeaponCargo ["SMAW", 30]; 

// Grenade Launchers
_this addWeaponCargo ["M79_EP1", 20];
_this addWeaponCargo ["Mk13_EP1", 20];
_this addWeaponCargo ["M32_EP1", 10];


/////////////////////////////////////////////////////
// AMMO
/////////////////////////////////////////////////////

// Rifle ammo
_this addMagazineCargo ["20Rnd_762x51_DMR", 150];
_this addMagazineCargo ["20Rnd_762x51_B_SCAR", 100];
_this addMagazineCargo ["20Rnd_762x51_SB_SCAR", 100];
_this addMagazineCargo ["ACE_30Rnd_556x45_SB_Stanag", 200];
_this addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag", 200];


//Shotgun ammo
_this addMagazineCargo ["ACE_8Rnd_12Ga_Buck00", 200]; 
_this addMagazineCargo ["ACE_8Rnd_12Ga_Slug", 100]; 

// LMG ammo
_this addMagazineCargo ["100Rnd_762x51_M240", 150];
_this addMagazineCargo ["ACE_100Rnd_556x45_T_M249", 200];  
_this addMagazineCargo ["ACE_200Rnd_556x45_T_M249", 200]; 
  

// Sniper Rifle ammo
_this addMagazineCargo ["ACE_5Rnd_127x99_B_TAC50", 100];
_this addMagazineCargo ["ACE_10Rnd_127x99_Raufoss_m107", 100];
_this addMagazineCargo ["ACE_20Rnd_762x51_SB_M110", 100];
_this addMagazineCargo ["5Rnd_762x51_M24", 100];
_this addMagazineCargo ["20Rnd_762x51_DMR", 100];
   

// Sidearm ammo
_this addMagazineCargo ["15Rnd_9x19_M9", 100];
_this addMagazineCargo ["15Rnd_9x19_M9SD", 100];
_this addMagazineCargo ["7Rnd_45ACP_1911", 100];




// M203 ammo
_this addMagazineCargo ["1Rnd_HE_M203", 200];
_this addMagazineCargo ["1Rnd_Smoke_M203", 100];
_this addMagazineCargo ["1Rnd_SmokeGreen_M203", 100];
_this addMagazineCargo ["1Rnd_SmokeRed_M203", 100];
_this addMagazineCargo ["1Rnd_SmokeYellow_M203", 100];
_this addMagazineCargo ["FlareGreen_M203", 100];
_this addMagazineCargo ["FlareRed_M203", 100];
_this addMagazineCargo ["FlareWhite_M203", 100];
_this addMagazineCargo ["FlareYellow_M203", 100];
_this addMagazineCargo ["ACE_SSGreen_M203", 100];
_this addMagazineCargo ["ACE_SSRed_M203", 100];
_this addMagazineCargo ["ACE_SSYellow_M203", 100];   
_this addMagazineCargo ["ACE_SSGreen_FG", 100];  
_this addMagazineCargo ["ACE_SSRed_FG", 100];
_this addMagazineCargo ["ACE_SSWhite_FG", 100];
_this addMagazineCargo ["ACE_SSYellow_FG", 100];  
_this addMagazineCargo ["ACE_FlareIR_M203", 100];
_this addMagazineCargo ["6Rnd_HE_M203", 100];
_this addMagazineCargo ["6Rnd_FlareGreen_M203", 100];
_this addMagazineCargo ["6Rnd_FlareRed_M203", 100];
_this addMagazineCargo ["6Rnd_FlareWhite_M203", 100];
_this addMagazineCargo ["6Rnd_FlareYellow_M203", 100];
_this addMagazineCargo ["6Rnd_HE_M203", 100];
_this addMagazineCargo ["6Rnd_Smoke_M203", 100];
_this addMagazineCargo ["6Rnd_SmokeGreen_M203", 100];
_this addMagazineCargo ["6Rnd_SmokeRed_M203", 100];
_this addMagazineCargo ["6Rnd_SmokeYellow_M203", 100];

// AT & AA ammo
_this addMagazineCargo ["Stinger", 100];
_this addMagazineCargo ["ACE_SMAW_NE", 100];
_this addMagazineCargo ["SMAW_HEAA", 100];
_this addMagazineCargo ["ACE_SMAW_Spotting, 100"];
_this addMagazineCargo ["SMAW_HEDP", 100];


// Items
_this addWeaponCargo ["Binocular", 50];
_this addWeaponCargo ["Binocular_Vector", 50];
_this addWeaponCargo ["NVGoggles", 50];
_this addMagazineCargo ["ACE_Battery_Rangefinder", 100];
_this addWeaponCargo ["ItemGPS", 100];
_this addWeaponCargo ["LaserDesignator", 20];
_this addMagazineCargo ["LaserBatteries", 30];
_this addWeaponCargo ["ACE_Earplugs", 100];
_this addWeaponCargo ["ACE_GlassesLHD_glasses", 100];
_this addWeaponCargo ["ACE_GlassesTactical", 50];
_this addWeaponCargo ["ACE_GlassesSunglasses", 50];
_this addWeaponCargo ["ACE_Earplugs", 100];
_this addMagazineCargo ["ACE_VS17Panel_M",50];
_this addWeaponCargo ["ACE_DAGR", 50];
_this addWeaponCargo ["ACE_KeyCuffs", 50];  
_this addWeaponCargo ["ACE_Map_Tools", 20];
_this addWeaponCargo ["ACE_SpareBarrel", 20];  
_this addWeaponCargo ["ACE_SpottingScope", 20];
_this addWeaponCargo ["ACE_WireCutter", 20];
_this addWeaponCargo ["ACE_Kestrel4500", 20];
_this addWeaponCargo ["ACE_MX2A", 20];  
_this addWeaponCargo ["ACE_YardAge450", 30];
_this addWeaponCargo ["ACE_Javelin_CLU", 10];
_this addWeaponCargo ["ACE_Map", 100];


// Grenades & Satchels

_this addMagazineCargo ["BAF_L109A1_HE", 100]; 
_this addMagazineCargo ["SmokeShell", 100];
_this addMagazineCargo ["SmokeShellGreen", 100];
_this addMagazineCargo ["SmokeShellRed", 100];
_this addMagazineCargo ["SmokeShellYellow", 100];
_this addMagazineCargo ["SmokeShellBlue", 100];
_this addMagazineCargo ["SmokeShellPurple", 100];
_this addMagazineCargo ["SmokeShellOrange", 100];
_this addMagazineCargo ["PipeBomb", 50];
_this addMagazineCargo ["Mine", 50];
_this addMagazineCargo ["IR_Strobe_Marker", 100];
_this addMagazineCargo ["ACE_C4_M", 100]; 
_this addMagazineCargo ["ACE_Flashbang", 100]; 
_this addMagazineCargo ["ACE_Claymore_M", 50];   
_this addMagazineCargo ["ACE_TripFlare_M", 50];     


// Backpacks and Radios
_this addWeaponCargo ["ACE_PRC119_MAR", 20]; 
_this addWeaponCargo ["ACE_CharliePack_Multicam", 20];  
_this addWeaponCargo ["ACE_Backpack_Multicam", 20];  
_this addWeaponCargo ["ACE_Backpack_US", 20]; 
_this addWeaponCargo ["ACE_AssaultPack_BAF", 20];  
_this addWeaponCargo ["ACE_Rucksack_MOLLE_DMARPAT", 20];
_this addWeaponCargo ["ACRE_PRC148", 50]; 
_this addWeaponCargo ["ACRE_PRC343", 50]; 
_this addWeaponCargo ["ACE_Rucksack_MOLLE_ACU_Medic", 20]; 
_this addWeaponCargo ["ACE_CharliePack_ACU_Medic", 20];


// Chem Lights
_this addMagazineCargo ["ACE_Knicklicht_B", 50];
_this addMagazineCargo ["ACE_Knicklicht_G", 50];
_this addMagazineCargo ["ACE_Knicklicht_R", 50];
_this addMagazineCargo ["ACE_Knicklicht_W", 50];
_this addMagazineCargo ["ACE_Knicklicht_Y", 50];
_this addMagazineCargo ["ACE_Knicklicht_IR", 50];  



// Restock time.
sleep 1800;
}; 