while {true} do
{
	sleep 60 * 2;
	hint "Next paycheck in 3 Minutes!";
	sleep 60 * 3;
	hint "Next paycheck in 1 Minute!";
	sleep 60 * 1;
    starttrue = 1;
	hint format["You just received your Paycheck of %1 $!",(player getVariable 'mypaycheck')];
	player setVariable['bankmoney',(player getVariable 'bankmoney') + (player getVariable 'mypaycheck')];
};