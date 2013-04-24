//TODO: FIX THE ATTACH RABBITS SECTION


//make sure only civilians can pickup the meat.
if (side player == civilian) then
{
    //TODO: would be better if the 59 was global variable,
    // and a check:
    //      if player usedspace + rabbitrate > PlayerStorage then
    //          hint "there's not enough room to pick up more";
    // Not checked, but there might be a bug if the players inventory is at 
    // 59, and the item takes up >1 space, then it will cause the inventory to
    // overflow 60(default space).
    if ( (player getVariable "usedspace") >= 60 ) then 
    {
        hint "Inventory full!";
    }
    else
    {
        //TODO: make _rabbit an array, and loop through all rabbits within
        // the 5m proximity getting the first dead one. This will stop the bug
        // where player can't pickup meat due to a live rabbit standing
        // ontop of it. Use nearestobjects for this.
        // http://community.bistudio.com/wiki/nearestObjects
        _rabbit = nearestobject [player, "Rabbit_F"];
        
        if ( isNull _rabbit ) then
        {
            // this will only run if there are no rabbits at all on the server.
            hint format["null: %1", (nearestobject [player, "Rabbit_F"])];
        }
        else
        {
            //make sure the player is 5m away from it
            if ( (player distance _rabbit) < 5 ) then
            {
                //if it's dead, pick it up
                if (!(alive _rabbit) ) then
                {
                    // allow pickup
                    //remove the action so player can't spam pickups
                    player removeAction rabbits;
                    hint format["Picking up rabbit..."];
                    player setVariable["usedspace",(player getVariable "usedspace") + rabbitrate];
                    //BUG: If two players pick up the same rabbit, they both get meat.
                    
                    //TODO: Add a pickup animation of some sort here.
                    //pickup delay of 2 seconds
                    sleep 2;
                    //remove the model
                    //hint format["%1", typename _rabbit];
                    deleteVehicle _rabbit;
                    
                    //update the players inventory
                    player setVariable["itemrabbitmeat",(player getVariable "itemrabbitmeat") + rabbitrate];
                    hint format["You got %1 rabbit meat",rabbitrate];
                    //add the action to pickup back on.
                    waituntil {!isnull player};
                    rabbits = player addAction ["Rabbit meat","farming\pickuprabbit.sqf",[],7,true,true,"","player in list trgRabbit"];
                

                    /*EVERYTHING BELOW IS TESTING ATTACH RABBITS TO PLAYER*/
                    /*remove the above duplicate code before trying this*/
                    /*
                    //hint format ["%1", typename (player getVariable "rabbitmeatModel")];
                    // make sure it's not the dead rabbit attached to player
                    //if (!(_rabbit == (player getVariable "rabbitmeatModel")) ) then
                    
                    
                    if ( (typename(player getVariable "rabbitmeatModel")) == "SCALAR" )  then
                    {
                        // allow pickup and put on head.
                        //remove the action so player can't spam pickups
                        player removeAction rabbits;
                        hint format["Picking up rabbit..."];
                        player setVariable["usedspace",(player getVariable "usedspace") + rabbitrate];
                        //TODO: Add a pickup animation of some sort here.
                        //pickup delay of 2 seconds
                        sleep 2;
                        //remove the model
                        //hint format["%1", typename _rabbit];
                        deleteVehicle _rabbit;

                        //attach a rabbit to the player
                        //_rabbitt = grpNull createUnit ["Rabbit_F", position player,[],0,"NONE"];
                        //_rabbitt = groupRabbit createUnit ["Rabbit_F", position player,[],0,"NONE"];
                        _rabbitt = "Rabbit_F" createVehicle (position player);
                        //_rabbitt setDamage 1;
                        _rabbitt attachTo [player,[0.2,-0.25,0],"pelvis"];
                        player setVariable["rabbitmeatModel", _rabbitt];
                        
                        //update the players inventory
                        player setVariable["itemrabbitmeat",(player getVariable "itemrabbitmeat") + rabbitrate];
                        hint format["You got %1 rabbit meat",rabbitrate];
                        //add the action to pickup back on.
                        waituntil {!isnull player};
                        rabbits = player addAction ["Rabbit meat","farming\pickuprabbit.sqf",[],7,true,true,"","player in list trgRabbit"];
                    }
                    else
                    {
                        //it's an "OBJECT", check if it's the same as the one want to pickup
                        
                        if ((_rabbit != (player getVariable "rabbitmeatModel")) ) then
                        {
                            // allow pickup
                            //remove the action so player can't spam pickups
                            player removeAction rabbits;
                            hint format["Picking up rabbit..."];
                            player setVariable["usedspace",(player getVariable "usedspace") + rabbitrate];
                            //TODO: Add a pickup animation of some sort here.
                            //pickup delay of 2 seconds
                            sleep 2;
                            //remove the model
                            //hint format["%1", typename _rabbit];
                            deleteVehicle _rabbit;
                            
                            //update the players inventory
                            player setVariable["itemrabbitmeat",(player getVariable "itemrabbitmeat") + rabbitrate];
                            hint format["You got %1 rabbit meat",rabbitrate];
                            //add the action to pickup back on.
                            waituntil {!isnull player};
                            rabbits = player addAction ["Rabbit meat","farming\pickuprabbit.sqf",[],7,true,true,"","player in list trgRabbit"];
                        }
                        else
                        {
                            hint format["%1:%2", _rabbit,(player getVariable "rabbitmeatModel")];
                        };
                    };
                    */
                    /*EVERYTHING ABOVE IS TESTING ATTACH RABBITS TO PLAYER*/

                }
                else
                {
                    //play can't pick up a live rabbit.
                    //The buggers will nibble off your fingers!
                    hint "This rabbit is still alive!";
                };
            }
            else
            {
                hint "No rabbit meat here!";
            };
        };
    };
};

