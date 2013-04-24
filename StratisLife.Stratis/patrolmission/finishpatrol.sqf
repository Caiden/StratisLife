player removeAction doingpatrol;
player setVariable ["bankmoney", (player getVariable "bankmoney") + patrolearn];
hint format ["You've completed your patrol at point %1, You earned %2!",patrolrnumber,patrolearn];
deleteMarkerLocal "patrolmarker";
patrolmission = 0;
patrolearn = 0;
patrolnumber = 0;
sleep 2;
execVM "patrolmission\startpatrol.sqf";
