// startheroin.sqf
// This file is for allowing civilians to farm heroin from various
// areas determined by the map triggers.

// _var contains the passed variable from the addAction.
// This variable connects the addAction to the right trigger.
_var = _this select 3;

if (side player == civilian) then
{
    if ((player getVariable "usedspace") >= 60) then
    {
        hint "Inventory full, go process the heroin at the heroin process"
    }
    else
    {
        //remove the action so it can't be spammed.
        player removeAction (heroinActions select _var);
        //player removeAction hero;
        hint format["Gathering Heroin..."];
        player setVariable["usedspace",(player getVariable "usedspace") + 1];
        sleep 10;
        player setVariable["itemunpheroin",(player getVariable "itemunpheroin") + heroinrate];
        hint format["You got %1 Heroin!",heroinrate];
        waituntil {!isnull player};
        
        //Restore the action so more apples can be gathered.
        _condition = format["player in list (allTrgHeroinAreas select %1)", _var];
        heroinActions set[_var, player addAction ["Farm Heroin", "farming\startheroin.sqf",_var,7,true,true,"", _condition] ];
    };
};

