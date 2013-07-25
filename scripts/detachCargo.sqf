lifted = 0;
_chopper = vehicle player;
_cargo = nearestObject [_chopper, "LandVehicle"];
_chopper removeAction SganciaActionId;
detach _cargo;
vehicle player vehicleChat "Vehicle dropped";
if(true) exitWith {}; 