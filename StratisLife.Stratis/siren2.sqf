if (sirenloop == 1) then 
{
	_vehicle = vehicle player;
	If (_vehicle == player) then {player execVM "siren2.sqf";}
	else 
	{
		test500 = [[_vehicle], "sirenFunction", nil, false] spawn BIS_fnc_MP;
		sleep 5.8;
		player execVM "siren2.sqf";
	};
}
else 
{
player execVM "siren2.sqf";
};


