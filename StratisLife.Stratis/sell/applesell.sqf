if(floor parseNumber (ctrlText 11136) > 0) then 
{
	if((player getVariable 'itemapple') >= floor parseNumber (ctrlText 11136)) then 
	{
		player setVariable['itemapple',(player getVariable 'itemapple') - floor parseNumber (ctrlText 11136)];
		player setVariable['mymoney',(player getVariable 'mymoney') + (applesellprice * floor parseNumber (ctrlText 11136))];
		closeDialog 0;
		hint format ["You have %1$ on you;",player getVariable 'mymoney' ];
		player setVariable['usedspace',(player getVariable 'usedspace') - floor parseNumber (ctrlText 11136)];
	}
	else
	{
		Hint format ["you have %1 and need %2",(player getVariable 'itemapple'),(floor parseNumber (ctrlText 11136))];
	};
};