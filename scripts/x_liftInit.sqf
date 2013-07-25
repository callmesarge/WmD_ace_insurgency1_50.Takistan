lift = 1;
lifted = 0;

while {true} do {
    if (!(vehicle player == player)) then {
        _chopper = vehicle player;
	    _chopperpos = getpos _chopper;
	    _chopperx = _chopperpos select 0;
     	_choppery = _chopperpos select 1;
    	_chopperz = _chopperpos select 2;
		_cargo = nearestObject [_chopper, "LandVehicle"];
		if ((_chopperz < 12) && (_chopperz > 7) && (_chopper distance _cargo < 12) && driver _chopper == player) then
		{
			if (lifted == 1) then {_chopper removeAction liftActionId;};
			_cargopos = getpos _cargo;
			_cargox = _cargopos select 0;
			_cargoy = _cargopos select 1;
			if ((lifted == 0) && ((_chopperx <= (_cargox + 10)) && (_chopperx >= (_cargox - 10))) && ((_choppery <= (_cargoy + 10)) && (_choppery >= (_cargoy - 10))) && (lift == 1)) then
			{
			    if (_chopper isKindOf "MH60S") then {
					if (_cargo isKindOf "LandVehicle") then {
						liftActionId = _chopper addAction ["Lift vehicle","scripts\attachCargo.sqf"];
						lift = 0;
					};
				};
			};
		}
		else 
		{
			if ((_chopper isKindOf "Helicopter" && (lift == 0)) && ((_chopperz > 7) or (_chopper distance _cargo > 5))) then {
				_chopper removeAction liftActionId;
				lift = 1;
				};
		};
	};
sleep 0.1;
};

if(true) exitWith {}; 