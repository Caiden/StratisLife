if ((player getVariable "mymoney") < 30000) then {
hint format["You need 30000 $ to buy this! You have %1 $!",(player getVariable "mymoney")];
}
else
{
if (airlicense > 0) then {
_veh = "B_MH9_F" createVehicle (getMarkerPos "civchopperspawn");
_veh lock true;
_player = player;
vehiclelock = _veh addAction ["Unlock / Lock","vehiclelock\unlocklock.sqf",[_player],7,true,true,"","(_target distance _this) < 3"];
[[_veh,_player], "vehiclepulloutFunction", nil, true, true] spawn BIS_fnc_MP;
player setVariable ['mymoney', getmymoney - 30000];
hint format["You bought the Ka60 Black for 30000 $! You have %1 $ left!",(player getVariable "mymoney")];
} 
else
{
hint "You need an Air license to buy this!";
};
};
