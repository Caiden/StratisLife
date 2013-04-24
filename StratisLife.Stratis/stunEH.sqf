if(isServer)then
{
	if(shooter == shotby)then
	{
		stunned = victim;
		stunshooter = shooter;
		stundistance = victim distance shooter;
		
		if (weapon == "hgun_P07_F")then
		{
			victimid publicVariableClient "dmg";
			if(stundistance <= 25)then
			{
				victimid = (owner victim);
				victimid publicVariableClient "stunshooter";
				victimid publicVariableClient "stunned";
				stunnedhint = stunned;
				shooterhint = stunshooter;
				publicVariable "stunnedhint";
				publicVariable "shooterhint";
			};
		};
	stunned = "";
	stunshooter = "";
	shooter = "";
	shotby = "";
	dmg = 0;
	};
};


