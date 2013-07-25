
private ["_loader"];
_loader = _this select 0;
if (vehicle _loader == player) exitWith{hint "Your not in a Vehicle!";};

truckzid1 = _loader addAction [("<t color=""#FF0000"">" + "Service" + "</t>"),"scripts\v_reload.sqf",1];