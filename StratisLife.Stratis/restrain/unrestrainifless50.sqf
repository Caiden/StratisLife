_victim = _this select 0;

while {isrestrained == 1} do {
if (_distcop1 < 50 && _distcop2 <50 && _distcop3 < 50 && _distcop4 < 50 && _distcop5 < 50 && _distcop6 < 50)
then {sleep 4;}
else {
isrestrained = 0;
player switchMove "AmovPercMstpSnonWnonDnon_EaseOut";
sleep 2;
hint "No cops nearby, you have been unrestrained. Press V or \";
player playMove "";
disableUserInput false;
_havebeenreleased = 1;
};
};
};
waitUntil {_havebeenreleased == 1};
if (side player == west && _havebeenreleased == 1) then {
hint "CIVILIAN UNRESTRAINED";
_victim removeAction jail;
_victim removeAction unrestrain;
_havebeenreleased = 0;
};
 
