
_actionEntry = (_this select 3) select 0;
_i = (_this select 3) select 1;

if ( ((vehicle player) != player) && ((vehicle player) iskindof "Air") ) then
{
    if ((player getVariable "bankmoney") >=90000) then
    {
        player removeAction ( (allServicingActions select _actionEntry) select _i);

        _total = 0;
        _workwasdone = False;
        _veh = (vehicle player);
        _veh setfuel 0;
        Hint "So lets see what needs doing...";

        sleep 3;

        _VR = _veh getHitPointDamage "HitVRotor";
        _HR = _veh getHitPointDamage "HitHRotor";
        _AV = _veh getHitPointDamage "HitAvionics";
        _body = _veh getHitPointDamage "HitHull";
        _Engine = _veh getHitPointDamage "HitEngine";

        if(_VR != 0) then {
            _total = _total + (_VR * 15000);
        };
        if(_HR != 0) then {
            _total = _total + (_HR * 15000);
        };
        if(_AV != 0) then {
            _total = _total + (_AV * 10000);
        };
        if(_body != 0) then {
            _total = _total + (_body * 30000);
        };
        if(_Engine != 0) then {
            _total = _total + (_Engine * 10000);
        };

        if (_body != 0) then
        {
            Hint "Fixing your body...";
            sleep (_body * 15);
            _veh setHitPointDamage ["HitHull",0];
            _veh setHitPointDamage ["HitGlass1",0];
            _veh setHitPointDamage ["HitGlass2",0];
            _veh setHitPointDamage ["HitGlass3",0];
            _veh setHitPointDamage ["HitGlass4",0];
            _veh setHitPointDamage ["HitGlass5",0];
            _veh setHitPointDamage ["HitGlass6",0];
            _veh setHitPointDamage ["HitLGlass",0];
            _veh setHitPointDamage ["HitRGlass",0];
            
            _workwasdone = True;
        };
        
        if (_AV != 0) then
        {
            hint "Fixing/Replacing your Avionics...";
            sleep (_AV* 15);
            _veh setHitPointDamage ["HitAvionics",0];
            _workwasdone = True;
        };
        
        
        if (_Engine != 0) then
        {
            hint "Fixing/Replacing your Engine...";
            sleep (_Engine * 15);
            _veh setHitPointDamage ["HitEngine",0];
            _workwasdone = True;
        };
                
        if ((_VR != 0) || (_HR != 0)) then
        {
            Hint "Fixing your Rotors...";
            sleep (_VR * 10);
            _veh setHitPointDamage ["HitVRotor",0];
            sleep (_HR * 10);
            _veh setHitPointDamage ["HitHRotor",0];
            _workwasdone = True;
        };
        
        hint "Filling up your fuel";
        sleep 3;
        _veh setfuel 1;
        _total = _total + 1000;
        _mymon = player getVariable "bankmoney";
        player setVariable["bankmoney",( _mymon - (round _total))];
        _mymon = player getVariable "bankmoney";
        
        if(_workwasdone) then
        {
            sleep 2;
            
            //Hint format ["The price of the service was %1%2. You now have %1%3","$",(round _total),_mymon];
        }
        else
        {
            hint "After a check over, your vehicle doesn't need to be serviced but we topped your fuel up for you.";
            sleep 3;
            
            //Hint format ["The price of the service was %1%2. You now have %1%3","$",(round _total),_mymon];
        };

        Hint format ["The price of the service was %1%2. You now have %1%3","$",(round _total),_mymon];
        
        // Restore the action so it can be processed again
        _condition = format["vehicle player in list ((allServicingTriggers select %1) select %2) && (getpos (vehicle player) select 2 <= 1)", _actionEntry, _i];
        
        (allServicingActions select _actionEntry) set[_i, player addAction ["Repair Vehicle", "Service\helirepair.sqf",(_this select 3),7,true,true,"", _condition] ];
    }
    else
    {
        hint "You need to have $90000 or more in your bank account to make sure you can cover the cost of the service";
    };
}
else
{
    hint "You need to be in a Helicopter/Plane vehicle for this service station!";
};