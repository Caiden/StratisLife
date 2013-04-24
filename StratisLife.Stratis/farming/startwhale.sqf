// startwhale.sqf
// This file is for allowing civilians to catch whales from various
// areas determined by the map triggers.

// _var contains the passed variable from the addAction.
// This variable connects the addAction to the right trigger.
_var = _this select 3;

if (side player == civilian) then 
{
    if ((player getVariable "usedspace") > 59) then
    {
        hint "Inventory full, go sell the stuff at the black market";
    }
    else
    {
        //remove the action so it can't be spammed.
        player removeAction (whaleActions select _var);
        
        player setVariable["usedspace",(player getVariable "usedspace") + 10];
        for "_i" from 0 to 2 do
        {
            hint format["Getting Whale..."];
            sleep 10;
        };
        player setVariable["itemwhale",(player getVariable "itemwhale") + whalerate];
        hint format["You got %1 Whale!",whalerate];
        waituntil {!isnull player};
        
        //Restore the action so more apples can be gathered.
        _condition = format["player in list (allTrgWhaleAreas select %1)", _var];
        whaleActions set[_var, player addAction ["Get Whale", "farming\startwhale.sqf",_var,7,true,true,"", _condition] ];
    };
};

