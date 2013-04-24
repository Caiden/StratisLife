if(floor parseNumber (ctrlText 11130) > 0) then 
{
	if((player getVariable 'itemproheroin') >= floor parseNumber (ctrlText 11130)) then 
	{
		player setVariable['itemproheroin',(player getVariable 'itemproheroin') - floor parseNumber (ctrlText 11130)];
		player setVariable['mymoney',(player getVariable 'mymoney') + (heroinsellprice * floor parseNumber (ctrlText 11130))];
		closeDialog 0;
		hint format ["You have %1$ on you;",player getVariable 'mymoney' ];
		player setVariable['usedspace',(player getVariable 'usedspace') - floor parseNumber (ctrlText 11130)];
	}
	else
	{
		Hint format ["you have %1 and need %2",(player getVariable 'itemproheroin'),(floor parseNumber (ctrlText 11130))];
	};
};