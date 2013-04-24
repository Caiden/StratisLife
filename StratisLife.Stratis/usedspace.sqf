if((player getVariable "usedspace") >= 75)then
{
player GlobalChat format ["AUTOMESSAGE: i have %1 in my inventory",(player getVariable "usedspace")];
};
sleep 30;
ExecVM "usedspace.sqf";