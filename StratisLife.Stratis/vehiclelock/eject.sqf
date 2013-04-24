_nearcar = nearestObjects [player, ["Car","Ship"], 4];
_carofperson = _nearcar select 0;
[[_carofperson], "vehiclepullout2Function", nil, false] spawn BIS_fnc_MP;