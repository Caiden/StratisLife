if (side player == civilian) then {
dvmission = 0;
if ((player getVariable "mymoney") < 30000) then
{
hint format["You need 30000 $ to buy this! You only have %1 $!",(player getVariable "mymoney")];
} else {
player setVariable["airlicense",1];
player setVariable["gotlicense",(player getVariable "gotlicense") + 1];
player setVariable["mymoney",(player getVariable "mymoney") - 30000];
hint format["You bought the Airlicense for 30000 $! You have %1 $ left!",(player getVariable "mymoney")];
dvmission = 1;
licenses removeAction driverlicenseadd;
};
}
else {
hint "You need to be a civ to buy this license";
};
