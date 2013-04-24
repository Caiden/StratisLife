_green = "#4CCF00";
_red = "#FF0000";
_black = "#000000";
_moneygreen =  "#4CCF00";
_moneyred = "#FF0000";

_spacecolor1 = "#FF8F8F";
_spacecolor2 = "#FFA78F";
_spacecolor3 = "#FFBA8F";
_spacecolor4 = "#FFD08F";
_spacecolor5 = "#FFE18F";
_spacecolor6 = "#FFF28F";
_spacecolor7 = "#F4FF8F";
_spacecolor8 = "#E1FF8F";
_spacecolor9 = "#CEFF8F";
_spacecolor10 = "#B2FF8F";
_spacecolor11 = "#8FFFC3";
_spacecolor12 = "#8FFFEA";
_spacecolor13 = "#8FF8FF";

if ((player getVariable "driverlicense") == 1) then {
havedriverinv = format ["<t color='#D0BAFF' size='1'>Driver license</t> <br/>"];
}
else {
havedriverinv = format [""];
};

if ((player getVariable "boatlicense") == 1) then {
haveboatinv = format ["<t color='#D0BAFF' size='1'>Boat license</t> <br/>"];
}
else {
haveboatinv = format [""];
};

if ((player getVariable "copairlicense") == 1) then {
haveairinv = format ["<t color='#D0BAFF' size='1'>Air license</t> <br/>"];
}
else {
haveairinv = format [""];
};

if ((player getVariable "gunlicense") == 1) then {
haveguninv = format ["<t color='#D0BAFF' size='1'>Gun license</t> <br/>"]; 
}
else {
haveguninv = format [""];
};

if ((player getVariable "mymoney") == 0) then {
moneycolorinv = _moneyred;
}
else {
moneycolorinv = _moneygreen;
};

if (patrolmission == 0) then {
havepatrolinv = parseText format ["No Patrol Job"];
};
if (patrolmission == 1) then {
havepatrolinv = parseText format ["Patrol at: Patrol Point 1"];
};
if (patrolmission == 2) then {
havepatrolinv = parseText format ["Patrol at: Patrol Point 2"];
};
if (patrolmission == 3) then {
havepatrolinv = parseText format ["Patrol at: Patrol Point 3"];
};
if (patrolmission == 4) then {
havepatrolinv = parseText format ["Patrol at: Patrol Point 4"];
};
if (patrolmission > 4) then {
havepatrolinv = parseText format ["Patrol is bugged!"];
};


if ((player getVariable "bankmoney") == 1) then {
bankcolorinv = _moneyred;
}
else {
bankcolorinv = _moneygreen;
};

_str = parseText format ["

<t color='%1' size='1.2'>Money: %2</t>
<br/>
<t color='%3' size='1.2'>Bankbalance: %4</t>
<br/>
<br/>
<t color='#D9B398' size='1.5'>Licenses</t>
<br/>
%5
%6
%7
%8
<br/>
<t color='#D9B398' size='1.5'>Wanted list</t>
<br/>
<t color='#D0BAFF' size='0.8'>Not working yet, Will be added as soon as possible!</t>
<br/>
<t color='#D9B398' size='1.5'>Other</t>
<br/>
%
",
moneycolorinv, //1
(player getVariable "mymoney"), //2
bankcolorinv, //3
(player getVariable "bankmoney"), //4
havedriverinv, //5
haveboatinv, //6
haveairinv, //7
haveguninv, //8
havepatrolinv //9
];
hint _str;