if (isServer) then 
{
	victim = 0;
	shotby = 0;
	dmg = 0;
	shooter = 0;
	"shotby" addPublicVariableEventHandler {execVM "stunEH.sqf"};
	//execVM "banking\bankinit.sqf"; //OLD
    execVM "buildinginit.sqf"; // NEW
    execVM "farming\rabbitHunting\starthuntingrabbits.sqf"; //Spawn rabbits in area
};
if !(isServer) then 
{
	waitUntil { alive player };
};

playerTotalSpace = 60;

dp1reward = 5000;
dp2reward = 6000;
whalerate = 1;
heroinrate = 1;
applerate = 2;
fishrate = 2;
oilrate = 1;
woodrate = 1;
rabbitrate = 1;

applesellprice = 325;
woodsellprice = 500;
fishsellprice = 750;
heroinsellprice = 1250;
whalesellprice = 10000;
oilsellprice = 12000;
oilprocessprice = 250;
heroinprocessprice = 250;
rabbitsellprice = 6000;

thirstLevel = 100;
starttrue = 0;
bankcanberobbed = 1;

// Create a group to assign all the rabbits to. Helps keep track of them.
groupRabbit = createGroup sideLogic;
// Number of rabbits in the hunting area to create.
totalRabbits = 20;


//execVM "keybinds.sqf";

sirenloop = 0;
stunned = 0;
stunshooter = 0;
dmg = 0;
stunsound = 0;
transfern = 0;
transfera = 0;
transferi = 0;
stunnedhint = 0;
shooterhint = 0;
"dmg" addPublicVariableEventHandler {currenthp = getDammage player; player setdamage (currenthp - dmg);};
"transfera" addPublicVariableEventHandler {if(name player == transfern)then{player execVM 'banking\transferbank.sqf';hint format[' %1$ has been transfered to your account ',transfera];};};
"shooterhint" addPublicVariableEventHandler {hint format["%1 has been stunned by %2", stunnedhint, shooterhint];};

tazerFunction = compile preprocessFileLineNumbers "stunsound.sqf";
paydayFunction = preprocessFileLineNumbers "banking\paycheck.sqf"; 
sirenFunction = compile preprocessFileLineNumbers "siren4.sqf";
restrainFunction = compile preprocessFileLineNumbers "restrain\restrain3.sqf";
unrestrainFunction = compile preprocessFileLineNumbers "restrain\unrestrain2.sqf";
jailFunction = compile preprocessFileLineNumbers "jail\jail2.sqf";
friskFunction = compile preprocessFileLineNumbers "frisk\frisk2.sqf";
vehiclepulloutFunction = compile preprocessFileLineNumbers "vehiclelock\eject2.sqf";
vehiclepullout2Function = compile preprocessFileLineNumbers "vehiclelock\eject3.sqf";
robbankFunction = compile preprocessFileLineNumbers "banking\robbank2.sqf";
robbanksirenFunction = compile preprocessFileLineNumbers "banking\robbanksiren.sqf";
impoundFunction = compile preprocessFileLineNumbers "impound\impound2.sqf";
usedspace_Fnc = compile preprocessFileLineNumbers "usedspace.sqf";
//weatherFunction = compile preprocessFileLineNumbers "dynweather2.sqf";
//timeFunction = compile preprocessFileLineNumbers "dyntime2.sqf";

// Initializing Keys
MY_KEYDOWN_FNC = 
{
	switch (_this) do 
	{
		case 35: 
		{
			nul = [] execVM "keyspressed.sqf";
		};
	};
}; 

// Arrays containing the triggers for collecting items.
// Add trigger names to appropriate array for multiple trigger areas.
allCollectingTriggers = [   [trgApplefield1, trgApplefield2], // Apple triggers
                            [trgFishfield], // Fishing triggers
                            [trgOilfield], // Oil triggers
                            [trgForestry1], // Wood triggers
                            [trgWhalefield], // Whaling triggers
                            [trgHerofield] // Heroin triggers
                            // leaving rabbit triggers out for now, as lot of testing will need to be done. Make sure rabbits spawn consistently in the right trigger areas and such.
                        ];

// Arrays containing the actions for collecting items.
// Array elements get generated by the mission.
allCollectingActions =  [   [], // apples
                            [], // fishing
                            [], // oil
                            [], // wood
                            [], // whale
                            []  // heroin
                        ];

// Arrays containing the triggers for vehicle repair.
// Add trigger names to appropriate array for multiple trigger areas.
allServicingTriggers =  [   [trg_carservice1], // car service
                            [trg_heliservice1], // heli service
                            [trg_fuelservice1]  // fuel service
                        ];

// Arrays containing the actins for vehicle repair.
// Array elements get generated by the mission.
allServicingActions =   [   [], // car service
                            [], // heli service
                            []  // fuel service
                        ];

1 execVM "setupPlayer.sqf";
execVM "banking\paycheck.sqf";
execVM "safezonecopbase.sqf"
execVM "siren.sqf";
execVM "siren2.sqf";
execVM "safezonecopbase.sqf";
execVM "buildingprot.sqf";
execVM "usedspace.sqf";
execVM "speedzone.sqf";


//Playerhud & Thirst
execVM "playerhud.sqf";
player addMPEventHandler ["Respawn",{_this execVM "onRespawn.sqf"}];
//thirst setdamage 0 so you dont die atm
execVM "thirst.sqf";
sleep 300;
starttrue = 1;


