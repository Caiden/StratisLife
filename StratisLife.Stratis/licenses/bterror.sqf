if (side player == civilian) then {
if ((player getVariable "mymoney") < 50000) then
{
hint format["You need 50000 $ to buy this! You only got %1 $!",(player getVariable "mymoney")];
} else {
player setVariable ['terrorlicense', 1];
player setVariable ['mymoney',(player getVariable "mymoney") - 50000];
player setVariable ['gotlicense',(player getVariable "gotlicense") + 1];
hint format["You bought the Terror License for 50000 $! You got %1 $ left!",(player getVariable "mymoney")];
licenses removeAction buyterrorlicense;
};
} else {
hint "You need to be a civilian to buy this license";
};