if(floor parseNumber (ctrlText 11180) > 0) then 
{
	if((player getVariable 'itemrabbitmeat') >= floor parseNumber (ctrlText 11180)) then 
	{
        player setVariable["rabbitmeatModel",0];
        
		player setVariable['itemrabbitmeat',(player getVariable 'itemrabbitmeat') - floor parseNumber (ctrlText 11180)];
		player setVariable['mymoney',(player getVariable 'mymoney') + (rabbitsellprice * floor parseNumber (ctrlText 11180))];
		closeDialog 0;
		hint format ["You have %1$ on you;",player getVariable 'mymoney' ];
		player setVariable['usedspace',(player getVariable 'usedspace') - (5 * floor parseNumber (ctrlText 11180))];
	}
	else
	{
		Hint format ["you have %1 and need %2",(player getVariable 'itemrabbitmeat'),(floor parseNumber (ctrlText 11180))];
	};
};