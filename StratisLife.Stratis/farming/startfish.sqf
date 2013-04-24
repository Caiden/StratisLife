// startfish.sqf
// This file is for allowing civilians to catch fish from various
// areas determined by the map triggers.

// _var contains the passed variable from the addAction.
// This variable connects the addAction to the right trigger.
_var = _this select 3;

if (side player == civilian) then 
{
    if ((player getVariable "usedspace") >= 60) then
    {
        hint "Inventory full, go sell the stuff at the market";
    }
    else
    {
        //remove the action so it can't be spammed.
        player removeAction (fishingActions select _var);
        
        hint format["Gathering Fish..."];
        player setVariable["usedspace",(player getVariable "usedspace") + 2];
        sleep 4;
        player setVariable["itemfish",(player getVariable "itemfish") + applerate];
        hint format["You got %1 Fish!!",fishrate];
        waituntil {!isnull player};
        
        //Restore the action so more apples can be gathered.
        _condition = format["player in list (allTrgFishingAreas select %1)", _var];
        fishingActions set[_var, player addAction ["Catch Fish", "farming\startfish.sqf",_var,7,true,true,"", _condition] ];
    };
};

