_actionEntry = (_this select 3) select 0;
_i = (_this select 3) select 1;

if ( ((vehicle player) != player) && ((vehicle player) iskindof "Car") ) then
{
    if ((player getVariable "bankmoney") >=5000) then
    {
        Hint "Refueling....";

        player removeAction ( (allServicingActions select _actionEntry) select _i);
        
        _veh = (vehicle player);
        
        _ok = true;
        
        _veh engineOn false;
        _fuel = fuel _veh;
        
        
        while { ((fuel _veh) < 1) && (_ok) } do
        {
            _veh setfuel (fuel _veh) + 0.01;
            sleep 0.1;
            
            if(isEngineOn _veh) then
            {
                _ok = false;
            };
        };
        
        _fuel = fuel _veh;
        _total = 5000 - (5000 * _fuel);
        
        sleep 2;

        _mymon = player getVariable "bankmoney";
        player setVariable["bankmoney",( _mymon - (round _total))];
        Hint format ["The price of the service was %1%2. You now have %1%3","$",(round _total),(player getVariable "bankmoney")];

        // Restore the action so it can be processed again
        _condition = format["vehicle player in list ((allServicingTriggers select %1) select %2)", _actionEntry, _i];
        
        (allServicingActions select _actionEntry) set[_i, player addAction ["Refuel Vehicle", "Service\Refuel.sqf",(_this select 3),7,true,true,"", _condition] ];
    }
    else
    {
        hint "You need to have $5000 or more in your bank account to make sure you can cover the cost of the service";
    };
}
else
{
    hint "You need to be in a vehicle for this";
};
