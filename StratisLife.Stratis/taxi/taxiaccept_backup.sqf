if ( dvmission > 0) then {
hint "Bring this USB Stick to DP 1!";
dp1civ addAction ["Finish Delivery","taxi\dp1.sqf"];
} else {
hint "Bring this USB Stick to DP2!";
dp2civ addAction ["Finish Delivery","taxi\dp2.sqf"];
}
};
