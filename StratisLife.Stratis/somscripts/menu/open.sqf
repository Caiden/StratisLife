player removeaction act1;
player removeaction act2;
player removeaction act3;
player removeaction act4;
player removeaction act5;
player removeaction act6;
player removeaction act7;
player removeaction act8;
player removeaction act9;
player removeaction act10;
player removeaction act11;

if ambush then {act5 = player addaction ["---COP MENU---", "copscripts\1.sqf", [], 1, false, true, "", ""]} else {sleep 1; hint "not available"};
sleep 0.02;
if ambush then {act7 = player addaction ["Impound nearest car", "impound\impound.sqf", [], 1, false, true, "", ""]} else {sleep 1; hint "not available"};
sleep 0.02;
if attack then { act2 = player addaction ["Pullout civs in nearest car", "vehiclelock\eject.sqf", [], 1, false, true, "", ""]} else {sleep 1; hint "not available"};
sleep 0.02;
if rescue then { act3 = player addaction ["Ticket player [Not working yet]", "copscripts\3.sqf", [], 1, false, true, "", ""]} else {sleep 1; hint "not available"};
sleep 0.02;
if defend then { act4 = player addaction ["Cop Option 4", "copscripts\4.sqf", [], 1, false, true, "", ""]} else {sleep 1; hint "not available"};
sleep 0.02;
if ambush then {act6 = player addaction ["---COP MENU---", "copscripts\1.sqf", [], 1, false, true, "", ""]} else {sleep 1; hint "not available"};
sleep 0.02;


act11 = player addaction ["Close Cop Menu", "somscripts\menu\close_menu.sqf", [], 1, false, true, "", ""];