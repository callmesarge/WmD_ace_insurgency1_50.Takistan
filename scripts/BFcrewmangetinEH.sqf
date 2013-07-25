_veh = _this select 0;
_pos = _this select 1;
_obj = _this select 2;

if (_pos == "driver" AND _obj == player) then {
	if ((typeOf _obj) != "US_Soldier_Crew_EP1") then {
		_fuel = fuel _veh;
		_veh setFuel 0;
		unAssignVehicle _obj;
		_obj action ["getOut", _veh];
		waitUntil {sleep 1; (fuel _veh) == 0};
		_veh setFuel _fuel;
		hint "Only Crewman can use armoured vehicles";
	};
};

if (_pos == "gunner" AND _obj == player) then {
	if ((typeOf _obj) != "US_Soldier_Crew_EP1") then {
		_fuel = fuel _veh;
		_veh setFuel 0;
		unAssignVehicle _obj;
		_obj action ["getOut", _veh];
		waitUntil {sleep 1; (fuel _veh) == 0};
		_veh setFuel _fuel;
		hint "Only Crewman can use armoured vehicles";
	};
};

if (_pos == "loader" AND _obj == player) then {
	if ((typeOf _obj) != "US_Soldier_Crew_EP1") then {
		_fuel = fuel _veh;
		_veh setFuel 0;
		unAssignVehicle _obj;
		_obj action ["getOut", _veh];
		waitUntil {sleep 1; (fuel _veh) == 0};
		_veh setFuel _fuel;
		hint "Only Crewman can use armoured vehicles";
	};
};

if (_pos == "commander" AND _obj == player) then {
	if ((typeOf _obj) != "US_Soldier_Crew_EP1") then {
		_fuel = fuel _veh;
		_veh setFuel 0;
		unAssignVehicle _obj;
		_obj action ["getOut", _veh];
		waitUntil {sleep 1; (fuel _veh) == 0};
		_veh setFuel _fuel;
		hint "Only Crewman can use armoured vehicles";
	};
};


if (_pos == "turret" AND _obj == player) then {
	if ((typeOf _obj) != "US_Soldier_Crew_EP1") then {
		_fuel = fuel _veh;
		_veh setFuel 0;
		unAssignVehicle _obj;
		_obj action ["getOut", _veh];
		waitUntil {sleep 1; (fuel _veh) == 0};
		_veh setFuel _fuel;
		hint "Only pilots can operate ariel vehicles";
	};
};


if (_pos == "crew" AND _obj == player) then {
	if ((typeOf _obj) != "US_Soldier_Crew_EP1") then {
		_fuel = fuel _veh;
		_veh setFuel 0;
		unAssignVehicle _obj;
		_obj action ["getOut", _veh];
		waitUntil {sleep 1; (fuel _veh) == 0};
		_veh setFuel _fuel;
		hint "Only Crewman can use armoured vehicles";
	};
};