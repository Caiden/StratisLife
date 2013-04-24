if (side player == west) then 
{
	if (patrolmission == 0) then 
	{
		patrolrnumber = (floor(random 3) + 1);
		patrolmission = patrolnumber;
		switch (patrolrnumber) do
		{
			case 1:
			{
				createMarkerLocal ["patrolmarker", (getPos trgpatrol1)];
				"patrolmarker" setMarkerShapeLocal "ICON";
				"patrolmarker" setMarkerColorLocal "ColorBLUFOR";
				"patrolmarker" setMarkerSizeLocal [1,1];
				"patrolmarker" setMarkerTextLocal "Patrol Point 1.";
				"patrolmarker" setMarkerTypeLocal "hd_dot";
				hint "Please patrol at Patrolpoint 1!";
				doingpatrol = player addAction ["Finish patrolling","patrolmission\finishpatrol.sqf",[],7,true,true,"","vehicle player in list trgpatrol1"];
				patroldistance = player distance (getPos trgpatrol1);
			};
			case 2:
			{
				createMarkerLocal ["patrolmarker", (getPos trgpatrol2)];
				"patrolmarker" setMarkerShapeLocal "ICON";
				"patrolmarker" setMarkerColorLocal "ColorBLUFOR";
				"patrolmarker" setMarkerSizeLocal [1,1];
				"patrolmarker" setMarkerTextLocal "Patrol Point 2.";
				"patrolmarker" setMarkerTypeLocal "hd_dot";
				hint "Please patrol at Patrolpoint 2!";
				doingpatrol = player addAction ["Finish patrolling","patrolmission\finishpatrol.sqf",[],7,true,true,"","vehicle player in list trgpatrol2"];
				patroldistance = player distance (getPos trgpatrol2);
			};
			case 3:
			{
				createMarkerLocal ["patrolmarker", (getPos trgpatrol3)];
				"patrolmarker" setMarkerShapeLocal "ICON";
				"patrolmarker" setMarkerColorLocal "ColorBLUFOR";
				"patrolmarker" setMarkerSizeLocal [1,1];
				"patrolmarker" setMarkerTextLocal "Patrol Point 3.";
				"patrolmarker" setMarkerTypeLocal "hd_dot";
				hint "Please patrol at Patrolpoint 3!";
				doingpatrol = player addAction ["Finish patrolling","patrolmission\finishpatrol.sqf",[],7,true,true,"","vehicle player in list trgpatrol3"];
				patroldistance = player distance (getPos trgpatrol3);
			};
			case 4:
			{
				createMarkerLocal ["patrolmarker", (getPos trgpatrol4)];
				"patrolmarker" setMarkerShapeLocal "ICON";
				"patrolmarker" setMarkerColorLocal "ColorBLUFOR";
				"patrolmarker" setMarkerSizeLocal [1,1];
				"patrolmarker" setMarkerTextLocal "Patrol Point 4.";
				"patrolmarker" setMarkerTypeLocal "hd_dot";
				hint "Please patrol at Patrolpoint 4!";
				doingpatrol = player addAction ["Finish patrolling","patrolmission\finishpatrol.sqf",[],7,true,true,"","vehicle player in list trgpatrol4"];
				patroldistance = player distance (getPos trgpatrol4);
			};
			default 
			{
				patrolmission = 0;
				deleteMarkerLocal "patrolmarker";
				 hint "Report back to base for more Patrol points";
				 exitWith;
			};
		};
		patroldistance = ceil(patroldistance / 1000);
		_rnumber2 = ((random 300) / 100);
		switch (patroldistance) do
		{
			case 1: {patrolearn = floor(1000 * _rnumber2);};
			case 2: {patrolearn = floor(2000 * _rnumber2);};
			case 3: {patrolearn = floor(3000 * _rnumber2);};
			case 4: {patrolearn = floor(4000 * _rnumber2);};
			case 5: {patrolearn = floor(5000 * _rnumber2);};
			Default {patrolearn = floor(6000 * _rnumber2);};
		};
	}
	else
	{
		hint "You already have a patrol mission.";
	};
}
else
{
	hint "Only the police can do patrol missions";
};











