// startCollecting.sqf
// This file is the main base for where all the fishing, apple picking, whaling,
// etc files work from. This allows for new activities to be implemented with
// ease, and also makes modifying much easier.

_trigger = (_this select 3) select 0; // the trigger in the map
_itemWait = (_this select 3) select 1; // how long the collecting should take
_itemWeight = (_this select 3) select 2; // the item weight to add onto the player
_itemRate = (_this select 3) select 3; // how many the player can actually hold
_collectingMsg = (_this select 3) select 4; // what to display when collecting
_collectedMsg = (_this select 3) select 5; // what to display when collected
_actionMsg = (_this select 3) select 6; // action text rebuilding
_actionEntry = (_this select 3) select 7; // action list for this collecting
_i = (_this select 3) select 8; // the action index
_itemString = (_this select 3) select 9; // the players inventory label for this item


if (side player == civilian) then 
{
    // this is a neat little if else if
    // or it's an abomination and abuse of syntax rules.
    // It makes it more readable though. PS SQF syntax is terrible.
    
    switch (true) do
    {
        // if the players current inventory is already full.
        case ( (player getVariable "usedspace") >= (player getVariable "totalspace") ) :
        {
            hint "Inventory full!";
        };
        
        // if the collecting item will over flow the inventory
        case ( (player getVariable "usedspace") + _itemWeight > (player getVariable "totalspace") ) :
        {
            hint format["Not enough room! %1 space required, you have %2 left.", _itemWeight, (player getVariable "totalspace") - (player getVariable"usedspace")];
        };
        
        // else allow the player to collect and perform the task
        default
        {
            // remove the action so it can't be spammed.
            player removeAction ( (allCollectingActions select _actionEntry) select _i);

            hint format["%1", _collectingMsg];
            
            sleep _itemWait;

            player setVariable["usedspace",(player getVariable "usedspace") + _itemWeight];
            player setVariable[_itemString,(player getVariable _itemString) + _itemRate];
            
            hint format["%1", _collectedMsg];
            
            waituntil {!isnull player};
            
            // Restore the action so it can be processed again
            _condition = format["player in list ((allCollectingTriggers select %1) select %2)",_actionEntry, _i];
            (allCollectingActions select _actionEntry) set[_i, player addAction [format["%1", _actionMsg], "farming\startCollecting.sqf", (_this select 3), 7, true, true, "", _condition] ];
        };
    };
};

