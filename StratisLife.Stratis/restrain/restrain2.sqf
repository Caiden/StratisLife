_victim = _this select 0;
_shooter = _this select 1;
// player globalChat format["CALL 2: %1 been shot by %2",_victim,_shooter];
[[_victim,_shooter], "restrainFunction", nil, false] spawn BIS_fnc_MP;