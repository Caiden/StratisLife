if (side player == civilian) then {
dvmission = 0;
if ((player getVariable "mymoney") < 5000) then
{
hint format["You need 5000 $ to buy this! You only have %1 $!",mymoney];
} else {
player setVariable["driverlicense",1];
player setVariable["gotlicense",(player getVariable "gotlicense") + 1];
player setVariable['mymoney',(player getVariable 'mymoney') - 5000];
hint format["You bought the Driver License for 5000 $! You have %1 $ left!",(player getVariable "mymoney")];
dvmission = 1;
licenses removeAction driverlicenseadd;
};
}
else {
hint "You need to be a civ to buy this license";
};
