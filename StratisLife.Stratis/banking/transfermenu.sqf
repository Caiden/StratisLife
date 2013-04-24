if(starttrue >= 1) then
{
	createDialog "BankTransferMenu";
	ctrlSetText[11164,format["Money in Bank: %1",(player getVariable "bankmoney")]];
	{
		if (isPlayer _x) then 
		{
			_Playeridx = lbAdd [11165,name _x];
		};
	}forEach playableUnits;
}
else
{
	hint "5 minutes havent passed";
};


