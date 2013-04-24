_rnumber = ceil(random 2);

if (_rnumber == 1) then {
if (havedmission == 0) then {
hint "Bring this Package to DP 1!";
player groupchat "Bring this Package to DP 1!";
havedmission = 1;
dp1civ addAction ["Finish Delivery","taxi\dp1.sqf"];
}
else 
{ 
if (havedmission == 1) then {
hint format["You already have a Delivery Mission at DP1"];
};
};
};

if (_rnumber == 2) then {
if (havedmission == 0) then {
hint "Bring this Package to DP 2!";
player groupchat "Bring this Package to DP 2!";
havedmission = 2;
_dmissionloc = 2;
dp2civ addAction ["Finish Delivery","taxi\dp2.sqf"];
}
else
{
if (havedmission == 2) then {
hint format["You already have a Delivery Mission at DP2"];
};
};
};


