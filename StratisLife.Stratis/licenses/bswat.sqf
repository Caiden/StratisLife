if ((player getVariable "mymoney") < 100000) then
{
hint format["You need 100000 $ to buy this! You only have %1 $!",(player getVariable "mymoney")];
} else {
player setVariable ['swatlicense', 1];
player setVariable["mymoney",(player getVariable "mymoney") - 100000];
player setVariable["gotlicense",(player getVariable "gotlicense") + 1];
hint format["You bought the SWAT-License for 100000 $! You have %1 $ left!",(player getVariable "mymoney")];
licenses removeAction swatadd;
};