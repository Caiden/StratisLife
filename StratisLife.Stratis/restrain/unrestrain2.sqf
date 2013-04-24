_victim = _this select 0;
_shooter = _this select 1;
if (player == _victim) then {
victim2 = 0;
isrestrained = 0;
sleep 1;
titleText ["You have been unrestrained! Press V or \ to move again","Plain",5];
player switchMove "";
sleep 2;
player playMove "";
disableUserInput false;
victim2 = 0;
};
hint format["%1 has been unrestrained by %2!",_victim,_shooter];
if (side player == west) then {
_victim removeAction unrestrain;
_victim removeAction jail;
_victim removeAction frisk;
meintazer = 0;
};