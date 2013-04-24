waitUntil{sleep 2; player in list Cop_base};
if (side player == west) then {
player allowDamage false;
sleep 3;
player allowDamage true;
player execVM "safezonecopbase.sqf";
}
else {
hint "You have been teleported out of the cop base";
player setPos [3254.87,5816.15,1.0];
player execVM "safezonecopbase.sqf";
};




