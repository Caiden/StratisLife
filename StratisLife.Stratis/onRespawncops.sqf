sleep 10;
if (side player == west) then {
if ( (!isServer) && (player != player) ) then
{
waitUntil {player == player};
waitUntil {time > 10};
};
if !(isnull player) then {
waitUntil { alive player };
copinventory = player addaction ["Personal Inventory", "copinventory.sqf", [], 1, false, false, "", ""];
null = [] execvm "somstart.sqf";
if (playerSide == west) then { act1 = player addaction ["Cop Menu [W.I.P]", "somscripts\menu\open.sqf", [], 1, false, false, "", ""]};
};
};