
_actionEntry = (_this select 3) select 0;
_i = (_this select 3) select 1;

if( ((vehicle player) != player) && ((vehicle player) iskindof "Car") )then
{
    if ((player getVariable "bankmoney") >= 5000) then
    {
        player removeAction ( (allServicingActions select _actionEntry) select _i);

        _total = 0;
        _workwasdone = False;
        _veh = (vehicle player);
        _vefuel = fuel _veh;
        _veh setfuel 0;
        
        Hint "So lets see what needs doing...";
        
        sleep 3;

        _w1 = _veh getHitPointDamage "HitLBWheel";
        _w2 = _veh getHitPointDamage "HitLFWheel";
        _w3 = _veh getHitPointDamage "HitRBWheel";
        _w4 = _veh getHitPointDamage "HitRFWheel";
        _body = _veh getHitPointDamage "HitBody";
        _Engine = _veh getHitPointDamage "HitEngine";
        _Fuel = _veh getHitPointDamage "HitFuel";

        if(_w1 != 0) then {
            _total = _total + (_w1 * 500);
        };
        if(_w2 != 0) then {
            _total = _total + (_w2 * 500);
        };
        if(_w3 != 0) then {
            _total = _total + (_w3 * 500);
        };
        if(_w4 != 0) then {
            _total = _total + (_w4 * 500);
        };
        if(_body != 0) then {
            _total = _total + (_body * 1000);
        };
        if(_Engine != 0) then {
            _total = _total + (_Engine * 1000);
        };
        if(_Fuel != 0) then {
            _total = _total + (_Fuel * 1000);
        };

        if (_body != 0) then {
            Hint "Fixing your body work";
            sleep (_body * 6.5);
            _veh setHitPointDamage ["HitBody",0];
            _veh setHitPointDamage ["HitGlass1",0];
            _veh setHitPointDamage ["HitGlass2",0];
            _veh setHitPointDamage ["HitGlass3",0];
            _veh setHitPointDamage ["HitGlass4",0];
            _veh setHitPointDamage ["HitGlass5",0];
            _veh setHitPointDamage ["HitLGlass",0];
            _veh setHitPointDamage ["HitRGlass",0];
            _workwasdone = True;
        };
        
        if(_Engine != 0) then {
            hint "Fixing/Replacing your Engine";
            sleep (_Engine * 6);
            _veh setHitPointDamage ["HitEngine",0];
            _workwasdone = True;
        };
        
        if(_fuel != 0) then {
            hint "Fixing your Fuel Tank";
            sleep (_Fuel * 5);
            _veh setHitPointDamage ["HitFuel",0];
            _workwasdone = True;
        };
        
        if((_w1 != 0) || (_w2 != 0) || (_w3 != 0) || (_w4 != 0)) then
        {
            Hint "Fixing your wheels";
            sleep (_w1 * 5);
            _veh setHitPointDamage ["HitLBWheel",0];
            sleep (_w2 * 5);
            _veh setHitPointDamage ["HitLFWheel",0];
            sleep (_w3 * 5);
            _veh setHitPointDamage ["HitRBWheel",0];
            sleep (_w4 * 5);
            _veh setHitPointDamage ["HitRFWheel",0];
            _veh setHitPointDamage ["HitLF2Wheel",0];
            _veh setHitPointDamage ["HitRF2Wheel",0];
            _veh setHitPointDamage ["HitRMWheel",0];
            _veh setHitPointDamage ["HitLMWheel",0];
            _workwasdone = True;
        };
        
        if(_workwasdone) then
        {
            hint "Polishing Your Car";
            sleep 2;
            _mymon = player getVariable "bankmoney";
            player setVariable["bankmoney",( _mymon - (round _total))];
            Hint format ["The price of the service was %1%2. You now have %1%3","$",(round _total),(player getVariable "bankmoney")];
            _veh setfuel _vefuel;
        }
        else
        {
            hint "After a check over, your vehicle doesn't need to be serviced.";
            _veh setfuel _vefuel;
        };
        
        // Restore the action so it can be processed again
        _condition = format["vehicle player in list ((allServicingTriggers select %1) select %2)", _actionEntry, _i];
        
        (allServicingActions select _actionEntry) set[_i, player addAction ["Repair Vehicle", "Service\CarRepair.sqf",(_this select 3),7,true,true,"", _condition] ];
    }
    else
    {
        hint "You need to have $5000 or more in your bank account to make sure you can cover the cost of the service";
    };
}
else
{
    hint "You need to be in a land vehicle for this";
};

