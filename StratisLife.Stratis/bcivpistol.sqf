if (side player == civilian) then {
if ((player getVariable "mymoney") < 10000) then {
hint format["You need 10000 $ to buy this! You only got %1 $!",(player getVariable "mymoney")];
} else {
if ((player getVariable "gunlicense") < 1) then {
hint "You need a Gunlicense to buy this!";
} else {
civgunbox addWeaponCargo ["hgun_Rook40_F",1];
player setVariable["mymoney",(player getVariable "mymoney") - 10000];
hint format["You bought a Pistol for 10000 $! You got %1 $ left!",(player getVariable "mymoney")];
};
};
} else {
hint "You need to be a civilian to buy this weapon";
};