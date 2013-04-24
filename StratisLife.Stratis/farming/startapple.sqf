// startapple.sqf
// This file is for allowing civilians to gather apples from various
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
        player removeAction (appleActions select _var);
        
        hint format["Gathering Apples..."];
        player setVariable["usedspace",(player getVariable "usedspace") + 2];
        sleep 3;
        player setVariable["itemapple",(player getVariable "itemapple") + applerate];
        hint format["You got %1 Apple!",applerate];
        waituntil {!isnull player};
        
        //Restore the action so more apples can be gathered.
        _condition = format["player in list (allTrgAppleAreas select %1)", _var];
        appleActions set[_var, player addAction ["Gather Apples","farming\startapple.sqf",_var,7,true,true,"", _condition] ];
    };
};

