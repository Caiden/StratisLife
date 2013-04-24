waitUntil{sleep 2; player in list trgswatbase};
if (side player == west) then {
player allowDamage false;
sleep 3;
player allowDamage true;
player execVM "savezoneswatbase.sqf";
}
else {
hint "You have been teleported out of the swat base";
player setPos [4449.64,6779,1.0];
player execVM "savezoneswatbase.sqf";
};
