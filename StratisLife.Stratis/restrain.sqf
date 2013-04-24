_victim = _this select 0;
_shooter = _this select 1;
victim2 = _victim;
hint format["%1 has been restrained by %2!",_victim,_shooter];
if (player == _victim) then 
{
	titleText ["You have been restrained!","Plain",5];
	isrestrained = 1;
	_unit = _victim;
	_anim = "AmovPercMstpSnonWnonDnon_Ease";
	while{isrestrained == 1} do
	{
		_unit playMove _anim;
		waitUntil{animationState _unit != _anim
	};
};
if (isrestrained == 1) then 
{
	sleep 240;
	if (isrestrained == 1) then 
	{
		hint "Auto unrestrained";
		isrestrained == 0;
		_havebeenreleased = 1;
	};
};

if (side player == west) then 
{
	_shooter = player;
	unrestrain = _victim addAction ["Unrestrain","restrain\unrestrain.sqf",[_shooter],7,true,true,"","(_target distance _this) < 2 && alive victim2"];
	jail = _victim addAction ["Arrest","jail\jail.sqf",[_shooter],7,true,true,"","(_target distance _this) < 2 && alive victim2"];
	frisk = _victim addAction ["Search","frisk\frisk.sqf",[_shooter],7,true,true,"","(_target distance _this) < 2 && alive victim2"];
};

if (side player == west) then 
{
	Waituntil { sleep 10; _havebeenreleased == 1};
	_victim removeAction unrestrain;
	_victim removeAction jail;
	_victim removeAction frisk;
	_havebeenreleased = 0;
};