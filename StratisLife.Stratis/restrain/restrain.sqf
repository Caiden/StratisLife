_victim = _this select 0;
_shooter = player;
restrain = _victim addAction ["Restrain","restrain\restrain2.sqf",[_victim,_shooter],7,true,true,"","((playerSide == west)&&(_target distance _this) < 3)"];
sleep 7;
_victim removeAction restrain;