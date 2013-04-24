if (mymoney < 50000) then {
hint format["You need 50000 $ to buy this! You have %1 $!",mymoney];
}
else
{
if (airlicense > 0) then {
_veh = "O_Ka60_Unarmed_F" createVehicle (getMarkerPos "civchopperspawn");
_veh lock true;
_player = player;
vehiclelock = _veh addAction ["Unlock / Lock","vehiclelock\unlocklock.sqf",[_player],7,true,true,"","(_target distance _this) < 3"];
[[_veh,_player], "vehiclepulloutFunction", nil, true, true] spawn BIS_fnc_MP;
mymoney = mymoney - 50000;
hint format["You bought the Ka60 Black for 50000 $! You have %1 $ left!",mymoney];
} 
else
{
hint "You need an Air license to buy this!";
};
};
