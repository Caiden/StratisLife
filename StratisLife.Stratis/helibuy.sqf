_vehinit = "_veh = this;_veh lock true;clearWeaponCargo _veh;clearMagazineCargo _veh;clearItemCargo _veh;clearBackpackCargo _veh;";
getmymoney = player getVariable "mymoney";
if (player in list Airfield_Spawn) then 
{
	carspawn = getMarkerPos "civchopperspawn";
};
if (player in list Cop_base) then 
{
	carspawn = getMarkerPos "copchopperspawn";
};
if (player in list terrorbase) then 
{
	carspawn = getMarkerPos "terrorcarspawn";
};

if((player getVariable "airlicense") >= 1) then
{
	if(side player == west) then
	{
		if((lbCurSel 11127) == 0) then
		{
			displayname = "Little Bird";
			thisprice = 40000;
			vehname = "B_MH9_F";
			if((player getVariable "mymoney") >= thisprice) then
			{
				closeDialog 0;
				player setVariable ['mymoney', getmymoney - thisprice];
				hint format['You bought a %1 for %2$! You have %3 $ left!',displayname,thisprice,(player getVariable 'mymoney')];
				_veh = vehname createVehicle (carspawn);
				_veh setVehicleInit _vehinit;
				processInitCommands;
				vehiclelock = _veh addAction ['Unlock / Lock','vehiclelock\unlocklock.sqf',[],7,true,true,'','(_target distance _this) < 4'];
			}
			else
			{
				Hint format ["you have %1$ and need %2$",(player getVariable 'mymoney'),(thisprice)];
			};
		};
		if((lbCurSel 11127) == 1) then
		{
			displayname = "KA60";
			thisprice = 60000;
			vehname = "O_Ka60_Unarmed_F";
			if((player getVariable "mymoney") >= thisprice) then
			{
				closeDialog 0;
				player setVariable ['mymoney', getmymoney - thisprice];
				hint format['You bought a %1 for %2$! You have %3 $ left!',displayname,thisprice,(player getVariable 'mymoney')];
				_veh = vehname createVehicle (carspawn);
				_veh setVehicleInit _vehinit;
				processInitCommands;
				vehiclelock = _veh addAction ['Unlock / Lock','vehiclelock\unlocklock.sqf',[],7,true,true,'','(_target distance _this) < 4'];
			}
			else
			{
				Hint format ["you have %1$ and need %2$",(player getVariable 'mymoney'),(thisprice)];
			};
		};
	};
	
	if(side player == civilian) then
	{
		if((lbCurSel 11127) == 0) then
		{
			displayname = "Little Bird";
			thisprice = 125000;
			vehname = "B_MH9_F";
			if((player getVariable "mymoney") >= thisprice) then
			{
				closeDialog 0;
				player setVariable ['mymoney', getmymoney - thisprice];
				hint format['You bought a %1 for %2$! You have %3 $ left!',displayname,thisprice,(player getVariable 'mymoney')];
				_veh = vehname createVehicle (carspawn);
				_veh setVehicleInit _vehinit;
				processInitCommands;
				vehiclelock = _veh addAction ['Unlock / Lock','vehiclelock\unlocklock.sqf',[],7,true,true,'','(_target distance _this) < 4'];
			}
			else
			{
				Hint format ["you have %1$ and need %2$",(player getVariable 'mymoney'),(thisprice)];
			};
		};
		if((lbCurSel 11127) == 1) then
		{
			displayname = "KA60";
			thisprice = 150000;
			vehname = "O_Ka60_Unarmed_F";
			if((player getVariable "mymoney") >= thisprice) then
			{
				closeDialog 0;
				player setVariable ['mymoney', getmymoney - thisprice];
				hint format['You bought a %1 for %2$! You have %3 $ left!',displayname,thisprice,(player getVariable 'mymoney')];
				_veh = vehname createVehicle (carspawn);
				_veh setVehicleInit _vehinit;
				processInitCommands;
				vehiclelock = _veh addAction ['Unlock / Lock','vehiclelock\unlocklock.sqf',[],7,true,true,'','(_target distance _this) < 4'];
			}
			else
			{
				Hint format ["you have %1$ and need %2$",(player getVariable 'mymoney'),(thisprice)];
			};
		};
	};
}else
{
	hint "You need a Pilot license to purchase a aircraft";
};


