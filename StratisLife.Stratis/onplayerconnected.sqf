
if (player == _pplayer) then {

//Sellprices
applesellprice = 100;
applesellprice10 = 1000;
fishsellprice = 200;
fishsellprice10 = 2000;
heroinsellprice = 500;
heroinsellprice10 = 5000;
whalesellprice = 1000;
whalesellprice10 = 10000;
oilsellprice = 5000;
oilsellprice5 = 25000;
oilprocessprice1 = 250;
oilprocessprice5 = 1250;

//COP MENU WIP
if (side player == west) then {
if ( (!isServer) && (player != player) ) then
{
waitUntil {player == player};
waitUntil {time > 10};
};
if !(isnull player) then {
null = [] execvm "somstart.sqf";
if (playerSide == west) then { act1 = player addaction ["Cop Menu [W.I.P]", "somscripts\menu\open.sqf", [], 1, false, false, "", ""]};
};
execVM "somscripts\som_init.sqf";
};

// CIV INVENTORY
if (side player == civilian) then {
if ( (!isServer) && (player != player) ) then
{
waitUntil {player == player};
waitUntil {time > 10};
};
if !(isnull player) then {
inventory = player addaction ["Inventory", "inventory.sqf", [], 1, false, false, "", ""]};
};

// COP INVENTORY
if (side player == west) then {
if ( (!isServer) && (player != player) ) then
{
waitUntil {player == player};
waitUntil {time > 10};
};
if !(isnull player) then {
inventory = player addaction ["Inventory", "copinventory.sqf", [], 1, false, false, "", ""]};
};

//Bank robbery timer
if (isDedicated) then {
bankcanberobbed = 1;
Publicvariable "bankcanberobbed";
};

if (isServer) then {
bankcanberobbed = 1;
Publicvariable "bankcanberobbed";
};

// Siren Function
sirenFunction = compile preprocessFileLineNumbers "siren4.sqf";
// Tazer Function
tazerFunction = compile preprocessFileLineNumbers "tazer\tazer2.sqf";
cophornFunction = compile preprocessFileLineNumbers "horns\execcophorn.sqf";
restrainFunction = compile preprocessFileLineNumbers "restrain\restrain3.sqf";
unrestrainFunction = compile preprocessFileLineNumbers "restrain\unrestrain2.sqf";
jailFunction = compile preprocessFileLineNumbers "jail\jail2.sqf";
friskFunction = compile preprocessFileLineNumbers "frisk\frisk2.sqf";
vehiclepulloutFunction = compile preprocessFileLineNumbers "vehiclelock\eject2.sqf";
vehiclepullout2Function = compile preprocessFileLineNumbers "vehiclelock\eject3.sqf";
robbankFunction = compile preprocessFileLineNumbers "banking\robbank2.sqf";
robbanksirenFunction = compile preprocessFileLineNumbers "banking\robbanksiren.sqf";
impoundFunction = compile preprocessFileLineNumbers "impound\impound2.sqf";
civ1canbestunned = 1;
civ2canbestunned = 1;
civ3canbestunned = 1;
civ4canbestunned = 1;
civ5canbestunned = 1;
civ6canbestunned = 1;
civ7canbestunned = 1;
civ8canbestunned = 1;
civ9canbestunned = 1;
civ10canbestunned = 1;
civ11canbestunned = 1;
civ12canbestunned = 1;
civ13canbestunned = 1;
civ14canbestunned = 1;
civ15canbestunned = 1;

// Initializing Keys
MY_KEYDOWN_FNC = {
    switch (_this) do {
 
                //Key X
        case 45: {
            nul = [] execVM "keyspressed.sqf";
        };
    };
	}; 


//BASIC VARS
mymoney = 0;
bankmoney = 15000;
dp1reward = 5000;
dp2reward = 6000;
whalerate = 1;
heroinrate = 4;
applerate = 3;
fishrate = 2;
oilrate = 1;
paycheckmoney = 2000;
paycheckmoneycop = 5000;
thirstLevel = 100;
iswanted = 0;
sirenloop = 0;
cophornloop = 0;
gotlicense = 0;

//INVENTORY
totalspace = 60;
usedspace = 0;
itemwhale = 0;
itemheroin = 0;
itemapple = 0;
itemfish = 0;
itemunpoil = 0;
itemprooil = 0;
driverlicense = 0;
gunlicense = 0;
airlicense = 0;
boatlicense = 0;
terrorlicense = 0;
oilprocesslicense = 0;

//INITIALIZING COPS
if (side player == west) then {
gunlicense = 1;
driverlicense = 1;
CopAirlicense = 0;
totalstunammo = 24;
havestunammo = 12;
execVM "addcivactionsforcops.sqf";
};

//Adding Triggers
waituntil {!isnull player};
hero = player addAction ["Farm Heroin","farming\startheroin.sqf",[],7,true,true,"","player in list trgHerofield"];
whale = player addAction ["Get Whale","farming\startwhale.sqf",[],7,true,true,"","vehicle player in list trgWhalefield"];
fish = player addAction ["Catch Fish","farming\startfish.sqf",[],7,true,true,"","vehicle player in list trgFishfield"];
apple = player addAction ["Gather Apples","farming\startapple.sqf",[],7,true,true,"","player in list trgApplefield"];
apple2 = player addAction ["Gather Apples","farming\startapple2.sqf",[],7,true,true,"","player in list trgApplefield2"];
oil = player addAction ["Gather oil","farming\startoil.sqf",[],7,true,true,"","player in list trgOilfield"];
// OLD INVENTORY: inventory = player addAction ["Inventory","inventory.sqf",[],7,true,true,"","player in list missioninit"];
execVM "paycheck.sqf";
execVM "safezone.sqf"
execVM "thirst.sqf";
execVM "siren.sqf";
execVM "siren2.sqf";
execVM "horns\cop_horn2.sqf";
execVM "safezonecopbase.sqf";
execVM "usedspaceis60.sqf";

//Playerhud & Thirst
execVM "playerhud.sqf";
player addMPEventHandler ["Respawn",{_this execVM "100thirst.sqf";}];