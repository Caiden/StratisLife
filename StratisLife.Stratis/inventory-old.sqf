_green = "#4CCF00";
_red = "#FF0000";
_black = "#000000";
_moneygreen =  "#B3FFB8";
_moneyred = "#FFB3B3";
_bankgreen =  "#4CCF00";
_bankred = "#FF0000";

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


if ((player getVariable "usedspace") < 0) then {
gotnothinginv = format ["<t color='#FF6666' size='1'>I see that your inventory is bugged, Please report it to a developer. :/ <br/>"];
} else {
gotnothinginv = format [""];
};

if ((player getVariable "usedspace") == 0) then {
gotnothinginv = format ["<t color='#F6FF00' size='1'>You don't have anything in your inventory. <br/>"];
}
else {
gotnothinginv = format [""];
};

if ((player getVariable "itemfish") > 0) then {
gotfishinv = format ["<t color='#B5FF8A' size='1'>Fish:</t><t color='#4CCF00' size='1'> %1</t> <br/>", (player getVariable "itemfish")];
}
else {
gotfishinv = format [""];
};

if ((player getVariable "itemapple") > 0) then {
gotappleinv = format ["<t color='#B5FF8A' size='1'>Apple:</t><t color='#4CCF00' size='1'> %1</t> <br/>", (player getVariable "itemapple")];
}
else {
gotappleinv = format [""];
};

if ((player getVariable "itemunpheroin") > 0) then {
gotunpheroininv = format ["<t color='#FF8080' size='1'>Unprocessed Heroin:</t><t color='#FF0000' size='1'> %1</t> <br/>", (player getVariable "itemunpheroin")];
}
else {
gotunpheroininv = format [""];
};

if ((player getVariable "itemproheroin") > 0) then {
gotproheroininv = format ["<t color='#FF8080' size='1'>Heroin:</t><t color='#FF0000' size='1'> %1</t> <br/>", (player getVariable "itemproheroin")];
}
else {
gotproheroininv = format [""];
};

if ((player getVariable "itemwhale") > 0) then {
gotwhaleinv = format ["<t color='#FF8080' size='1'>Whale:</t><t color='#FF0000' size='1'> %1</t> <br/>", (player getVariable "itemwhale")];
}
else {
gotwhaleinv = format [""];
};

if ((player getVariable "itemunpoil") > 0) then {
gotunpoilinv = format ["<t color='#B5FF8A' size='1'>Unprocessed Oil:</t><t color='#4CCF00' size='1'> %1</t> <br/>", (player getVariable "itemunpoil")];
}
else {
gotunpoilinv = format [""];
};

if ((player getVariable "itemprooil") > 0) then {
gotprooilinv = format ["<t color='#B5FF8A' size='1'>Oil:</t><t color='#4CCF00' size='1'> %1</t> <br/>", (player getVariable "itemprooil")];
}
else {
gotprooilinv = format [""];
};

if ((player getVariable "gotlicense") == 0) then {
gotnolicenseinv = format ["<t color='#F6FF00' size='1'>You don't have any licenses.<br/>"];
}
else {
gotnolicenseinv = format [""];
};

if ((player getVariable "driverlicense") >= 1) then {
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

if ((player getVariable "airlicense") == 1) then {
haveairinv = format ["<t color='#D0BAFF' size='1'>Air license</t> <br/>"];
}
else {
haveairinv = format [""];
};

if ((player getVariable "gunlicense") == 1) then {
haveguninv = format ["<t color='#D0BAFF' size='1'>Pistol license</t> <br/>"]; 
}
else {
haveguninv = format [""];
};

if ((player getVariable "terrorlicense") == 1) then {
haveterrorinv = format ["<t color='#D0BAFF' size='1'>Terror license</t> <br/>"]; 
}
else {
haveterrorinv = format [""];
};

if ((player getVariable "oilprocesslicense") == 1) then {
haveoilinv = format ["<t color='#D0BAFF' size='1'>Oil Processing license</t> <br/>"]; 
}
else {
haveoilinv = format [""];
};

if ((player getVariable "heroinprocesslicense") == 1) then {
haveheroininv = format ["<t color='#D0BAFF' size='1'>Heroin Processing license</t> <br/>"]; 
}
else {
haveheroininv = format [""];
};

if (havedmission == 0) then {
havedmission1inv = parseText format ["No Package Delivery"];
};
if (havedmission == 1) then {
havedmission1inv = parseText format ["Package: DP1"];
};
if (havedmission == 2) then {
havedmission1inv = parseText format ["Package: DP2"];
};

if ((player getVariable "iswanted") == 1) then {
iswantedinv = parseText format ["You are wanted."];
wantedcolorinv = _red;
}
else {
iswantedinv = parseText format ["You are not wanted."];
wantedcolorinv = _green;
};

if ((player getVariable "mymoney") == 0) then {
moneycolorinv = _moneyred;
}
else {
moneycolorinv = _moneygreen;
};

if ((player getVariable "bankmoney") == 1) then {
bankcolorinv = _bankred;
}
else {
bankcolorinv = _bankgreen;
};

if ((player getVariable "usedspace") > 60) then {
usedcolorinv = _black;
}
else {
if ((player getVariable "usedspace") > 55) then {
usedcolorinv = _spacecolor1;
}
else {
if ((player getVariable "usedspace") > 50) then {
usedcolorinv = _spacecolor2;
}
else {
if ((player getVariable "usedspace") > 45) then {
usedcolorinv = _spacecolor3;
}
else {
if ((player getVariable "usedspace") > 40) then {
usedcolorinv = _spacecolor4;
}
else {
if ((player getVariable "usedspace") > 35) then {
usedcolorinv = _spacecolor5;
}
else {
if ((player getVariable "usedspace") > 30) then {
usedcolorinv = _spacecolor6;
}
else {
if ((player getVariable "usedspace") > 25) then {
usedcolorinv = _spacecolor7;
}
else {
if ((player getVariable "usedspace") > 20) then {
usedcolorinv = _spacecolor8;
}
else {
if ((player getVariable "usedspace") > 15) then {
usedcolorinv = _spacecolor9;
}
else {
if ((player getVariable "usedspace") > 10) then {
usedcolorinv = _spacecolor10;
}
else {
if ((player getVariable "usedspace") > 5) then {
usedcolorinv = _spacecolor11;
}
else {
if ((player getVariable "usedspace") > 1) then {
usedcolorinv = _spacecolor12;
}
else {
if ((player getVariable "usedspace") == 0) then {
usedcolorinv = _spacecolor13;
}
else {
if ((player getVariable "usedspace") < 0) then {
usedcolorinv = _black;
}
};};};};};};};};};};};};};};

_str = parseText format ["
<t color='%1' size='1.2'>Space Used: %2/%3</t>
<br/>
<t color='%4' size='1.2'>Money: %5</t>
<br/>
<tsize='0.2'></t>
<br/>
<t color='%24' size='1.2'>Bankaccount balance: %23</t>
<br/>
<br/>
<t color='#D9B398' size='1.5'>Inventory</t>
<br/>
%6
%7
%8
%9
%25
%10
%11
%12
<br/>
<t color='#D9B398' size='1.5'>Licenses</t>
<br/>
%14
%15
%16
%17
%18
%19
%26
<br/>
<t color='#D9B398' size='1.5'>Other</t>
<br/>
<t color='#B3B3B3' size='1'>%20</t>
<br/>
<t color='%21'>%22</t>
<br/>
",
usedcolorinv, //1
(player getVariable "usedspace"), //2
(player getVariable "totalspace"), //3
moneycolorinv, //4
(player getVariable "mymoney"), //5
gotnothinginv, //6
gotfishinv, //7
gotappleinv, //8
gotunpheroininv, //9
gotwhaleinv, //10
gotunpoilinv, //11
gotprooilinv, //12
gotnolicenseinv, //13
havedriverinv, //14
haveboatinv, //15
haveairinv, //16
haveguninv, //17
haveterrorinv, //18
haveoilinv, //19
havedmission1inv, //20
wantedcolorinv, //21
iswantedinv, //22
(player getVariable "bankmoney"), //23
bankcolorinv, //24
gotproheroininv, //25
haveheroininv //26
];
hint _str;