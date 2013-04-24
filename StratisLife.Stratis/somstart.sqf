
waitUntil { !isNil {player} };
waitUntil { player == player };

if ( isNil{player getVariable "mk_killedEHadded"} ) then 
{
	player addEventHandler ["killed", 
	{ 
		[] spawn {
			waitUntil { alive player };
			execVM "somstart.sqf"; 
			execVM "somscripts\menu\dead_player.sqf"; 
		};	
	}];
	player setVariable ["mk_killedEHadded", true];
};
