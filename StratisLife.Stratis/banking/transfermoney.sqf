if(floor parseNumber (ctrlText 11166) > 0) then 
{
	if((player getVariable 'bankmoney') >= floor parseNumber (ctrlText 11166)) then 
	{
		player setVariable['bankmoney',(player getVariable 'bankmoney') - floor parseNumber (ctrlText 11166)];
		transfernumber =  lbCurSel 11165;
		transfern = lbtext [11165, transfernumber];
		transfera = (floor parseNumber (ctrlText 11166));
		publicVariable 'transfern';
		publicVariable 'transfera';
		closeDialog 0;
		execVM 'banking\bankmenu.sqf';
	};
};