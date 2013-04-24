// speedzone.sqf
// this file is for setting a speed limitter in certain triggers.
// If a civilian is in the area and goes faster than the speed limit,
// they will automatically slow down.

// We need to wait a bit for the triggers to properly initialise.
// Otherwise the 'list' command will return nil and cause errors.
// see notes section on http://community.bistudio.com/wiki/list
sleep 2;

// _allTrgLimiters stores all the triggers in the map where a speed limit is in place.
// Makes it a lot easier to add new speeding/safe zones.
// Make sure the trigger is:
//      Activation: By Civilian and Repeatedly in the editor.
_allTrgLimiters = [ trgSpeedLimiter1, trgSpeedLimiter2 ];

while {(true)} do
{
    {
        // Get all the players within the area
        _players = list _x;
        
        {
            if( isPlayer _x ) then
            {
                if ( side _x == civilian ) then 
                {
                    _car = vehicle _x;
                    
                    //Don't want to mess up helis flying over.
                    if ( _car isKindOf "LandVehicle" ) then
                    {
                        _carVX = ( (velocity _car) select 0);
                        _carVY = ( (velocity _car) select 1);
                        
                        _speed = (speed _car);
                        
                        // Speed limit of 30km/h
                        if (_speed > 30 || _speed < -30) then
                        {
                            //steadily reduce their speed.
                            _rate = -0.3;
                            _car setVelocity [  _carVX + ((_carVX) * _rate),
                                                _carVY + ((_carVY) * _rate),
                                                0];
                        };
                    };
                };
            };
        
        } forEach _players;
    } forEach _allTrgLimiters;
    
    // Check too often, waste resources, check too little, car is jerky.
    // TODO: find a sweet spot for this sleep
    // Tip, as the sleep gets bigger, also increase the _rate variable to compensate.
    sleep 0.5;
};

