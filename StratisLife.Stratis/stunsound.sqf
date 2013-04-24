if(stunsound == 0)then
{
	stunsound = 1;
	restrain = victim addAction ["Restrain","restrain\restrain2.sqf",[victim,shooter],7,true,true,"","((playerSide == west)&&(_target distance _this) < 3)"];
	victim say3D "TazerSound";
	sleep 1;
	victim say3D "TazerSound";
	sleep 1;
	victim say3D "TazerSound";
	sleep 1;
	victim say3D "TazerSound";
	sleep 1;
	victim say3D "TazerSound";
	sleep 1;
	victim say3D "TazerSound";
	sleep 1;
	victim say3D "TazerSound";
	sleep 1;
	victim say3D "TazerSound";
	stunsound = 0;
	victim removeAction restrain;
};



