if (side player == civilian) then {
dvmission = 1;
if ((player getVariable "mymoney") < 15000) then
{
hint format["You need 15000 $ to buy this! You only have %1 $!",(player getVariable "mymoney")];
} else {
gunlicense = 1;
player setVariable["mymoney",(player getVariable "mymoney") - 15000];
player setVariable["gotlicense",(player getVariable "gotlicense") + 1];
player setVariable["gunlicense",1];
hint format["You bought the Pistol License for 15000 $! You have %1 $ left!",(player getVariable "mymoney")];
dvmission = 1;
licenses removeAction gunlicenseadd;
};
}
else {
hint "You need to be a civ to buy this license";
};