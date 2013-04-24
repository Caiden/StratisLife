//    @file Version: 1.0
//	@file Name: playerHud.sqf
//	@file Author: [404] Deadbeat, Edited by Zannaza, Caiden and Ylguf.
//	@file Created: 11/09/2012 04:23, Edited: 5-4-2013 22:31
//	@file Args:

disableSerialization;
private["_ui","_hud","_food","_water"];

while {true} do
{
    3000 cutRsc ["WastelandHud","PLAIN"];
    _ui = uiNameSpace getVariable "WastelandHud";
    _vitals = _ui displayCtrl 3600;
    _hudVehicle = _ui displayCtrl 3601;
    
    //Calculate Health 0 - 100
    _decimalPlaces = 2;
    _health = damage player;
    _health = round (_health * (10 ^ _decimalPlaces)) / (10 ^ _decimalPlaces);
    _health = 100 - (_health * 100);
    _vitals ctrlSetStructuredText parseText format 
	["
	%1 <img size='1' image='icons\health.paa'/><br/>
	%2 <img size='1' image='icons\money.paa'/><br/>
	%3 <img size='1' image='icons\water.paa'/><br/>
	%4 <img size='1' image='icons\food.paa'/><br/>
	%5 <img size='1' image='icons\wanted.paa'/><br/>
	",
	_health,
	(player getVariable "mymoney"),
	thirstLevel,
	hungryLevel,
	(player getVariable "iswanted")
	];
    _vitals ctrlCommit 0;
        
    if(player != vehicle player) then
    {
        _tempString = "";
        _yOffset = 0.24;
        _vehicle = assignedVehicle player;

        {
            if((driver _vehicle == _x) || (gunner _vehicle == _x)) then
            {
                if(driver _vehicle == _x) then
                {
                    _tempString = format ["%1 %2 <img size='0.8' image='icons\driver.paa'/><br/>",_tempString, (name _x)];
                    _yOffset = _yOffset + 0.04;
                }
                else
                {
                    _tempString = format ["%1 %2 <img size='0.8' image='icons\gunner.paa'/><br/>",_tempString, (name _x)];
                    _yOffset = _yOffset + 0.04;
                }; 
            }
            else
            {
                _tempString = format ["%1 %2 <img size='0.8' image='icons\cargo.paa'/><br/>",_tempString, (name _x)];
                _yOffset = _yOffset + 0.04;
            };    
        } forEach crew _vehicle;

        _hudVehicle ctrlSetStructuredText parseText _tempString;
        _x = safeZoneX + (safeZoneW * (1 - (0.42 / SafeZoneW)));
        _y = safeZoneY + (safeZoneH * (1 - (_yOffset / SafeZoneH)));
        _hudVehicle ctrlSetPosition [_x, _y, 0.4, 0.65];
        _hudVehicle ctrlCommit 0;
    };
        
    sleep 1;
};
