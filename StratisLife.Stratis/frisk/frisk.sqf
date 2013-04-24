_victim = _this select 0;
_shooter = _this select 1;
[[_victim,_shooter], "friskFunction", nil, false] spawn BIS_fnc_MP;