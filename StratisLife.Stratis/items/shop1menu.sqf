createDialog "Shop1Menu";
ctrlSetText[11187,format["Money: %1",(player getVariable "mymoney")]];

if(side player == west) then
{
	lbAdd[11188,"gps : $5000"];
	lbAdd[11188,"First AidKit : $7500"];
	lbAdd[11188,"NV Goggles : $17500"];
	lbAdd[11188,"Backpack : $5000"];
};

if(side player == civilian) then
{
	lbAdd[11188,"gps : $5000"];
	lbAdd[11188,"First AidKit : $7500"];
	lbAdd[11188,"NV Goggles : $17500"];
	lbAdd[11188,"Backpack : $5000"];
};