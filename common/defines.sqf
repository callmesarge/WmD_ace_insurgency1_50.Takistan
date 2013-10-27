#define DEBUG		false

//Constants
#define VIEWDISTANCE		1500
#define SPAWNRANGE 			500
#define WEP_DESPAWN_RANGE	100

//Misc Functions
// getDirTo - vector of X towards Y in degrees while Y can be either a position or an object; 
// if X is in the East of Y, vector is from 0.01° to 179.99° and if on the West it's from -0.01° to -179.99° (N is 0°, S is 180°)
#define getDirTo(X,Y)       (((if(typeName Y == "OBJECT")then{getPosATL Y}else{Y} select 0) - (getPosATL X select 0)) atan2 ((if(typeName Y == "OBJECT")then{getPosATL Y}else{Y} select 1) - (getPosATL X select 1)))  

//Params
if (isNil "paramsArray") then {
    if (isClass (missionConfigFile/"Params")) then {
        for "_i" from 0 to (count (missionConfigFile/"Params") - 1) do {
            _paramName = configName ((missionConfigFile >> "Params") select _i);
            missionNamespace setVariable [_paramName, getNumber (missionConfigFile >> "Params" >> _paramName >> "default")];
        };
    };
} else {
    for "_i" from 0 to (count paramsArray - 1) do {
        missionNamespace setVariable [configName ((missionConfigFile >> "Params") select _i), paramsArray select _i];
    };
}; 

#define startLocation       (if(isDead(MHQ))then{HQ}else{MHQ})
#define startPos            (getPosATL fieldHospital)
#define livesLeft           (startLives - westDeaths)

//AI
#define infDeleteTime		30

//String Functions
#define squadNumber(X)      call compile toString[toArray(str X) select 7]
#define squadString(X)      ("Hitman1" + str squadNumber(X))
#define squadUnitStrings(X)	[X+"1",X+"2",X+"3",X+"4",X+"5",X+"6",X+"7",X+"8",X+ "9",X+"0"]
#define unitNumber(X)		call compile toString[toArray(str X) select (count toArray(str X) - 1)]
#define vehicleSquad(X)     (call compile ("Hitman1" + str unitNumber(X)))
#define getName(X)          (playerNames select (westPlayerStrings find str X))
#define squadLeader(X)      (squadString(X)+"1")

// these macros do NOT return the actual name of the unit - these are only for text references
#define squadVictor(X)      ("Victor-1-" + str squadNumber(X))
#define vehicleID(X)		("Hitman-1-" + str unitNumber(X))
#define squadID(X)          ("Hitman-1-" + str squadNumber(X))
#define unitID(X)           ("Hitman-1-" + str squadNumber(X) + "-" + str unitNumber(X))

#define victorID(X)         (\
if(typeOf X == ATVTYPE)then{"ATV-1-" + str unitNumber(X)}else{\
if(typeOf X == HELITYPE)then{"Heli"}else{\
if(typeOf X == MHQTYPE)then{"MHQ"}else{\
"Victor-1-" + str unitNumber(X)}}})

#define IEDList             ["BAF_ied_v1","BAF_ied_v2","BAF_ied_v3","BAF_ied_v4"]
#define cacheType 			"GuerillaCacheBox_EP1"
#define ammoBoxType			"UNBasicWeapons_EP1"
#define westVehicles 		[humv11,humv12,humv13,humv14,humv15,humv16,atv11,atv12,atv13,atv14,atv15,heli,MHQ]
#define westVehicleStrings	["humv11","humv12","humv13","humv14","humv15","humv16","atv11","atv12","atv13","atv14","atv15","heli","MHQ"]
#define westPlayerStrings	["Hitman111","Hitman112","Hitman113","Hitman114","Hitman115",\
							"Hitman121","Hitman122","Hitman123","Hitman124","Hitman125","Hitman126","Hitman127","Hitman128","Hitman129","Hitman120",\
							"Hitman131","Hitman132","Hitman133","Hitman134","Hitman135","Hitman136","Hitman137","Hitman138","Hitman123","Hitman130",\
							"Hitman141","Hitman142","Hitman143","Hitman144","Hitman145","Hitman146","Hitman147","Hitman148","Hitman149","Hitman140",\
							"Hitman151","Hitman152","Hitman153","Hitman154","Hitman155",\
							"Hitman161","Hitman162","Hitman163","Hitman164","Hitman165"]
#define eastPlayerStrings   ["east1","east2","east3","east4"]
#define westAllClasses		(westSoldierClasses + westVehicleClasses)
#define eastStationaryGuns	["Igla_AA_pod_TK_EP1","KORD_high_UN_EP1","DSHKM_TK_INS_EP1","ZU23_TK_INS_EP1","AGS_TK_INS_EP1"]
#define eastVclClasses		["BRDM2_TK_EP1","M113_TK_EP1","BTR60_TK_EP1","LandRover_MG_TK_INS_EP1",\
							"LandRover_SPG9_TK_INS_EP1","T34_TK_EP1","T55_TK_EP1","KORD_high_UN_EP1",\
							"DSHKM_TK_INS_EP1","ZU23_TK_INS_EP1","AGS_TK_INS_EP1","Mi24_D_TK_EP1","UH1H_TK_EP1"]
#define eastRanks			["CAPTAIN","LIEUTENANT","SERGEANT","CORPORAL","PRIVATE"] 
#define eastInfClasses		[\
"TK_INS_Warlord_EP1",\
"TK_INS_Soldier_TL_EP1",\
"TK_INS_Bonesetter_EP1",\
"TK_INS_Soldier_AT_EP1",\
"TK_INS_Soldier_AT_EP1",\
"TK_INS_Soldier_AA_EP1",\
"TK_INS_Soldier_MG_EP1",\
"TK_INS_Soldier_AR_EP1",\
"TK_INS_Soldier_AR_EP1",\
"TK_INS_Soldier_AAT_EP1",\
"TK_INS_Soldier_EP1",\
"TK_INS_Soldier_2_EP1",\
"TK_INS_Soldier_3_EP1",\
"TK_INS_Soldier_4_EP1"\
]

#define eastAllClasses      (eastInfClasses + eastStationaryGuns + eastVclClasses)

//////class definitions						//Change vehicles, Helis to ACE
#define westVehicleClasses  	["hilux1_civil_3_open_EP1","MMT_Civ","M1030_US_DES_EP1","ACE_HMMWV_M2_USARMY","ACE_HMMWV_MK19_USARMY","HMMWV_Ambulance_DES_EP1","Lada2_TK_CIV_EP1","HMMWV_M1151_M2_DES_EP1","HMMWV_M998A2_SOV_DES_EP1","M1126_ICV_mk19_EP1","M1126_ICV_M2_EP1","CH_47F_EP1","UH1Y","ACE_MH6","BAF_Merlin_HC3_D","AW159_Lynx_BAF","MV22","PRACS_Pinz_AA","HMMWV_M1151_M2_DES_EP1","BAF_Jackal2_GMG_D","BAF_Jackal2_L2A1_D","LandRover_CZ_EP1","LandRover_Special_CZ_EP1","BAF_Offroad_D","ArmoredSUV_PMC","SUV_PMC","SUV_PMC_BAF","HMMWV_M998A2_SOV_DES_EP1","BAF_Jackal2_GMG_D","BAF_Jackal2_L2A1_D","LandRover_Special_CZ_EP1","BAF_Offroad_D","ArmoredSUV_PMC","SUV_PMC","ACE_ATV_Honda_Desert"]
#define westSoldierClasses 		["US_Soldier_TL_EP1","US_Soldier_Medic_EP1","US_Soldier_LAT_EP1","US_Soldier_EP1","US_Soldier_GL_EP1","US_Soldier_SniperH_EP1","US_Soldier_Pilot_EP1","BAF_Soldier_TL_DDPM","BAF_Soldier_Medic_DDPM","BAF_Soldier_AT_DDPM","BAF_Soldier_GL_DDPM","BAF_Soldier_MG_DDPM","BAF_Soldier_Officer_DDPM","BAF_Pilot_DDPM","BAF_Soldier_Sniper_MTP","US_Delta_Force_TL_EP1","US_Delta_Force_Medic_EP1","US_Delta_Force_MG_EP1","US_Delta_Force_EP1","US_Delta_Force_Night_EP1","US_Delta_Force_AR_EP1","USMC_Soldier_TL","USMC_Soldier_Medic","USMC_Soldier_LAT","USMC_Soldier_AR","USMC_Soldier_GL","USMC_SoldierS_Sniper","GER_Soldier_TL_EP1","GER_Soldier_Medic_EP1","GER_Soldier_Scout_EP1","GER_Soldier_EP1","GER_Soldier_MG_EP1","FR_TL","FR_Corpsman","FR_AR","FR_Assault_R","FR_Assault_GL"]

//////unit definitions
#define ATVTYPE         (\
if(INS_ATVType1 == 1)then{"ACE_ATV_Honda_Desert"}else{\
if(INS_ATVType1 == 2)then{"PRACS_Pinzgauer_patrol"}else{\
if(INS_ATVType1 == 3)then{"PRACS_Pinzgauer_SFOD"}else{\
if(INS_ATVType1 == 4)then{"PRACS_M250_open"}else{\
if(INS_ATVType1 == 5)then{"PRACS_HMMWV_M2"}else{\
if(INS_ATVType1 == 6)then{"PRACS_Pinz_AA"}else{\
if(INS_ATVType1 == 7)then{"PRACS_ATV"}else{\
if(INS_ATVType1 == 8)then{"PRACS_HMMWV_M"}else{\
if(INS_ATVType1 == 10)then{"PRACS_HMMWV_MK19"}else{\
"PRACS_HMMWV"}}}}}}}}})

#define HELITYPE         (\
if(INS_AdvanceType == 1)then{"PRACS_AB212_CAS"}else{\
if(INS_AdvanceType == 2)then{"PRACS_CH53"}else{\
if(INS_AdvanceType == 3)then{"PRACS_CH46"}else{\
if(INS_AdvanceType == 4)then{"PRACS_MH6J"}else{\
if(INS_AdvanceType == 5)then{"PRACS_RAH6"}else{\
if(INS_AdvanceType == 6)then{"PRACS_AB212_CAS_MAT"}else{\
"PRACS_puma330_MG"}}}}}})

	#define PILOTTYPE          "US_Soldier_Pilot_EP1"
	
	#define CAR1TYPE         (\
if(INS_CarType1 == 1)then{"PRACS_Pinzgauer_patrol"}else{\
if(INS_CarType1 == 2)then{"PRACS_Pinzgauer_SFOD"}else{\
if(INS_CarType1 == 3)then{"PRACS_M250_open"}else{\
if(INS_CarType1 == 4)then{"PRACS_HMMWV_M2"}else{\
if(INS_CarType1 == 5)then{"PRACS_Pinz_AA"}else{\
if(INS_CarType1 == 6)then{"PRACS_ATV"}else{\
if(INS_CarType1 == 7)then{"PRACS_HMMWV_M"}else{\
if(INS_CarType1 == 8)then{"PRACS_HMMWV_MK19"}else{\
"PRACS_HMMWV"}}}}}}}})

	#define CAR2TYPE         (\
if(INS_CarType2 == 1)then{"PRACS_Pinzgauer_patrol"}else{\
if(INS_CarType2 == 2)then{"PRACS_Pinzgauer_SFOD"}else{\
if(INS_CarType2 == 3)then{"PRACS_M250_open"}else{\
if(INS_CarType2 == 4)then{"PRACS_HMMWV_M2"}else{\
if(INS_CarType2 == 5)then{"PRACS_Pinz_AA"}else{\
if(INS_CarType2 == 6)then{"PRACS_ATV"}else{\
if(INS_CarType2 == 7)then{"PRACS_HMMWV_M"}else{\
if(INS_CarType2 == 8)then{"PRACS_HMMWV_MK19"}else{\
"PRACS_HMMWV"}}}}}}}})

	#define MHQTYPE            "M1130_CV_EP1"

#define humvMagazines [\
["ACE_30Rnd_556x45_SB_Stanag",12],\
["Stinger",2],\
["SMAW_HEDP",6],\
["20Rnd_B_AA12_HE",6],\
["20Rnd_B_AA12_Pellets",6],\
["ACE_5Rnd_127x99_B_TAC50",12],\
["200Rnd_556x45_M249",4],\
["PipeBomb",2],\
["ACE_Rope_TOW_M_5",1],\
["HandGrenade_West",4],\
["1Rnd_HE_M203",6],\
["ACE_Bandage",12],\
["ACE_Morphine",12],\
["ACE_Epinephrine",12],\
["ACE_Medkit",6]\
]

#define humvItems [\
["ACE_HK416_D14_COMPM3_M320",2],\
["AA12_PMC",1],\
["SMAW",1],\
["Stinger",1],\
["ACE_TAC50",1],\
["ACE_JerryCan_Dummy_15",1]\
]

#define heliMagazines [\
["ACE_30Rnd_556x45_SB_Stanag",12],\
["Stinger",2],\
["SMAW_HEDP",6],\
["20Rnd_B_AA12_HE",6],\
["20Rnd_B_AA12_Pellets",6],\
["ACE_5Rnd_127x99_B_TAC50",12],\
["200Rnd_556x45_M249",4],\
["PipeBomb",2],\
["HandGrenade_West",4],\
["SmokeShell",2],\
["ACE_M7A3",2],\
["ACE_ANM14",2],\
["ACE_M84",2],\
["IR_Strobe_Target",2],\
["ACE_Bandage",7],\
["ACE_Morphine",7],\
["ACE_Epinephrine",7],\
["ACE_Medkit",4]\
]

#define heliItems [\
["ACE_Stretcher",2],\
["ACE_ParachutePack",10],\
["ACE_ParachuteRoundPack",10],\
["ACE_MP5A5",2],\
["ACE_JerryCan_Dummy_15",1]\
]
