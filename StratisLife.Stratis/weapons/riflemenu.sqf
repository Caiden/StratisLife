createDialog "RifleMenu";
ctrlSetText[11172,format["Money: %1",(player getVariable "mymoney")]];
if(side player == west) then
{
	lbAdd[11173,"MXC : 15000/2000"];
};
if(side player == civilian) then
{
	lbAdd[11173,"TRG20 : 20000/2000"];
	lbAdd[11173,"Katiba : 20000/2000"];
};