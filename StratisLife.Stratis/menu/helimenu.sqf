createDialog "HeliMenu";
ctrlSetText[11126,format["Money: %1",(player getVariable "mymoney")]];
if(side player == west) then
{
	lbAdd[11127,"Little Bird : 40000"];
	lbAdd[11127,"KA60 : 60000"];
};
if(side player == civilian) then
{
	lbAdd[11127,"Little Bird : 125000"];
	lbAdd[11127,"KA60 : 150000"];
};