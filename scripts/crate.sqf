// Universal Crate Filler 2.0
// by Tophe of �stg�ta Ops
// Usage:
// nul = [this] execVM "crateFiller.sqf"
//
// Optional settings:
// nul = [this,side(west,east,all),game(all,arma,oa,baf,pmc,user),refill(true/false),weapons(amount),magazines(amount),equipment(amount)] execVM "crateFiller.sqf"
//
// Default values:
// nul = [this,"west","all",false,20,30,20] execVM "crateFiller.sqf"

// Set variables
_box 		= _this select 0;
_side 		= if (count _this > 1) then {_this select 1} else {"west"};
_game 		= if (count _this > 2) then {_this select 2} else {"all"};
_refill 	= if (count _this > 3) then {_this select 3} else {false};
_amountw 	= if (count _this > 4) then {_this select 4} else {20};
_amountm 	= if (count _this > 5) then {_this select 5} else {30};
_amounte 	= if (count _this > 6) then {_this select 6} else {20};

_run 		= true;

_west		= false;
_east		= false;
_arma		= false;
_oa 		= false;
_baf		= false;
_pmc		= false;
_ace 		= false;
_user		= false;

// Check variables
//hint  format ["%1", typename _side];
if !(typename _side == "STRING") then {hint "Universal Box Filler:\n Side setting must be West/East/All \n \n It is now changed to West \n Set it in the map editor"; _side = "west"};
if !(typename _game == "STRING") then {hint "Universal Box Filler:\n Game setting must be all/arma/oa/baf/pmc/ace/user \n \n It is now changed to All \n Set it in the map editor"; _side = "west"};
if !(_side == "west" or _side == "east" or _side == "all") then {hint "Universal Box Filler:\n Side setting must be West/East/All \n \n It is now changed to West \n Set it in the map editor"; _side = "west"};
if !(_game == "arma" or _game == "oa" or _game == "all" or _game == "baf" or _game == "pmc" or _game == "ace" or _game == "user") then {hint "Universal Box Filler:\n Game setting must be all/arma/ao/baf/pmc/user\n \n It is now changed to All \n Set it in the map editor";_game = "all"};
if !(typename _refill == "BOOL") then {hint "Universal Box Filler:\n Refill must be set to True/False \n \n It is now changed to False\n Set it in the map editor";_refill = false};
if !(typename _amountw == "SCALAR") then {hint "Universal Box Filler:\n Weapon amount must be a number \n \n It is now changed to 30\n Set it in the map editor"; _amountw = 20};
if !(typename _amountm == "SCALAR") then {hint "Universal Box Filler:\n Magazine amount must be a number \n \n It is now changed to 75\n Set it in the map editor"; _amountw = 30};
if !(typename _amounte == "SCALAR") then {hint "Universal Box Filler:\n Equipment amount must be a number \n \n It is now changed to 30\n Set it in the map editor"; _amountw = 20};
// Debug
//hint format["Side: %1, Game: %2, Refill: %3, w: %4, m: %5, e: %6",_side, _game, _refill, _amountw, _amountm, _amounte];
//hint format["Side: %1, Game: %2, Refill: %3, w: %4, m: %5, e: %6",_side, _game, _refill, _amountw, _amountm, _amounte];

if (_side == "west" or _side == "all") then {_west = true};
if (_side == "east" or _side == "all") then {_east = true};
if (_game == "arma" or _game == "all") then {_arma = true};
if (_game == "oa" or _game == "all") then {_oa = true};
if (_game == "oa" or _game == "all" or _game == "baf" ) then {_baf = true};
if (_game == "oa" or _game == "all" or _game == "pmc" ) then {_pmc = true};
if (_game == "ace" ) then {_ace = true};
if (_game == "user" or _game == "all" or _game == "pmc") then {_user = true};



//// WEAPON-ARRAYS ////

		// User Defined Arrays, activated when 'game' option is set to 'user'
		_user_weapons_west = ["m14_ep1","BAF_L86A2_ACOG","ACE_HK417_Shortdot","ACE_HK417_micro","ACE_HK417_leupold","ACE_HK416_D14_TWS","ACE_HK416_D14_SD","ACE_HK416_D14_COMPM3_M320","ACE_HK416_D14_COMPM3","ACE_HK416_D14_ACOG_PVS14","ACE_HK416_D14","ACE_HK416_D10_SD","ACE_HK416_D10_M320","ACE_HK416_D10_Holo","ACE_HK416_D10_COMPM3_SD","ACE_HK416_D10_COMPM3","ACE_HK416_D10_AIM","ACE_HK416_D10","ACE_m16a2_scope","ACE_HK417_Eotech_4x","ACE_M16A4_CCO_GL","ACE_M4A1_ACOG","ACE_SOC_M4A1_GL","ACE_SOC_M4A1_GL_13","ACE_M4A1_GL_SD","ACE_SOC_M4A1_GL_SD","ACE_SOC_M4A1_GL_EOTECH","ACE_SOC_M4A1_GL_AIMPOINT","ACE_M4A1_ACOG","ACE_M4A1_ACOG","ACE_SOC_M4A1_SHORTDOT_SD","ACE_M4A1_ACOG_SD","ACE_M27_IAR","ACE_M27_IAR_CCO","ACE_M27_IAR_ACOG","ACE_M249_PIP_ACOG","ACE_M249_AIM","ACE_M4A1_Aim_SD","ACE_M4A1_Eotech","ACE_SOC_M4A1_Eotech","ACE_SOC_M4A1_RCO_GL","ACE_M249Para","ACE_M60","ACE_M136_CSRS","ACE_TAC50","ACE_TAC50_SD","ACE_M224Proxy","ACE_M224TripodProxy","ACE_Javelin_Direct"];
		_user_magazines_west = ["100Rnd_556x45_BetaCMag","ACE_20Rnd_762x51_B_HK417","ACE_20Rnd_762x51_S_HK417","ACE_20Rnd_762x51_SB_HK417","ACE_20Rnd_762x51_SB_S_HK417","ACE_20Rnd_762x51_T_HK417","100Rnd_556x45_BetaCMag","ACE_30Rnd_556x45_T_Stanag","ACE_30Rnd_556x45_SB_Stanag","ACE_200Rnd_556x45_T_M249","ACE_10Rnd_127x99_Raufoss_m107","ACE_10Rnd_127x99_Raufoss_m107","ACE_5Rnd_762x51_T_M24","ACE_5Rnd_25x59_HEDP_Barrett","ACE_6Rnd_CS_M32","ACE_SSWhite_FG","ACE_SSRed_FG","ACE_SSGreen_FG","ACE_SSYellow_FG","ACE_SSWhite_M203","ACE_SSGreen_M203","ACE_SSRed_M203","ACE_SSYellow_M203","ACE_LargeBandage","ACE_Bandage","ACE_Morphine","ACE_Epinephrine","ACE_Medkit","ACE_SMAW_SPOTTING","ACE_Flashbang","ACE_6Rnd_12Ga_Buck00","ACE_6Rnd_12Ga_Slug","8Rnd_B_Beneli_Pellets","ACE_8Rnd_12Ga_Buck00","ACE_Knicklicht_R","ACE_Knicklicht_W","ACE_Knicklicht_G","ACE_Knicklicht_Y","ACE_Knicklicht_B","ACE_Knicklicht_IR","ACE_HuntIR_M203","ACE_5Rnd_127x99_B_TAC50","ACE_5Rnd_127x99_S_TAC50","ACE_5Rnd_127x99_T_TAC50","ACE_M224HE_CSWDM","ACE_M224IL_CSWDM","ACE_M224WP_CSWDM","ACE_M15","ACE_M34","ACE_M2_CSWDM","ACE_MK19_CSWDM"];
		_user_weapons_east = [];
		_user_magazines_east = [];

// EQUIPMENT 
		_equipment = ["binocular","nvgoggles","laserdesignator","itemcompass","itemgps","itemmap","itemradio","itemwatch","ACE_GlassesTactical","ACE_Map_Tools","ACE_KeyCuffs","ACE_Kestrel4500","ACE_HuntIR_monitor","ACE_DAGR","ace_arty_rangeTable_m224_legacy","ACE_Javelin_CLU"];
		_equipment_oa = ["binocular_vector","ACE_Earplugs","ACE_GlassesRoundGlasses","ACE_GlassesSunglasses","ACE_GlassesLHD_glasses","ACE_GlassesGasMask_US","ACE_Rucksack_MOLLE_Green","ACE_Rucksack_MOLLE_Brown","ACE_Rucksack_MOLLE_Wood","ACE_Rucksack_MOLLE_ACU","ACE_Rucksack_MOLLE_WMARPAT","ACE_Rucksack_MOLLE_DMARPAT","ACE_Rucksack_MOLLE_Green_Medic","ACE_Rucksack_MOLLE_Brown_Medic","ACE_Rucksack_MOLLE_ACU_Medic","ACE_Rucksack_MOLLE_WMARPAT_Medic","ACE_Rucksack_MOLLE_DMARPAT_Medic","ACE_ANPRC77","ACE_VTAC_RUSH72","ACE_VTAC_RUSH72_TT_MEDIC","ACE_VTAC_RUSH72_FT_MEDIC","ACE_CharliePack","ACE_CharliePack_WMARPAT",
                                 "ACE_CharliePack_ACU","ACE_CharliePack_ACU_Medic","ACE_PRC119","ACE_PRC119_MAR","ACE_PRC119_ACU","ACE_FAST_PackEDC_ACU","ACE_Coyote_Pack","ACE_Coyote_Pack_Black","ACE_BackPack_ACR","ACE_BackPack_ACR_TT","ACE_BackPack_ACR_FL","ACE_BackPack_ACR_Small","ACE_ALICE_Backpack","ACE_Backpack_US","ACE_Backpack_FL","ACE_Backpack_TT","ACE_P159_RD90","ACE_P159_RD54","ACE_P159_RD99","ACRE_PRC117F","ACRE_PRC119","ACRE_PRC148_UHF","ACRE_PRC148"];
		
// ORDONANCE
		_ordonance = ["smokeshell","smokeshellblue","smokeshellgreen","smokeshellorange","smokeshellpurple","smokeshellred","smokeshellyellow","pipebomb","handgrenade","laserbatteries","ACE_Claymore_M","ACE_C4_M","ACE_BBetty_M","ACE_TripFlare_M","ACE_VS17Panel_M","ACE_Battery_Rangefinder"];
		_ordonance_oa = ["ir_strobe_target","ir_strobe_marker","baf_ied_v1","baf_ied_v2","baf_ied_v3","baf_ied_v4"];
		
		_west_ordonance = ["mine","handgrenade_west"];
		_west_ordonance_oa = ["baf_l109a1_he"];
		
		_east_ordonance = ["minee","handgrenade_east"];
	
// WEST WEAPONS & MAGAZINES
		_west_weapons = [
						//Rifles
						"m16a2","m16a2gl","m16a4","m16a4_gl","m16a4_acg","m16a4_acg_gl",
						"m4a1","m4a1_aim","m4a1_aim_camo","m4a1_aim_sd_camo","m4a1_hws_gl","m4a1_hws_gl_camo","m4a1_hws_gl_sd_camo","m4a1_rco_gl",
						"m8_carbine","m8_carbinegl","m8_compact","m8_sharpshooter",
						"g36a","g36k","g36c","g36_c_sd_eotech",
						"mp5a5","mp5sd",
						"m1014",
						// machineguns
						"m249","m240","mk_48","mg36","m8_saw",
						// sniper rifles
						"m24","m40a3","m107","m4spr","dmr",
						// sidearms
						"colt1911","m9","m9sd",
						// launchers
						"m136","smaw","stinger"];

		_west_weapons_oa = [				
						// rifles
						"m16a2","m16a2gl",
						"m4a1","m4a3_cco_ep1","m4a3_rco_gl_ep1",
						"fn_fal","fn_fal_anpvs4","g36_c_sd_camo","g36a_camo","g36c_camo","g36k_camo",
						"scar_h_cqc_cco","scar_h_cqc_cco_sd","scar_h_lng_sniper","scar_h_lng_sniper_sd","scar_h_std_eglm_spect","scar_h_std_tws_sd",
						"scar_l_cqc","scar_l_cqc_cco_sd","scar_l_cqc_eglm_holo","scar_l_cqc_holo","scar_l_std_eglm_rco","scar_l_std_eglm_tws","scar_l_std_holo","scar_l_std_mk4cqt",
						// sniper rifles
						"leeenfield","m110_nvg_ep1","m110_tws_ep1","m14_ep1","m107","m107_tws_ep1",
						// machinegus
						"m60a4_ep1","mg36_camo","m240_scoped_ep1","m249_ep1","m249_m145_ep1","m249_tws_ep1","mk_48_des_ep1",
						// grenade launchers
						"m79_ep1","m32_ep1","mk13_ep1",
						// sidearms
						"colt1911","glock17_ep1","m9","m9sd","revolver_ep1",
						// launchers
						"m136","m47launcher_ep1","maaws","stinger","ACE_M72A2"];
						
		_west_weapons_baf = [					
						// rifles
						"baf_as50_scoped","baf_as50_tws","baf_l110a1_aim","baf_l7a2_gpmg","baf_l85a2_ris_acog",
						"baf_l85a2_ris_cws","baf_l85a2_ris_holo","baf_l85a2_ris_susat","baf_l85a2_ugl_acog","baf_l85a2_ugl_holo","baf_l85a2_ugl_susat","baf_l86a2_acog",
						// sniper rifles
						"baf_lrr_scoped_w",
						// launchers
						"baf_nlaw_launcher"];
		
		_west_weapons_pmc = [	
						// rifles
						"m8_tws","m8_tws_sd","m8_carbine_pmc","m8_carbine","m8_carbinegl","m8_compact","m8_compact_pmc","m8_holo_sd",
						//sniper rifles
						"m8_sharpshooter",
						// machine guns
						"m8_saw"];
		
		_west_weapons_ace = ["ACE_M16A4_CCO_GL","ACE_HK417_Eotech_4x","ACE_M4A1_ACOG","ACE_SOC_M4A1_GL","ACE_SOC_M4A1_GL_13","ACE_M4A1_GL_SD","ACE_SOC_M4A1_GL_SD","ACE_SOC_M4A1_GL_EOTECH","ACE_SOC_M4A1_GL_AIMPOINT","ACE_M4A1_ACOG","ACE_M4A1_ACOG","ACE_M4A1_ACOG_CQB","ACE_SOC_M4A1_SHORTDOT","ACE_SOC_M4A1_SHORTDOT_CQB","ACE_M4A1_ACOG_SD","ACE_M27_IAR","ACE_M27_IAR_ACOG","ACE_M249_PIP_ACOG","ACE_M249_AIM","ACE_M4A1_ACOG_SD_CQB","ACE_SOC_M4A1_SHORTDOT_SD","ACE_SOC_M4A1_SHORTDOT_SD_CQB","ACE_M4A1_Aim_SD""ACE_M4A1_Eotech","ACE_SOC_M4A1_Eotech","ACE_M4A1_RCO_GL_CQB","ACE_SOC_M4A1_RCO_GL","ACE_SOC_M4A1_RCO_GL_CQB","ACE_M249Para","ACE_M249Para_M145","ACE_M240G_M145","ACE_M240G_M145_CQB","ACE_M60"];

		_west_magazines = [
						// rifle mags
						"30rnd_556x45_stanag","30rnd_556x45_stanagsd","30rnd_556x45_g36","30rnd_556x45_g36sd","30rnd_9x19_mp5","30rnd_9x19_mp5sd","8rnd_b_beneli_74slug",
						// under-barrel grenade launchers
						"1rnd_he_m203","flarewhite_m203","flaregreen_m203","flarered_m203","flareyellow_m203","1rnd_smoke_m203","1rnd_smokegreen_m203","1rnd_smokered_m203","1rnd_smokeyellow_m203",
						// sniper rifles
						"20rnd_556x45_stanag","20rnd_762x51_dmr","5rnd_762x51_m24","10rnd_127x99_m107",
						// machineguns
						"100rnd_556x45_betacmag","200rnd_556x45_m249","100rnd_762x51_m240",	
						// side arms
						"7rnd_45acp_1911","15rnd_9x19_m9","15rnd_9x19_m9sd","ACE_12Rnd_45ACP_USPSD",  
						// launchers
						"smaw_heaa","smaw_hedp","ACE_SMAW_NE","javelin","stinger"];
						
		_west_magazines_oa = [
						// rifles
						"20rnd_556x45_stanag","30rnd_556x45_stanag","30rnd_556x45_stanagsd","20rnd_762x51_dmr",
						"20rnd_762x51_fnfal","30rnd_556x45_g36","30rnd_556x45_g36sd","100rnd_556x45_betacmag","20rnd_762x51_b_scar",
						// under-barrell launcher
						"ACE_1Rnd_CS_M203","ACE_M576","ACE_M7A3","1rnd_he_m203","1rnd_smoke_m203","1rnd_smokegreen_m203","1rnd_smokered_m203","1rnd_smokeyellow_m203","flaregreen_m203","flarered_m203","flarewhite_m203","flareyellow_m203",
						// grenade launcher 
						"6rnd_flaregreen_m203","6rnd_flarered_m203","6rnd_flarewhite_m203","6rnd_flareyellow_m203","6rnd_he_m203","6rnd_smoke_m203","6rnd_smokegreen_m203","6rnd_smokered_m203","6rnd_smokeyellow_m203",
						// sniper rifles
						"5rnd_762x51_m24","20rnd_762x51_sb_scar","5rnd_86x70_l115a1","10x_303","10rnd_127x99_m107",
						// side arms
						"10rnd_b_765x17_ball","20rnd_b_765x17_ball","30rnd_9x19_mp5","30rnd_9x19_mp5sd",
						"7rnd_45acp_1911","15rnd_9x19_m9","15rnd_9x19_m9sd","17rnd_9x19_glock17","6rnd_45acp",
						// machineguns
						"100rnd_556x45_m249","100rnd_762x51_m240","200rnd_556x45_l110a1","200rnd_556x45_m249",
						// launchers
						"nlaw","javelin","dragon_ep1","maaws_heat","maaws_hedp","stinger"];
						
		_west_magazines_baf = [
						"30rnd_556x45_stanag","5rnd_86x70_l115a1","5rnd_127x99_as50","200rnd_556x45_l110a1","100rnd_762x51_m240",
						"nlaw",
						"1rnd_he_m203","flarewhite_m203","flaregreen_m203","flarered_m203","flareyellow_m203","1rnd_smoke_m203","1rnd_smokered_m203","1rnd_smokegreen_m203","1rnd_smokeyellow_m203"];
						
		_west_magazines_pmc = [
						"30rnd_556x45_stanagsd",
						"1rnd_he_m203","flarewhite_m203","flaregreen_m203","flarered_m203","flareyellow_m203","1rnd_smoke_m203","1rnd_smokered_m203","1rnd_smokegreen_m203","1rnd_smokeyellow_m203"];
		
		
		_west_magazines_ace = ["100Rnd_556x45_BetaCMag","ACE_30Rnd_556x45_T_Stanag","ACE_30Rnd_556x45_SB_Stanag","ACE_200Rnd_556x45_T_M249","ACE_10Rnd_127x99_Raufoss_m107","ACE_10Rnd_127x99_Raufoss_m107","ACE_5Rnd_762x51_T_M24","ACE_5Rnd_25x59_HEDP_Barrett","ACE_6Rnd_CS_M32","ACE_SSWhite_FG","ACE_SSRed_FG","ACE_SSGreen_FG","ACE_SSYellow_FG","ACE_SSWhite_M203","ACE_SSGreen_M203","ACE_SSRed_M203","ACE_SSYellow_M203","ACE_Bandage","ACE_LargeBandage","ACE_Morphine","ACE_Epinephrine","ACE_Medpack","ACE_SMAW_SPOTTING"];
		

							
// EAST WEAPONS & MAGAZINES
		_east_weapons = [
						// rifles
						"ak_47_m","ak_47_s","aks_gold",
						"ak_74","ak_74_gl","aks_74_kobra","aks_74_pso","aks_74_u","aks_74_un_kobra",
						"ak_107_kobra","ak_107_gl_kobra","ak_107_pso","ak_107_gl_pso",
						"bizon","bizon_silenced",
						"saiga12k",
						// machineguns
						"rpk_74","pk","pecheneg",
						// sniper rifles
						"huntingrifle","vss_vintorez","svd","svd_camo","ksvk",
						// side arms
						"makarov","makarovsd",
						// launchers
						"rpg7v","rpg18","metislauncher","strela","igla"];

		_east_weapons_oa = [
						// rifles
						"ak_47_m","ak_47_s",
						"ak_74","ak_74_gl","ak_74_gl_kobra","aks_74","aks_74_goshawk","aks_74_kobra","aks_74_nspu","aks_74_pso","aks_74_u",
						"sa58p_ep1","sa58v_cco_ep1","sa58v_ep1","sa58v_rco_ep1",
						// sniper rifles
						"svd","svd_des_ep1","svd_nspu_ep1","ksvk",
						// machineguns
						"rpk_74","pk",
						// side arms
						"makarov","makarovsd","sa61_ep1","uzi_ep1","uzi_sd_ep1",
						// launchers
						"igla","metislauncher","rpg18","rpg7v","strela"];

		_east_weapons_ace = [];
	

		_east_magazines = [
						// rifles
						"30rnd_762x39_ak47","30rnd_545x39_ak","30rnd_545x39_aksd","64rnd_9x19_bizon","64rnd_9x19_sd_bizon","8rnd_b_saiga12_74slug",
						// under-barrel grenade launchers
						"1rnd_he_gp25","flarewhite_gp25","flaregreen_gp25","flarered_gp25","flareyellow_gp25","1rnd_smoke_gp25","1rnd_smokegreen_gp25","1rnd_smokered_gp25","1rnd_smokeyellow_gp25",
						// sniper rifles
						"5x_22_lr_17_hmr","10rnd_9x39_sp5_vss","20rnd_9x39_sp5_vss","10rnd_762x54_svd","5rnd_127x108_ksvk",
						// machineguns
						"75rnd_545x39_rpk","100rnd_762x54_pk",
						// side arms
						"8rnd_9x18_makarov","8rnd_9x18_makarovsd",
						// launchers
						"pg7v","pg7vl","pg7vr","og7","at13","strela","igla"];
				
		_east_magazines_oa = [
						// rifles
						"30rnd_762x39_ak47","30rnd_762x39_sa58","30rnd_545x39_ak","30rnd_545x39_aksd",
						// under-barrel grenade launchers
						"1rnd_he_gp25","1rnd_smoke_gp25","1rnd_smokegreen_gp25","1rnd_smokered_gp25","1rnd_smokeyellow_gp25","flaregreen_gp25","flarered_gp25","flarewhite_gp25","flareyellow_gp25",
						// sniper rifles
						"10rnd_762x54_svd","5rnd_127x108_ksvk",
						// machineguns
						"100rnd_762x54_pk","75rnd_545x39_rpk",
						// side arms
						"30rnd_9x19_uzi","30rnd_9x19_uzi_sd","8rnd_9x18_makarov","8rnd_9x18_makarovsd",
						// launchers
						"at13","rpg18","og7","pg7v","pg7vl","pg7vr","strela","igla"];

		_east_magazines_ace = [];
				

// Trim arrays to avoid duplications.
if (_arma && _oa) then {
	_east_weapons_oa = 	_east_weapons_oa - _east_weapons;
	_east_magazines_oa = _east_magazines_oa - _east_magazines;
	_west_weapons_oa = 	_west_weapons_oa - _west_weapons;
	_west_magazines_oa = _west_magazines_oa - _west_magazines;
};
// baf & pmc
if (_oa) then {
	_west_weapons_baf = _west_weapons_baf - _west_weapons_oa;
	_west_magazines_baf  = _west_magazines_baf - _west_magazines_oa;
	_west_weapons_pmc = _west_weapons_pmc - _west_weapons_oa;
	_west_magazines_pmc = _west_magazines_pmc - _west_magazines_oa;
};
if (_arma) then {
	_west_weapons_baf = _west_weapons_baf - _west_weapons;
	_west_magazines_baf  = _west_magazines_baf - _west_magazines;
	_west_weapons_pmc = _west_weapons_pmc - _west_weapons;
	_west_magazines_pmc = _west_magazines_pmc - _west_magazines;
};
	
	
// Start loop	
while {_run} do {	
	clearWeaponCargo _box; 
	clearMagazineCargo _box;

			
	// ALL
			// EQUIPMENT
				{ 
					_box addWeaponCargo [_x, _amounte]; 
				}
				foreach _equipment;

				if (_oa) then {
					{ 
						_box addWeaponCargo [_x, _amounte]; 
					}
					foreach _equipment_oa;
				};
			// ORDONANCE 
				{ 
					_box addMagazineCargo [_x, _amountm ]; 
				}
				foreach _ordonance;
				if (_oa || _baf) then {
					{ 
						_box addMagazineCargo [_x, _amountm ]; 
					}
					foreach _ordonance_oa;
				};
				

	// WEST
			// ORDONANCE 
				if (_west) then {
					{ 
						_box addMagazineCargo [_x, _amountm ]; 
					}
					foreach _west_ordonance;
				};
				
				if (_west && _oa) then {
					{ 
						_box addMagazineCargo [_x, _amounte]; 
					}
					foreach _west_ordonance_oa;
				};
			
			// WEAPONS & MAGAZINES
				if (_west && _arma) then {
					{ 
						_box addWeaponCargo [_x, _amountw]; 
					}
					foreach _west_weapons;
					{ 
						_box addMagazineCargo [_x, _amountm]; 
					}
					foreach _west_magazines;
				};
				
			// OA WEAPONS & MAGAZINES
				if (_west && _oa) then {
					{ 
						_box addWeaponCargo [_x, _amountw]; 
					}
					foreach _west_weapons_oa;
					{ 
						_box addMagazineCargo [_x, _amountm]; 
					}
					foreach _west_magazines_oa;
				};
				// BAF
				if (_west && _baf) then {
					{ 
						_box addWeaponCargo [_x, _amountw]; 
					}
					foreach _west_weapons_baf;
					{ 
						_box addMagazineCargo [_x, _amountm]; 
					}
					foreach _west_magazines_baf;
				};	
				// PMC
				if (_west && _pmc) then {
					{ 
						_box addWeaponCargo [_x, _amountw]; 
					}
					foreach _west_weapons_pmc;
					{ 
						_box addMagazineCargo [_x, _amountm]; 
					}
					foreach _west_magazines_pmc;
				};	
		
			// USER DEFINED	
					if (_user) then {
					{ 
						_box addWeaponCargo [_x, _amountw]; 
					}
					foreach _user_weapons_west;
					{ 
						_box addMagazineCargo [_x, _amountm]; 
					}
					foreach _user_magazines_west;
				};	


			
			
	// EAST 
			// ORDONANCE 
				if (_east) then {
					{ 
						_box addMagazineCargo [_x, _amountm ]; 
					}
					foreach _east_ordonance;
				};
				
				
			// WEAPONS & MAGAZINES
				if (_east && _arma) then {
					{ 
						_box addWeaponCargo [_x, _amountw]; 
					}
					foreach _east_weapons;
					{ 
						_box addMagazineCargo [_x, _amountm]; 
					}
					foreach _east_magazines;
				};
				
			//  OA WEAPONS & MAGAZINES
				if (_east && _oa) then {
					{ 
						_box addWeaponCargo [_x, _amountw]; 
					}
					foreach _east_weapons_oa;
					{ 
						_box addMagazineCargo [_x, _amountm]; 
					}
					foreach _east_magazines_oa;
				};
				
			// USER DEFINED	
					if (_user) then {
					{ 
						_box addWeaponCargo [_x, _amountw]; 
					}
					foreach _user_weapons_east;
					{ 
						_box addMagazineCargo [_x, _amountm]; 
					}
					foreach _user_magazines_east;
				};	
				
				
// Refill or end loop				
if (!alive _box) then {_run = false};
if (!_refill) then {_run = false};
sleep 1800;
};