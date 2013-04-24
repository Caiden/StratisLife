if(floor parseNumber (ctrlText 11185) > 0) then 
{
	if((player getVariable 'itemwood') >= floor parseNumber (ctrlText 11185)) then 
	{
		player setVariable['itemwood',(player getVariable 'itemwood') - floor parseNumber (ctrlText 11185)];
		player setVariable['mymoney',(player getVariable 'mymoney') + (woodsellprice * floor parseNumber (ctrlText 11185))];
		closeDialog 0;
		hint format ["You have %1$ on you;",player getVariable 'mymoney' ];
		player setVariable['usedspace',(player getVariable 'usedspace') - floor parseNumber (ctrlText 11185)];
	}
	else
	{
		Hint format ["you have %1 and need %2",(player getVariable 'itemwood'),(floor parseNumber (ctrlText 11185))];
	};
};