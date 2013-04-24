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
		hint "Inventory full, go sell the wood at the market";
	}
	else
	{
		//remove the action so it can't be spammed.
        player removeAction (woodActions select _var);
        
		hint format["Chopping Down Tree..."];
		player setVariable["usedspace",(player getVariable "usedspace") + 1];
		sleep 10;
		player setVariable["itemwood",(player getVariable "itemwood") + woodrate];
		hint format["You got %1 wood log!",woodrate];
		waituntil {!isnull player};
		
        //Restore the action so more apples can be gathered.
        _condition = format["player in list (allTrgWoodAreas select %1)", _var];
        woodActions set[_var, player addAction ["Gather Wood", "farming\startwood.sqf",_var,7,true,true,"", _condition] ];
   	};
};

