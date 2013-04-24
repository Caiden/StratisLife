dvmission = 0;
if ((player getVariable "mymoney") < 5000) then
{
hint format["You need 5000 $ to buy this! You only have %1 $!",(player getVariable "mymoney")];
} else {
player setVariable["boatlicense",1];
player setVariable["gotlicense",(player getVariable "gotlicense") + 1];
player setVariable['mymoney',(player getVariable 'mymoney') - 5000];
hint format["You bought the Boat License for 5000 $! You have %1 $ left!",(player getVariable "mymoney")];
dvmission = 1;
licenses removeAction boatlicenseadd;
};