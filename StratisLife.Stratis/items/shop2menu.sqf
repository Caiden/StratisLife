createDialog "Shop2Menu";
ctrlSetText[11190,format["Money: %1",(player getVariable "mymoney")]];
if(side player == west) then
{
	lbAdd[11191,"cop WIP"];
};
if(side player == civilian) then
{
	lbAdd[11191,"Wetsuit : $10000"];
	lbAdd[11191,"Rebreather : $7500"];
	lbAdd[11191,"Goggles : $7500"];
	lbAdd[11191,"Diving pack : $5000"];
};