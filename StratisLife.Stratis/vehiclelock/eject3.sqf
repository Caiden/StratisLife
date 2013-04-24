_carofperson = _this select 0;
if (player IN _carofperson) then {
player action ["EJECT", vehicle player]; 
hint "You have been pulled out of your car!";
};