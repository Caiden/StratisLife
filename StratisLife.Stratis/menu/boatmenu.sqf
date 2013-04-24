createDialog "BoatMenu";
ctrlSetText[11123,format["Money: %1",(player getVariable "mymoney")]];
if(side player == west) then
{
	lbAdd[11124,"Life Boat : 3000"];
	lbAdd[11124,"Assault Boat : 5000"];
};
if(side player == civilian) then
{
	lbAdd[11124,"Rubber Boat : 5000"];
};
