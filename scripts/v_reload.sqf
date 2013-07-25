//Insurgency15thMEU(SOC)

_obj = _this select 0;
_pad = _this select 1;
_type = typeof _obj;
_wait = 1;

_long = ["LAV25","AAV","HMMWV","HMMWV_Mk19","HMMWV_TOW","HMMWV_Armored","M1A1"];

if (_type in _long) then {
_wait = 75; 
} else {
_wait = 30; 
};

if (_obj isKindOf "ParachuteBase") exitWith {};
if (!alive _obj) exitWith {};
[PAPABEAR,nil,rSIDECHAT,format ["%1 BROUGHT %2 IN FOR SERVICE", name (driver _obj), (typeof _obj)]] call RE;
_obj vehiclechat "Your Vehicle is being serviced, This may take awhile. You will be alerted when its finished.";
_obj setfuel 0;
_obj setVelocity [0, 0, 0];
sleep 0.5;
(driver _obj) action["Eject",_obj];
_obj lockdriver true;
sleep 1;
if (!alive _obj) exitWith {};
_obj setfuel 0;
sleep _wait;
_obj vehiclechat "Repairs completed.";
_obj setdamage 0;
_obj setvehiclearmor 1;
_obj setrepaircargo 1;
(driver _obj) action["Eject",_obj];
_obj lockdriver true;
if (!alive _obj) exitWith {};
sleep _wait;
_obj vehiclechat "Rearming completed.";
_obj setvehicleammo 1;
_obj setammocargo 1;
(driver _obj) action["Eject",_obj];
_obj lockdriver true;
if (!alive _obj) exitWith {};
sleep _wait;
_obj vehiclechat "Refueling completed.  Finished servicing vehicle";
[PAPABEAR,nil,rSIDECHAT,format ["VEHICLE SERVICE COMPLETED ON %1",(typeof _obj)]] call RE;
_obj setfuel 1;
_obj setfuelcargo 1;
_obj lockdriver false;