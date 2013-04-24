if (isDedicated) then {} else {
while {thirstLevel > 0} do
{
sleep 120;
thirstLevel = thirstLevel - 1;
if (thirstlevel == 20) then
{
hint "Thirst level is low, you will die if you don't drink anything soon"; 
};
if (thirstlevel == 0) then
{
player setDamage 0;
thirstLevel = 100;
};
};
};
 