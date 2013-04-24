if((player getVariable 'heroinprocesslicense') >= 1) then
{
	if(floor parseNumber (ctrlText 11133) >= 1) then 
	{
		if((player getVariable 'itemunpheroin') >= floor parseNumber (ctrlText 11133)) then 
		{
			player setVariable['itemunpheroin',(player getVariable 'itemunpheroin') - floor parseNumber (ctrlText 11133)];
			player setVariable['itemproheroin',(player getVariable 'itemproheroin') +  floor parseNumber (ctrlText 11133)];
			closeDialog 0;
			hint format ["You have %1 processed heroin on you, dont get caught!",player getVariable 'itemproheroin'];
		}
		else
		{
			Hint format ["you have %1 and need %2",(player getVariable 'itemunpheroin'),(floor parseNumber (ctrlText 11133))];
		};
	};
}
else
{
	Hint "You need a Heroin processing license"
};