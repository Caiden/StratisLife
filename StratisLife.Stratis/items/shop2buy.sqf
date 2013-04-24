getmymoney = player getVariable "mymoney";
if(side player == west) then
{
	if((lbCurSel 11191) == 0) then
	{
		hint "Whats the Officer problem?";
		sleep 0.3;
		hint "i've had no buisness in days.";
	};
};
if(side player == civilian) then
{
	if((lbCurSel 11191) == 0) then
	{
		displayname = "Wetsuit";
		thisprice = 10000;
		vehname = ['U_B_Wetsuit',1];
		if((player getVariable "mymoney") >= thisprice) then
		{
			player setVariable ['mymoney', getmymoney - thisprice];
			hint format['You bought a %1 for %2$! You have %3 $ left!',displayname,thisprice,(player getVariable 'mymoney')];
			scubashopcrate_1 addItemcargo vehname;
		}
		else
		{
			Hint format ["you have %1$ and need %2$",(player getVariable 'mymoney'),(thisprice)];
		};
	};
	if((lbCurSel 11191) == 1) then
	{
		displayname = "Rebreather";
		thisprice = 7500;
		vehname = ["V_RebreatherB",1];
		if((player getVariable "mymoney") >= thisprice) then
		{
			player setVariable ['mymoney', getmymoney - thisprice];
			hint format['You bought a %1 for %2$! You have %3 $ left!',displayname,thisprice,(player getVariable 'mymoney')];
			scubashopcrate_1 addItemcargo vehname;
		}
		else
		{
			Hint format ["you have %1$ and need %2$",(player getVariable 'mymoney'),(thisprice)];
		};
	};
	if((lbCurSel 11191) == 2) then
	{
		displayname = "Goggles";
		thisprice = 7500;
		vehname = "G_Diving";
		if((player getVariable "mymoney") >= thisprice) then
		{
			player setVariable ['mymoney', getmymoney - thisprice];
			hint format['You bought a %1 for %2$! You have %3 $ left!',displayname,thisprice,(player getVariable 'mymoney')];
			player addGoggles vehname;
		}
		else
		{
			Hint format ["you have %1$ and need %2$",(player getVariable 'mymoney'),(thisprice)];
		};
	};
	if((lbCurSel 11191) == 3) then
	{
		displayname = "Diving pack";
		thisprice = 5000;
		vehname = ["B_AssaultPack_blk",1];
		if((player getVariable "mymoney") >= thisprice) then
		{
			player setVariable ['mymoney', getmymoney - thisprice];
			hint format['You bought a %1 for %2$! You have %3 $ left!',displayname,thisprice,(player getVariable 'mymoney')];
			scubashopcrate_1 addBackpackcargo vehname;
		}
		else
		{
			Hint format ["you have %1$ and need %2$",(player getVariable 'mymoney'),(thisprice)];
		};
	};
};





