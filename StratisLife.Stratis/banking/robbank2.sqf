_pplayer = _this select 0;
_robberyreward = ceil(random 10) * 3000;
_bankrobberylost = ceil(random 10) * 1000;

if (_pplayer == player) then 
{
	player setVariable["mymoney", (player getVariable "mymoney") + _robberyreward];
	robberyreward = _robberyreward;
	publicvariable "robberyreward";
	hint format ["You stole %1 from the bank safe",robberyreward];
	titleText ["The bank was robbed succesfully.", "PLAIN"];
	} 
	else 
	{
		player setVariable["bankmoney", (player getVariable "bankmoney") - _bankrobberylost];
		titleText ["The bank was robbed succesfully.", "PLAIN"];
		hint format ["You lost %1 due to a bank robbery",_bankrobberylost];
	};
if (side player == west) then 
{
	sleep 10;
	hint format ["The robbers stole %1",robberyreward];
};
sleep (60 * 10);
bankcanberobbed = 1;
publicvariable "bankcanberobbed";