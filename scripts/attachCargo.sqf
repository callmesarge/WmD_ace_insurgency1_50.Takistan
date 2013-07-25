_chopper removeAction liftActionId;
lifted = 1;
dropcargo = 0;
_chopper = vehicle player;
_cargo = nearestObject [_chopper, "LandVehicle"];
_cargo attachTo [_chopper, [0,0,-9]];
vehicle player vehicleChat "Vehicle lifted";
SganciaActionId = _chopper addAction ["Drop Cargo","scripts\detachCargo.sqf"];
if(true) exitWith {}; 