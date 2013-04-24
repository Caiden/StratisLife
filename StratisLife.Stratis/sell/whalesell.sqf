if(floor parseNumber (ctrlText 11142) > 0) then 
{
	if((player getVariable 'itemwhale') >= floor parseNumber (ctrlText 11142)) then 
	{
		player setVariable['itemwhale',(player getVariable 'itemwhale') - floor parseNumber (ctrlText 11142)];
		player setVariable['mymoney',(player getVariable 'mymoney') + (whalesellprice * floor parseNumber (ctrlText 11142))];
		closeDialog 0;
		hint format ["You have %1$ on you;",player getVariable 'mymoney' ];
		player setVariable['usedspace',(player getVariable 'usedspace') - ( 10 * floor parseNumber (ctrlText 11142))];
	}
	else
	{
		Hint format ["you have %1 and need %2",(player getVariable 'itemwhale'),(floor parseNumber (ctrlText 11142))];
	};
};