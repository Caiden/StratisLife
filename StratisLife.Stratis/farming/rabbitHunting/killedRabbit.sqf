//get the killed rabbit object
_killed = (_this select 0) select 0;

//TODO: Create a meat pile/get custom models
//create a meat pile that anyone can access
//_meat = "Land_Sack_F" createVehicle (position _killed);
//_meat setVariable ["owner", "world", true];
_killed setVariable ["owner", "world", true];

//create a new rabbit to keep the area populated.
execVM "farming\rabbitHunting\createRabbit.sqf";
