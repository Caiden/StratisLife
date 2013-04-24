_primarywep = weapons player;
_primarywep2 = _primarywep select 0;
_pplayer = player;

if ((side player) == civilian)then 
{
	if (bankcanberobbed == 1) then 
	{
		if !(_primarywep2 == "<null>") then 
		{
			bankcanberobbed = 0;
			publicvariable "bankcanberobbed";
			["", "robbanksirenFunction", nil, false] spawn BIS_fnc_MP;
			hint "Cracking the safe! Dont bail now.";
			_number1= (floor(random 3) + 1);
			_number2 = ceil(random 30);
			sleep (_number1 * _number2);
			hint "Save cracked";
			if (player in list trgBank) then 
			{
				[[_pplayer], "robbankFunction", nil, false] spawn BIS_fnc_MP;
			}
			else 
			{
				hint "Not in the bank, robbery cancelled";
			};
		}
		else 
		{
			hint "You need a weapon to rob the bank";
		};
	}
	else 
	{
		hint "Bank has recently been robbed";
	};

}
else 
{
	hint "You need to be a civilian to rob the bank";
};
