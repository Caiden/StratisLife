_playerasinrespawn = _this select 0;
if (player == _playerasinrespawn) then {	
	player removeAction 0;
	player removeAction 1;
	player removeAction 2;
	player removeAction 3;
	player removeAction 4;
	player removeAction 5;
	player removeAction 6;
	player removeAction 7;
	player removeAction 8;
	player removeAction 9;
	player removeAction 10;
	player removeAction 11;
	player removeAction hero;
	player removeAction	whale;
	player removeAction	fish;
	player removeAction	apple1;
	player removeAction	apple2;
	player removeAction personalinv;
	hint "Respawning...";
    waitUntil {!alive player};
    _weapons = weapons player;
    _magazines = magazines player;
player execVM "onRespawncops.sqf";
    waitUntil {alive player};
    _p = player;
    removeAllItems _p;
    removeAllWeapons _p;
    {_p addMagazine _x} forEach _magazines;
    {_p addWeapon _x} forEach _weapons;
    _primw = primaryWeapon _p;
    if (_primw != "") then {
        _p selectWeapon _primw;
        // Fix for weapons with grenade launcher
        _muzzles = getArray(configFile>>"cfgWeapons" >> _primw >> "muzzles");
        _p selectWeapon (_muzzles select 0);
};
};