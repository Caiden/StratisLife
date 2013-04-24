//initial startup of rabbit hunting

for "_i" from 1 to totalRabbits do
{
    execVM "farming\rabbitHunting\createRabbit.sqf";
};

//Make sure that if the rabbits go out of bounds, transport them back.
while {(true)} do
{
    //loop through all the rabbits
    {
        _rabbitDistance = _x distance trgRabbit;
        
        _boundRange = 25;
        
        // is rabbit out of bounds?
        if (_rabbitDistance > _boundRange) then
        {
            //get the target rabbit area on the map.
            _targetPosition = position trgRabbit;
            
            // make the rabbits spawn randomly within the boundry.
            // Generates a random number between -10 and 10.
            _randomX = (random 20.0) - 10.0;
            _randomY = (random 20.0) - 10.0;
            
            _targetPosition set [0, ((_targetPosition select 0) + _randomX)];
            _targetPosition set [1, ((_targetPosition select 1) + _randomY)];
            
            // Put them back
            _x setPos _targetPosition;
        }
   
    } forEach units groupRabbit;
    
    // keep a check on the rabbits every 5 minutes.
    // don't want to waste resources
    sleep 60*5
};
