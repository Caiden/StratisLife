if (side player == civilian) then {
dvmission = 0;
if ((player getVariable 'mymoney') < 10000) then
{
hint format["You need 10000 $ to buy this! You only got %1 $!",mymoney];
} else {
player setVariable["heroinprocesslicense",1];
gotlicense = gotlicense +1;
player setVariable['mymoney',(player getVariable 'mymoney') - 10000];
hint format["You bought the Heroin Processing License for 10000 $! You have %1 $ left!",(player getVariable 'mymoney')];
dvmission = 1;
processheroin removeAction heroinlicenseadd;
};
}
else {
hint "You need to be a civ to buy this license";
};