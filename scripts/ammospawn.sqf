player sidechat "Grabbing an Ammobox from ammo dump.. Please wait";
sleep 5;    
	_this = createVehicle ["BAF_OrdnanceBox", getMarkerPos "ammospawn", [], 0, "NONE"];
    clearWeaponCargoGlobal _this;
    clearMagazineCargoGlobal _this;
    _this addWeaponCargoGlobal ["ACE_M4_ACOG", 4];  
    _this addWeaponCargoGlobal ["ACE_M4_Eotech", 4]; 
    _this addWeaponCargoGlobal ["ACE_M72A2", 2];  
    _this addWeaponCargoGlobal ["ACE_M136_CSRS", 1];   
    _this addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 60];
    _this addMagazineCargoGlobal ["ACE_100Rnd_556x45_T_M249", 20];    
    _this addMagazineCargoGlobal ["100Rnd_762x51_M240", 15];
    _this addMagazineCargoGlobal ["ACE_200Rnd_556x45_T_M249", 10];  
    _this addMagazineCargoGlobal ["BAF_L109A1_HE", 10];    
    _this addMagazineCargoGlobal ["SmokeShell", 10];  
    _this addMagazineCargoGlobal ["SmokeShellGreen", 10];  
    _this addMagazineCargoGlobal ["SmokeShellRed", 10];    
    _this addMagazineCargoGlobal ["SmokeShellYellow", 10];  
    _this addMagazineCargoGlobal ["SmokeShellOrange", 10];  
    _this addMagazineCargoGlobal ["SmokeShellPurple", 10];    
    _this addMagazineCargoGlobal ["SmokeShellBlue", 10];        
    _this addMagazineCargoGlobal ["1Rnd_HE_M203", 20];
    _this addMagazineCargoGlobal ["1Rnd_Smoke_M203", 10];  
    _this addMagazineCargoGlobal ["1Rnd_SmokeGreen_M203", 10];      _this addMagazineCargoGlobal ["ACE_C4_M",5];
    _this addMagazineCargoGlobal ["PipeBomb",5];

    _this addMagazineCargoGlobal ["1Rnd_SmokeRed_M203", 10];
    _this addMagazineCargoGlobal ["1Rnd_SmokeYellow_M203", 10];
    _this addWeaponCargoGlobal ["ACE_Stretcher", 3];
    _this addMagazineCargoGlobal ["ACE_Bandage", 20];
    _this addMagazineCargoGlobal ["ACE_Epinephrine", 30];
    _this addMagazineCargoGlobal ["ACE_Medkit", 30];
    _this addMagazineCargoGlobal ["ACE_Morphine", 30];
    _this addMagazineCargoGlobal ["ACE_Bodybag", 5];

    _this addMagazineCargoGlobal ["ACE_Knicklicht_B", 10]; 
    _this addMagazineCargoGlobal ["ACE_Knicklicht_G", 10];
    _this addMagazineCargoGlobal ["ACE_Knicklicht_R", 10]; 
    _this addMagazineCargoGlobal ["ACE_Knicklicht_W", 10];
    _this addMagazineCargoGlobal ["ACE_Knicklicht_Y", 10]; 
    _this addMagazineCargoGlobal ["ACE_Knicklicht_IR", 10]; 
     
player sidechat "You've successfully grabbed an ammobox (Its behind you)";     
    exit;
