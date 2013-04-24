_buildingarray = nearestObjects [getPos building_prot, ["Static"], 3000];
{
    _x allowDamage false;
} forEach _buildingarray;
