getmymoney = player getVariable "mymoney";
if (player in list Copcar_spawn) then {
itemspawn = shop1_2;
};
if (player in list Safe_Zone) then {
itemspawn = shop1_1;
};
if (player in list terrorbase) then {
itemspawn = shop1_3;
};
if(side player == west) then
{
if((lbCurSel 11188) == 0) then
{
	displayname = "gps";
	thisprice = 5000;
	vehname = ["itemgps",1];
	if((player getVariable "mymoney") >= thisprice) then
	{
		player setVariable ['mymoney', getmymoney - thisprice];
		hint format['You bought a %1 for %2$! You have %3 $ left!',displayname,thisprice,(player getVariable 'mymoney')];
		itemspawn addItemcargo vehname;
	}
	else
	{
		Hint format ["you have %1$ and need %2$",(player getVariable 'mymoney'),(thisprice)];
	};
};
if((lbCurSel 11188) == 1) then
{
	displayname = "First AidKit";
	thisprice = 7500;
	vehname = ["FirstAidKit",1];
	if((player getVariable "mymoney") >= thisprice) then
	{
		player setVariable ['mymoney', getmymoney - thisprice];
		hint format['You bought a %1 for %2$! You have %3 $ left!',displayname,thisprice,(player getVariable 'mymoney')];
		itemspawn addItemCargo vehname;
		sleep 2;
		hint "WARNING USING FAK WITHOUT A WEAPON CAUSES A CONTINUOUS SOUND TO PLAY AND ACTION NOT TO FINISH";
	}
	else
	{
		Hint format ["you have %1$ and need %2$",(player getVariable 'mymoney'),(thisprice)];
	};
};
if((lbCurSel 11188) == 2) then
{
	displayname = "NV Goggles";
	thisprice = 17500;
	vehname = ["NVGoggles",1];
	if((player getVariable "mymoney") >= thisprice) then
	{
		player setVariable ['mymoney', getmymoney - thisprice];
		hint format['You bought a %1 for %2$! You have %3 $ left!',displayname,thisprice,(player getVariable 'mymoney')];
		itemspawn addItemcargo vehname;
	}
	else
	{
		Hint format ["you have %1$ and need %2$",(player getVariable 'mymoney'),(thisprice)];
	};
};
if((lbCurSel 11188) == 3) then
{
	displayname = "Backpack";
	thisprice = 5000;
	vehname = ["B_Bergen_sgg",1];
	if((player getVariable "mymoney") >= thisprice) then
	{
		player setVariable ['mymoney', getmymoney - thisprice];
		hint format['You bought a %1 for %2$! You have %3 $ left!',displayname,thisprice,(player getVariable 'mymoney')];
		itemspawn addBackpackcargo vehname;
	}
	else
	{
		Hint format ["you have %1$ and need %2$",(player getVariable 'mymoney'),(thisprice)];
	};
};
};

if(side player == civilian) then
{
if((lbCurSel 11188) == 0) then
{
	displayname = "gps";
	thisprice = 5000;
	vehname = ["itemgps",1];
	if((player getVariable "mymoney") >= thisprice) then
	{
		player setVariable ['mymoney', getmymoney - thisprice];
		hint format['You bought a %1 for %2$! You have %3 $ left!',displayname,thisprice,(player getVariable 'mymoney')];
		itemspawn addItemcargo vehname;
	}
	else
	{
		Hint format ["you have %1$ and need %2$",(player getVariable 'mymoney'),(thisprice)];
	};
};
if((lbCurSel 11188) == 1) then
{
	displayname = "First AidKit";
	thisprice = 7500;
	vehname = ["FirstAidKit",1];
	if((player getVariable "mymoney") >= thisprice) then
	{
		player setVariable ['mymoney', getmymoney - thisprice];
		hint format['You bought a %1 for %2$! You have %3 $ left!',displayname,thisprice,(player getVariable 'mymoney')];
		itemspawn addItemcargo vehname;
		sleep 2;
		hint "WARNING USING FAK WITHOUT A WEAPON CAUSES A CONTINUOUS SOUND TO PLAY AND ACTION NOT TO FINISH";
		}
	else
	{
		Hint format ["you have %1$ and need %2$",(player getVariable 'mymoney'),(thisprice)];
	};
};
if((lbCurSel 11188) == 2) then
{
	displayname = "NV Goggles";
	thisprice = 17500;
	vehname = ["NVGoggles",1];
	if((player getVariable "mymoney") >= thisprice) then
	{
		player setVariable ['mymoney', getmymoney - thisprice];
		hint format['You bought a %1 for %2$! You have %3 $ left!',displayname,thisprice,(player getVariable 'mymoney')];
		itemspawn addItemcargo vehname;
	}
	else
	{
		Hint format ["you have %1$ and need %2$",(player getVariable 'mymoney'),(thisprice)];
	};
};
if((lbCurSel 11188) == 3) then
{
	displayname = "Backpack";
	thisprice = 5000;
	vehname = ["B_Bergen_sgg",1];
	if((player getVariable "mymoney") >= thisprice) then
	{
		player setVariable ['mymoney', getmymoney - thisprice];
		hint format['You bought a %1 for %2$! You have %3 $ left!',displayname,thisprice,(player getVariable 'mymoney')];
		itemspawn addBackpackcargo vehname;
	}
	else
	{
		Hint format ["you have %1$ and need %2$",(player getVariable 'mymoney'),(thisprice)];
	};
};
};



