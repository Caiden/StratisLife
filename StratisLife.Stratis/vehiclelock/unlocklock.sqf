_veh = _this select 0;
_it = locked _veh;

if (_it == 2) then {
_veh lock false;
hint "Vehicle unlocked";
};

if (_it == 1) then {
_veh lock true;
hint "Vehicle locked";
};