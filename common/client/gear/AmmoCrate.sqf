//................................
//	Fill Ammo Box Script by Lzryde (v0.2)
// Based on Lzryde version, improved by Kol9yN special for ACE Insurgency
//................................
// Make box is Global!
if (isServer) then {
	stuffbox = _this select 0;
	publicVariable "stuffbox";  
};

// Settings
_amountWeapon = 20;
_amountAmmo = 60;
_amountammoMag = 10;
_amountForSquads = 30;
_refreshTime = 1800; // refresh every 30 minutes

// Loop
while {alive stuffbox} do {

	// Clear box
	clearWeaponCargo stuffbox;
	clearMagazineCargo stuffbox;

	// Fill box

	//For Heli's
	stuffbox addWeaponCargo ["ACE_ParachutePack",10];
	stuffbox addWeaponCargo ["ACE_ParachuteRoundPack",30];
	stuffbox addMagazineCargo ["ACE_VS17Panel_M",6];
	stuffbox addMagazineCargo ["ACE_Rope_M_50",6];
	stuffbox addMagazineCargo ["ACE_Rope_M_60",6];
	stuffbox addMagazineCargo ["ACE_Rope_M_90",6];
	stuffbox addMagazineCargo ["ACE_Rope_M_120",6];
	stuffbox addMagazineCargo ["ACE_Rope_M5",6];
	stuffbox addMagazineCargo ["ACE_Rope_TOW_M_5",6];

	//soflam
	stuffbox addWeaponCargo ["Laserdesignator", _amountForSquads];
	stuffbox addMagazineCargo ["Laserbatteries", _amountAmmo];

	//M4
	stuffbox addWeaponCargo ["ACE_SOC_M4A1", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_SOC_M4A1_Aim", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_SOC_M4A1_Eotech", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_SOC_M4A1_Eotech_4x", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_SOC_M4A1_GL", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_SOC_M4A1_GL_13", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_SOC_M4A1_GL_AIMPOINT", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_SOC_M4A1_GL_EOTECH", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_SOC_M4A1_SHORTDOT", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_SOC_M4A1_RCO_GL", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_SOC_M4A1_SD_9", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_SOC_M4A1_TWS", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_SOC_M4A1_EOT_SD_F", _amountWeapon];
	
	//HK family
	stuffbox addWeaponCargo ["ACE_HK416_D14_COMPM3", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_HK416_D14_COMPM3_M320", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_HK417_micro", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_HK417_Eotech_4x", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_HK417_Shortdot", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_HK416_D14_SD", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_HK416_D10_COMPM3_SD", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_HK416_D10_SD", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_HK416_D14", _amountWeapon];
	
		//MGs
	stuffbox addWeaponCargo ["ACE_M249_AIM", _amountForSquads];
	stuffbox addWeaponCargo ["ACE_M249_PIP_ACOG", _amountForSquads];
	stuffbox addWeaponCargo ["Mk_48_DES_EP1", _amountForSquads];
	stuffbox addWeaponCargo ["ACE_M60", _amountForSquads];
	
		//Shotguns
	stuffbox addWeaponCargo ["AA12_PMC", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_M1014_Eotech", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_SPAS12", _amountWeapon];

	//Snipers and DMRs
	stuffbox addWeaponCargo ["ACE_AS50", _amountForSquads];
	stuffbox addWeaponCargo ["ACE_Mk12mod1", _amountForSquads];
	stuffbox addWeaponCargo ["ACE_M109", _amountForSquads];
	stuffbox addWeaponCargo ["ACE_M110", _amountForSquads];
	stuffbox addWeaponCargo ["ACE_TAC50", _amountForSquads];
	stuffbox addWeaponCargo ["M24_des_EP1", _amountForSquads];
	

	//Launchers
	stuffbox addWeaponCargo ["SMAW", _amountForSquads];
	stuffbox addWeaponCargo ["MetisLauncher", _amountForSquads];
	stuffbox addWeaponCargo ["Stinger", _amountForSquads];
	stuffbox addMagazineCargo ["Stinger", _amountAmmo];
	stuffbox addWeaponCargo ["ACE_M136_CSRS", _amountForSquads];
	stuffbox addWeaponCargo ["ACE_M72A2", _amountForSquads];
	stuffbox addWeaponCargo ["ACE_Javelin_Direct", _amountForSquads];  
	stuffbox addWeaponCargo ["ACE_Javelin_CLU", _amountForSquads]; 


	//ACRE Rucks
	if (Var_acre == 1) then { stuffbox addWeaponCargo ["ACRE_PRC117F", _amountForSquads]; };
	if (Var_acre == 1) then { stuffbox addWeaponCargo ["ACRE_PRC119", _amountForSquads]; };

	//Rucks
	stuffbox addWeaponCargo ["ACE_VTAC_RUSH72_FT_MEDIC", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_VTAC_RUSH72_TT_MEDIC", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_VTAC_RUSH72_ACU", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_VTAC_RUSH72", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_Coyote_Pack", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_Coyote_Pack_Black", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_Coyote_Pack_Flora", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_Coyote_Pack_Multicam", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_Coyote_Pack_Wood", _amountWeapon];


	//pistols
	stuffbox addWeaponCargo ["Colt1911", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_P226", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_Flaregun", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_Glock18", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_MugLite", _amountWeapon];

	stuffbox addWeaponCargo ["ACE_USP", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_USPSD", _amountWeapon];
	stuffbox addMagazineCargo ["ACE_SSGreen_FG", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_SSRed_FG", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_SSWhite_FG", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_SSYellow_FG", _amountAmmo];
	stuffbox addMagazineCargo ["17Rnd_9x19_glock17", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_33Rnd_9x19_G18", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_12Rnd_45ACP_USP", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_12Rnd_45ACP_USPSD", _amountAmmo];


	//Mini smg
	stuffbox addWeaponCargo ["ACE_UMP45", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_UMP45_AIM", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_UMP45_AIM_SD", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_UMP45_SD", _amountWeapon];
	stuffbox addMagazineCargo ["ACE_25Rnd_1143x23_B_UMP45", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_25Rnd_1143x23_S_UMP45", _amountAmmo];


	//MISC amountAmmo


	stuffbox addMagazineCargo ["ACE_5Rnd_25x59_HEDP_Barrett", _amountAmmo];  
	stuffbox addMagazineCargo ["ACE_5Rnd_127x99_B_TAC50", _amountAmmo];  
	stuffbox addMagazineCargo ["ACE_5Rnd_762x51_T_M24", _amountAmmo];  
	stuffbox addMagazineCargo ["5Rnd_127x99_as50", _amountAmmo]; 

	stuffbox addMagazineCargo ["ACE_30Rnd_556x45_S_Stanag", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_8Rnd_12Ga_Buck00", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_8Rnd_12Ga_Slug", _amountAmmo];
	
	stuffbox addMagazineCargo ["ACE_Bandage", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_Morphine", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_Epinephrine", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_Medkit", _amountAmmo];
	if (Var_acre == 1) then { stuffbox addWeaponCargo ["acre_prc148", _amountWeapon]; };
	stuffbox addMagazineCargo ["ACE_Knicklicht_B", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_Knicklicht_G", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_Knicklicht_IR", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_Knicklicht_R", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_Knicklicht_W", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_Knicklicht_Y", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_FlareIR_M203", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_SSWhite_M203", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_SSYellow_M203", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_SSGreen_M203", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_SSRed_M203", _amountAmmo];
	stuffbox addMagazineCargo ["1Rnd_Smoke_M203", _amountAmmo];
	stuffbox addMagazineCargo ["1Rnd_SmokeRed_M203", _amountAmmo];
	stuffbox addMagazineCargo ["1Rnd_SmokeGreen_M203", _amountAmmo];
	stuffbox addMagazineCargo ["1Rnd_SmokeYellow_M203", _amountAmmo];
	stuffbox addMagazineCargo ["IR_Strobe_Marker", _amountAmmo];
	stuffbox addMagazineCargo ["IR_Strobe_Target", _amountAmmo];
	stuffbox addMagazineCargo ["Mine", _amountAmmo];
	stuffbox addMagazineCargo ["SmokeShell", _amountAmmo];
	stuffbox addMagazineCargo ["SmokeShellBlue", _amountAmmo];
	stuffbox addMagazineCargo ["SmokeShellGreen", _amountAmmo];
	stuffbox addMagazineCargo ["SmokeShellOrange", _amountAmmo];
	stuffbox addMagazineCargo ["SmokeShellPurple", _amountAmmo];
	stuffbox addMagazineCargo ["SmokeShellRed", _amountAmmo];
	stuffbox addMagazineCargo ["SmokeShellYellow", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_M7A3", 6];
	stuffbox addMagazineCargo ["ACE_ANM14", 6];
	stuffbox addWeaponCargo ["ACE_GlassesSunglasses", _amountAmmo];
	stuffbox addWeaponCargo ["ACE_GlassesBalaklava", _amountAmmo];
	stuffbox addWeaponCargo ["ACE_GlassesBalaklavaGray", _amountAmmo];
	stuffbox addWeaponCargo ["ACE_GlassesBalaklavaOlive", _amountAmmo];
	stuffbox addWeaponCargo ["Binocular", _amountForSquads];
	stuffbox addWeaponCargo ["ItemCompass", _amountAmmo];
	stuffbox addWeaponCargo ["ACE_DAGR", 6];
	stuffbox addWeaponCargo ["ACE_Earplugs", _amountAmmo];
	stuffbox addWeaponCargo ["ItemGPS", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_HuntIR_monitor", _amountForSquads];
	stuffbox addWeaponCargo ["ACE_Kestrel4500", _amountForSquads];
	stuffbox addWeaponCargo ["ItemMap", _amountAmmo];
	stuffbox addWeaponCargo ["NVGoggles", _amountAmmo];
	stuffbox addWeaponCargo ["ItemRadio", _amountAmmo];
	stuffbox addWeaponCargo ["ACE_GlassesLHD_glasses", _amountAmmo];
	stuffbox addWeaponCargo ["ACE_SpottingScope", _amountForSquads];
	stuffbox addWeaponCargo ["ACE_Rangefinder_OD", _amountForSquads];
	stuffbox addWeaponCargo ["Binocular_Vector", 6];
	stuffbox addWeaponCargo ["ItemWatch", _amountWeapon];
	stuffbox addWeaponCargo ["ACE_WireCutter", _amountForSquads];
	stuffbox addWeaponCargo ["ACE_SOFLAMTripod", _amountForSquads];
	stuffbox addWeaponCargo ["ACE_Map_Tools", _amountForSquads];
	stuffbox addWeaponCargo ["ACE_KeyCuffs", _amountAmmo];
	stuffbox addWeaponCargo ["ACE_GlassesTactical", _amountAmmo];
	stuffbox addWeaponCargo ["ACE_GlassesGasMask_US", _amountAmmo];
	stuffbox addWeaponCargo ["ACE_YardAge450", _amountForSquads];
	stuffbox addWeaponCargo ["ACE_Minedetector_US", _amountForSquads];

	//MAGS amountAmmoMag
	stuffbox addMagazineCargo ["ACE_10Rnd_127x99_Raufoss_m107", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_10Rnd_127x99_T_m107", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_100Rnd_556x45_T_M249", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_200Rnd_556x45_T_M249", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_30Rnd_556x45_SB_S_Stanag", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_30Rnd_556x45_SB_Stanag", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_20Rnd_762x51_T_SCAR", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_5Rnd_127x99_B_TAC50", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_5Rnd_127x99_S_TAC50", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_5Rnd_127x99_T_TAC50", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_20Rnd_762x51_S_M110", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_20Rnd_762x51_SB_M110", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_20Rnd_762x51_T_M110", _amountAmmo];
	stuffbox addMagazineCargo ["200Rnd_556x45_L110A1", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_AT13TB", _amountAmmo];
	stuffbox addMagazineCargo ["SMAW_HEDP", _amountAmmo];
	stuffbox addMagazineCargo ["SMAW_HEAA", _amountAmmo];
	stuffbox addMagazineCargo ["PG7V", _amountAmmo];
	stuffbox addMagazineCargo ["PG7VL", _amountAmmo];
	stuffbox addMagazineCargo ["PG7VR", _amountAmmo];
	stuffbox addMagazineCargo ["OG7", _amountAmmo];
	stuffbox addMagazineCargo ["Strela", _amountAmmo];
	stuffbox addMagazineCargo ["20Rnd_762x51_FNFAL", _amountAmmo];
	stuffbox addMagazineCargo ["30Rnd_762x39_AK47", _amountAmmo];
	stuffbox addMagazineCargo ["30Rnd_556x45_Stanag", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_5Rnd_762x51_T_M24", _amountAmmo];
	stuffbox addMagazineCargo ["100Rnd_762x51_M240", _amountAmmo];
	stuffbox addMagazineCargo ["100Rnd_556x45_M249", _amountAmmo];
	stuffbox addMagazineCargo ["200Rnd_556x45_M249", _amountAmmo];
	stuffbox addMagazineCargo ["PipeBomb", _amountAmmo];
	stuffbox addMagazineCargo ["15Rnd_9x19_M9", _amountAmmo];
	stuffbox addMagazineCargo ["7Rnd_45ACP_1911", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_15Rnd_9x19_P226", _amountAmmo];
	stuffbox addMagazineCargo ["HandGrenade_West", _amountAmmo];
	stuffbox addMagazineCargo ["FlareWhite_M203", _amountAmmo];
	stuffbox addMagazineCargo ["FlareYellow_M203", _amountAmmo];
	stuffbox addMagazineCargo ["FlareGreen_M203", _amountAmmo];
	stuffbox addMagazineCargo ["FlareRed_M203", _amountAmmo];
	stuffbox addMagazineCargo ["FlareWhite_GP25", _amountAmmo];
	stuffbox addMagazineCargo ["FlareGreen_GP25", _amountAmmo];
	stuffbox addMagazineCargo ["FlareRed_GP25", _amountAmmo];
	stuffbox addMagazineCargo ["FlareYellow_GP25", _amountAmmo];
	stuffbox addMagazineCargo ["1Rnd_Smoke_GP25", _amountAmmo];
	stuffbox addMagazineCargo ["1Rnd_SmokeRed_GP25", _amountAmmo];
	stuffbox addMagazineCargo ["1Rnd_SmokeGreen_GP25", _amountAmmo];
	stuffbox addMagazineCargo ["1Rnd_SmokeYellow_GP25", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_BB2847", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_Battery_Rangefinder", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_Flashbang", _amountAmmo];

	//m203
	stuffbox addMagazineCargo ["ACE_HuntIR_M203", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_1Rnd_HE_M203", _amountAmmo];
	stuffbox addMagazineCargo ["1Rnd_HE_M203", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_1Rnd_CS_M203", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_1Rnd_PR_M203", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_M576", _amountAmmo];

	stuffbox addMagazineCargo ["BAF_L109A1_HE", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_M84", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_Claymore_M", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_C4_M", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_OSM4_M", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_MON50_M", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_TRIPFLARE_M", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_M4SLAM_M", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_M2SLAM_M", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_DM31_M", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_BBETTY_M", _amountAmmo];

	stuffbox addMagazineCargo ["20Rnd_B_AA12_74Slug", _amountAmmo];
	stuffbox addMagazineCargo ["20Rnd_B_AA12_HE", _amountAmmo];
	stuffbox addMagazineCargo ["20Rnd_B_AA12_Pellets", _amountAmmo];
	//stuffbox addMagazineCargo ["8Rnd_B_Saiga12_74Slug", _amountAmmo];
	//stuffbox addMagazineCargo ["8Rnd_B_Saiga12_Pellets", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_8Rnd_12Ga_Buck00_Saiga12", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_20Rnd_762x51_T_HK417", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_20Rnd_762x51_B_HK417", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_20Rnd_762x51_SB_HK417", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_20Rnd_762x51_T_G3", _amountAmmo];
	stuffbox addMagazineCargo ["ACE_20Rnd_762x51_B_G3", _amountAmmo];

	
	// Wait the duration of _refreshTime
	sleep _refreshTime;
};