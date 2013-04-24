if{player in list trgCarSpawn1}then
{
player allowDamage false;
sleep 8;
player allowDamage true;
player execVM "safezonecar1.sqf";
}
else
{
	sleep 3;
	player execVM "safezonecar1.sqf";
};