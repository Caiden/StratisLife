
if((player getVariable 'oilprocesslicense') >= 1) then
{
	if(floor parseNumber (ctrlText 11148) >= 1) then 
	{
		if((player getVariable 'mymoney') >= (oilprocessprice * floor parseNumber (ctrlText 11148))) then 
		{
			if((player getVariable 'itemunpoil') >= floor parseNumber (ctrlText 11148)) then 
			{
				player setVariable['itemunpoil',(player getVariable 'itemunpoil') - floor parseNumber (ctrlText 11148)];
				player setVariable['itemprooil',(player getVariable 'itemprooil') +  floor parseNumber (ctrlText 11148)];
				closeDialog 0;
				hint format ["You have %1 processed oil on you.",player getVariable 'itemprooil'];
				player setVariable['mymoney',((player getVariable 'mymoney') - (oilprocessprice * floor parseNumber (ctrlText 11148)))];
			}
			else
			{
				Hint format ["you have %1 unprocessed oil and need %2.",(player getVariable 'itemunpoil'),floor parseNumber (ctrlText 11148)];
			};
		}
		else
		{
			Hint format ["you have %1$ and need %2$",(player getVariable 'mymoney'),(oilprocessprice * floor parseNumber (ctrlText 11148))];
		};
	};
}
else
{
	Hint "You need a oil processing license";
};