if((player in list trgCarSpawn1) or (player in list Safe_Zone) or (player in list Cop_base))then
{
    if(player in list Cop_base)then
    {
        if (side player != west) then 
        {
            hint "You have been teleported out of the cop base";
            player setPos [3254.87,5816.15,1.0];
        };
    };
    player allowDamage false;
    sleep 3;
    player allowDamage true;
    player execVM "safezone.sqf";
}
else
{
    sleep 3;
    player execVM "safezone.sqf";
};