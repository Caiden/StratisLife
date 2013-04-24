if((player getVariable "riflelicense") >= 1) then
{
	getmymoney = player getVariable "mymoney";
	if(side player == west) then
	{
		if((lbCurSel 11173) == 0) then
		{
			displayname = "MXC mag";
			thisprice = 2000;
			amount = 1;
			vehname = "30Rnd_65x39_caseless_mag";
			if((player getVariable "mymoney") >= thisprice) then
			{
				player setVariable ['mymoney', getmymoney - thisprice];
				hint format['You bought a %1 for %2$! You have %3 $ left!',displayname,thisprice,(player getVariable 'mymoney')];
				player addMagazine vehname;
			}
			else
			{
				Hint format ["you have %1$ and need %2$",(player getVariable 'mymoney'),(thisprice)];
			};
		};
	};

	if(side player == civilian) then
	{
		if((lbCurSel 11173) == 0) then
		{
			displayname = "TRG20 mag";
			thisprice = 2000;
			amount = 1;
			vehname = "30Rnd_65x39_case_mag";
			if((player getVariable "mymoney") >= thisprice) then
			{
				player setVariable ['mymoney', getmymoney - thisprice];
				hint format['You bought a %1 for %2$! You have %3 $ left!',displayname,thisprice,(player getVariable 'mymoney')];
				player addMagazine vehname;
			}
			else
			{
				Hint format ["you have %1$ and need %2$",(player getVariable 'mymoney'),(thisprice)];
			};
		};
		if((lbCurSel 11173) == 1) then
		{
			displayname = "Katiba mag";
			thisprice = 2000;
			amount = 1;
			vehname = "30Rnd_65x39_caseless_green";
			if((player getVariable "mymoney") >= thisprice) then
			{
				player setVariable ['mymoney', getmymoney - thisprice];
				hint format['You bought a %1 for %2$! You have %3 $ left!',displayname,thisprice,(player getVariable 'mymoney')];
				player addMagazine vehname;
			}
			else
			{
				Hint format ["you have %1$ and need %2$",(player getVariable 'mymoney'),(thisprice)];
			};
		};
	};
}else
{
	hint "You need a rifle license to purchase this ammo";
};





