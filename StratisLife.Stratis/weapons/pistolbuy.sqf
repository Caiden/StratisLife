if(handgunWeapon player == "") then
{
	if((player getVariable "pistollicense") >= 1) then
	{
		getmymoney = player getVariable "mymoney";
		if(side player == west) then
		{
			if((lbCurSel 11169) == 0) then
			{
				displayname = "Tazer";
				thisprice = 5000;
				vehname = "hgun_P07_F";
				if((player getVariable "mymoney") >= thisprice) then
				{
					player setVariable ['mymoney', getmymoney - thisprice];
					hint format['You bought a %1 for %2$! You have %3 $ left!',displayname,thisprice,(player getVariable 'mymoney')];
					player addweapon vehname;
				}
				else
				{
					Hint format ["you have %1$ and need %2$",(player getVariable 'mymoney'),(thisprice)];
				};
			};
		};
	
		if(side player == civilian) then
		{
			if((lbCurSel 11169) == 0) then
			{
				displayname = "Rook40";
				thisprice = 10000;
				vehname = "hgun_Rook40_F";
				if((player getVariable "mymoney") >= thisprice) then
				{
					player setVariable ['mymoney', getmymoney - thisprice];
					hint format['You bought a %1 for %2$! You have %3 $ left!',displayname,thisprice,(player getVariable 'mymoney')];
					player addweapon vehname;
				}
				else
				{
					Hint format ["you have %1$ and need %2$",(player getVariable 'mymoney'),(thisprice)];
				};
			};
			if((lbCurSel 11169) == 1) then
			{
				displayname = "P07";
				thisprice = 12500;
				vehname = "hgun_P07_F";
				if((player getVariable "mymoney") >= thisprice) then
				{
					player setVariable ['mymoney', getmymoney - thisprice];
					hint format['You bought a %1 for %2$! You have %3 $ left!',displayname,thisprice,(player getVariable 'mymoney')];
					player addweapon vehname;
				}
				else
				{
					Hint format ["you have %1$ and need %2$",(player getVariable 'mymoney'),(thisprice)];
				};
			};
		};
	}else
	{
		hint "You need a pistol license to purchase this gun";
	};
}else
{
	hint "You already have a pistol inhand";
};





