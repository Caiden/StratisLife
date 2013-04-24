dvmission = 0;
if ((player getVariable "mymoney") < 40000) then
{
hint format["You need 40000 $ to buy this! You only got %1 $!",mymoney];
} else {
player setVariable ['CopAirlicense', 1];
player setVariable ['airlicense', 1];
player setVariable["mymoney",(player getVariable "mymoney") - 40000];
hint format["You bought the COPHELI License for 40000 $! You have %1 $ left!",(player getVariable "mymoney")];
dvmission = 1;
licenses removeAction copchopperadd;
};