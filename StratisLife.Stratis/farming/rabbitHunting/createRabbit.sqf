//Create a rabbit to rabbit group

//get the target rabbit area on the map.
_targetPosition = position trgRabbit;

// make the rabbits spawn randomly within the boundry.
// REALLY SQF, YOU'RE GOING TO MAKE ME DO THIS JUST TO GENERATE A RANDOM NUMBER
// BETWEEN -10 AND 10?
_randomX = (random 20.0) - 10.0;
_randomY = (random 20.0) - 10.0;

_targetPosition set [0, ((_targetPosition select 0) + _randomX)];
_targetPosition set [1, ((_targetPosition select 1) + _randomY)];

_rabbit = groupRabbit createUnit ["Rabbit_F", _targetPosition,[],0,"NONE"];

//add a killed event to the new rabbit
_rabbit addEventHandler ["Killed", {[_this] execVM "farming\rabbitHunting\killedRabbit.sqf";}];