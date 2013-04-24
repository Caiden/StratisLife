_victim = _this select 0;
_shooter = _this select 1;
player globalChat format["%1 has been arrested by %2",_victim,_shooter];
if (player == _victim) then {
player playMove "";
titleText ["You have been arrested and put into jail!","Plain",5];
removeAllWeapons _victim;
isrestrained = 0;
victim2 = 0;
isarrested = 1;
player setPos [3202.18,5815.39,1.0];
};
if (side player == west) then {
_victim removeAction unrestrain;
_victim removeAction jail;
_victim removeAction frisk;
};
if (player == _victim) then {
if (isarrested == 1) then {
victim2 = 0;
sleep 120;
isarrested = 1;
titleText ["You completed your sentence, behave citizen!","Plain",5];
player setPos [2880.93,6063.92,1.205];
};
};