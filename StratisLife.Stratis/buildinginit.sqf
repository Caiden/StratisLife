bankmain1 = "Land_i_Barracks_V1_F" createVehicle (position bankmain); bankmain1 setDir (getdir bankmain); bankmain1 allowdamage false;

checkpoint1 = "Land_Cargo_Patrol_V1_F" createVehicle (position checkpoint); checkpoint1 setDir (getdir checkpoint);  checkpoint1 setPos (getPos checkpoint); checkpoint1 allowdamage false;

MOBJ1 = position building_prot nearestObject 126564; MOBJ1 attachto[rubbish_scrap,[0,0,0]];

MOBJ2 = position building_prot nearestObject 43858; MOBJ2 setFuelCargo 0;
MOBJ3 = position building_prot nearestObject 43859; MOBJ3 setFuelCargo 0;
MOBJ4 = position building_prot nearestObject 43860; MOBJ4 setFuelCargo 0;