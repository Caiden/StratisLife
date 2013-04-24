if(floor parseNumber (ctrlText 11139) > 0) then 
{
	if((player getVariable 'itemfish') >= floor parseNumber (ctrlText 11139)) then 
	{
		player setVariable['itemfish',(player getVariable 'itemfish') - floor parseNumber (ctrlText 11139)];
		player setVariable['mymoney',(player getVariable 'mymoney') + (fishsellprice * floor parseNumber (ctrlText 11139))];
		closeDialog 0;
		hint format ["You have %1$ on you;",player getVariable 'mymoney' ];
		player setVariable['usedspace',(player getVariable 'usedspace') - floor parseNumber (ctrlText 11139)];
	}
	else
	{
		Hint format ["you have %1 and need %2",(player getVariable 'itemfish'),(floor parseNumber (ctrlText 11139))];
	};
};