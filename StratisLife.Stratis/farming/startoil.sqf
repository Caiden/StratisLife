// startoil.sqf
// This file is for allowing civilians to get oil from various
// areas determined by the map triggers.

// _var contains the passed variable from the addAction.
// This variable connects the addAction to the right trigger.
_var = _this select 3;

if (side player == civilian) then
{
    if ((player getVariable "usedspace") >= 60) then
    {
        hint "Inventory full, go process the oil at the oil process";
    }
    else
    {
        //remove the action so it can't be spammed.
        player removeAction (oilActions select _var);
        
        hint format["Gathering Oil..."];
        player setVariable["usedspace",(player getVariable "usedspace") + 10];
        sleep 10;
        player setVariable["itemunpoil",(player getVariable "itemunpoil") + oilrate];
        hint format["You got %1 oil!",oilrate];
        waituntil {!isnull player};

        //Restore the action so more apples can be gathered.
        _condition = format["player in list (allTrgOilAreas select %1)", _var];
        oilActions set[_var, player addAction ["Gather oil", "farming\startoil.sqf",_var,7,true,true,"", _condition] ];
    };
};

