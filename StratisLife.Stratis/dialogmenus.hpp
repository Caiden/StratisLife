class InventoryMenu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {};
	objects[] = {};
	controls[] = {MyMoney,InfoMyLicenses,InfoMyInventory,InfoWanted,Close};
	
	class MyMoney : BaseRscSingleText
	{
		idc = 11111;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class InfoMyLicenses : BaseRscSingleText
	{
		idc = 11112;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class InfoMyInventory : BaseRscSingleText
	{
		idc = 11113;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.350;
		w = 0.5;
	};
	class InfoWanted : BaseRscSingleText
	{
		idc = 11114;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.425;
		w = 0.5;
	};
	class Close : BaseRscButton
	{
		idc = -1;
		text = "Close";
		action = "closeDialog 0";
		x = 0.65; y = 0.5;
		w = 0.5;
	};
};

class BankMenu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {MyMoney,InfoMyBank,TextEdit,Withdraw,Deposit,Transfer,Close};
	
	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520; h = 0.545;
	};
	class MyMoney : BaseRscSingleText
	{
		idc = 11115;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class InfoMyBank : BaseRscSingleText
	{
		idc = 11116;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class TextEdit : BaseRscTextBox
	{
		idc = 11117;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.350;
		w = 0.5;
	};
	class Withdraw : BaseRscButton
	{
		idc = 11118;
		text = "Withdraw";
		action = "execVM 'banking\withdrawmoney.sqf'";
		x = 0.65; y = 0.425;
		w = 0.5;
	};
	class Deposit : BaseRscButton
	{
		idc = 11119;
		text = "Deposit";
		action = "execVM 'banking\depositmoney.sqf'";
		x = 0.65; y = 0.5;
		w = 0.5;
	};
	class Transfer : BaseRscButton
	{
		idc = -1;
		text = "Wire Transfer";
		action = "closeDialog 0, execVM 'banking\transfermenu.sqf'";
		x = 0.65; y = 0.575;
		w = 0.5;
	};
	class Close : BaseRscButton
	{
		idc = -1;
		text = "Close";
		action = "closeDialog 0";
		x = 0.65; y = 0.650;
		w = 0.5;
	};
};

class CarMenu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {MyMoney,CarList,BuyCar,Close};
	
	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520; h = 0.470;
	};
	class MyMoney : BaseRscSingleText
	{
		idc = 11120;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class CarList : BaseRscComboBox 
	{
		idc = 11121;
		moving = 1;
		colorSelectBackground[] = { 0.6, 0.6, 0.6, 0.7 };
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class BuyCar : BaseRscButton
	{
		idc = 11122;
		text = "Buy Car";
		action = "execVM 'carbuy.sqf'";
		x = 0.65; y = 0.5;
		w = 0.5;
	};
	class Close : BaseRscButton
	{
		idc = -1;
		text = "Close";
		action = "closeDialog 0";
		x = 0.65; y = 0.575;
		w = 0.5;
	};
};

class BoatMenu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {MyMoney,BoatList,BuyBoat,Close};
	
	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520;h = 0.470;
	};
	class MyMoney : BaseRscSingleText
	{
		idc = 11123;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class BoatList : BaseRscComboBox 
	{
		idc = 11124;
		moving = 1;
		colorSelectBackground[] = { 0.6, 0.6, 0.6, 0.7 };
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class BuyBoat : BaseRscButton
	{
		idc = 11125;
		text = "Buy Boat";
		action = "execVM 'boatbuy.sqf'";
		x = 0.65; y = 0.5;
		w = 0.5;
	};
	class Close : BaseRscButton
	{
		idc = -1;
		text = "Close";
		action = "closeDialog 0";
		x = 0.65; y = 0.575;
		w = 0.5;
	};
};

class HeliMenu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {MyMoney,HeliList,BuyHeli,Close};
	
	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520;h = 0.470;
	};
	class MyMoney : BaseRscSingleText
	{
		idc = 11126;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class HeliList : BaseRscComboBox 
	{
		idc = 11127;
		moving = 1;
		colorSelectBackground[] = { 0.6, 0.6, 0.6, 0.7 };
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class BuyHeli : BaseRscButton
	{
		idc = 11128;
		text = "Buy Heli";
		action = "execVM 'helibuy.sqf'";
		x = 0.65; y = 0.5;
		w = 0.5;
	};
	class Close : BaseRscButton
	{
		idc = -1;
		text = "Close";
		action = "closeDialog 0";
		x = 0.65; y = 0.575;
		w = 0.5;
	};
};

class HeroinSellMenu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {MyHeroin,TextEdit,Sell,Close};
	
	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520; h = 0.320;
	};
	class MyHeroin : BaseRscSingleText
	{
		idc = 11129;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class TextEdit : BaseRscTextBox
	{
		idc = 11130;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class Sell : BaseRscButton
	{
		idc = 11131;
		text = "Sell Heroin";
		action = "execVM 'sell\heroinsell.sqf'";
		x = 0.65; y = 0.350;
		w = 0.5;
	};
	class Close : BaseRscButton
	{
		idc = -1;
		text = "Close";
		action = "closeDialog 0";
		x = 0.65; y = 0.425;
		w = 0.5;
	};
};

class HeroinProMenu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {MyHeroin,TextEdit,Process,HeroinprocessLicense,Info7,Cost7,Close};
	
	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.670; h = 0.395;
	};
	class MyHeroin : BaseRscSingleText
	{
		idc = 11132;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class TextEdit : BaseRscTextBox
	{
		idc = 11133;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class Process : BaseRscButton
	{
		idc = 11134;
		text = "Boil,Strain,Reduce,Dry,Pack";
		action = "execVM 'farming\heroinprocess.sqf'";
		x = 0.65; y = 0.350;
		w = 0.5;
	};
		class HeroinprocessLicense : BaseRscButton
	{
		idc = -1;
		text = "Trained to process heroin:";
		action = "if((player getVariable 'heroinprocesslicense') >= 1) then{}else{if((player getVariable 'mymoney') >= 5000) then{player setVariable['mymoney',((player getVariable 'mymoney') - 5000)]; player setVariable['heroinprocesslicense',1];}};closeDialog 0; execVM 'menu\heroinpromenu.sqf';";
		x = 0.65; y = 0.500;
		w = 0.4;
	};
	class Info7: BaseRscSingleText
	{
		idc = 11163;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 1.05; y = 0.500;
		w = 0.1;
	};
	class cost7: BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "5000$";
		x = 1.15; y = 0.500;
		w = 0.15;
	};
	class Close : BaseRscButton
	{
		idc = -1;
		text = "Close";
		action = "closeDialog 0";
		x = 0.65; y = 0.425;
		w = 0.5;
	};
};

class AppleSellMenu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {MyApple,TextEdit,Sell,Close};
	
	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520; h = 0.320;
	};
	class MyApple : BaseRscSingleText
	{
		idc = 11135;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class TextEdit : BaseRscTextBox
	{
		idc = 11136;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class Sell : BaseRscButton
	{
		idc = 11137;
		text = "Sell Apples";
		action = "execVM 'sell\applesell.sqf'";
		x = 0.65; y = 0.350;
		w = 0.5;
	};
	class Close : BaseRscButton
	{
		idc = -1;
		text = "Close";
		action = "closeDialog 0";
		x = 0.65; y = 0.425;
		w = 0.5;
	};
};

class FishSellMenu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {MyFish,TextEdit,Sell,Close};
	
	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520; h = 0.320;
	};
	class MyFish : BaseRscSingleText
	{
		idc = 11138;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class TextEdit : BaseRscTextBox
	{
		idc = 11139;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class Sell : BaseRscButton
	{
		idc = 11140;
		text = "Sell Fish";
		action = "execVM 'sell\fishsell.sqf',";
		x = 0.65; y = 0.350;
		w = 0.5;
	};
	class Close : BaseRscButton
	{
		idc = -1;
		text = "Close";
		action = "closeDialog 0";
		x = 0.65; y = 0.425;
		w = 0.5;
	};
};

class WhaleSellMenu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {MyWhale,TextEdit,Sell,Close};
	
	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520; h = 0.320;
	};
	class MyWhale : BaseRscSingleText
	{
		idc = 11141;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class TextEdit : BaseRscTextBox
	{
		idc = 11142;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class Sell : BaseRscButton
	{
		idc = 11143;
		text = "Sell Whale";
		action = "execVM 'sell\whalesell.sqf'";
		x = 0.65; y = 0.350;
		w = 0.5;
	};
	class Close : BaseRscButton
	{
		idc = -1;
		text = "Close";
		action = "closeDialog 0";
		x = 0.65; y = 0.425;
		w = 0.5;
	};
};

class OilSellMenu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {MyOil,TextEdit,Sell,Close};
	
	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520; h = 0.320;
	};
	class MyOil : BaseRscSingleText
	{
		idc = 11144;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class TextEdit : BaseRscTextBox
	{
		idc = 11145;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class Sell : BaseRscButton
	{
		idc = 11146;
		text = "Sell Oil";
		action = "execVM 'sell\oilsell.sqf'";
		x = 0.65; y = 0.350;
		w = 0.5;
	};
	class Close : BaseRscButton
	{
		idc = -1;
		text = "Close";
		action = "closeDialog 0";
		x = 0.65; y = 0.425;
		w = 0.5;
	};
};

class OilProMenu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {MyOil,TextEdit,Process,Close};
	
	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520; h = 0.320;
	};
	class MyOil : BaseRscSingleText
	{
		idc = 11147;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.7;
	};
	class TextEdit : BaseRscTextBox
	{
		idc = 11148;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.7;
	};
	class Process : BaseRscButton
	{
		idc = 11149;
		text = "Process Oil";
		action = "execVM 'farming\oilprocess.sqf'";
		x = 0.65; y = 0.350;
		w = 0.7;
	};
	class Close : BaseRscButton
	{
		idc = -1;
		text = "Close";
		action = "closeDialog 0";
		x = 0.65; y = 0.425;
		w = 0.7;
	};
};

class MarketMenu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {Title,FishMenu,AppleMenu,WoodMenu,RabbitMenu,Close};
	
	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520; h = 0.470;
	};
	class Title : BaseRscSingleText
	{
		idc = 11150;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class FishMenu : BaseRscButton
	{
		idc = 11151;
		text = "Sell Fish";
		action = "execVM 'menu\fishmenu.sqf'";
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class AppleMenu : BaseRscButton
	{
		idc = 11152;
		text = "Sell Apples";
		action = "execVM 'menu\applemenu.sqf'";
		x = 0.65; y = 0.350;
		w = 0.5;
	};
	class WoodMenu : BaseRscButton
	{
		idc = 11182;
		text = "Sell Wood";
		action = "execVM 'menu\woodmenu.sqf'";
		x = 0.65; y = 0.425;
		w = 0.5;
	};
	class RabbitMenu : BaseRscButton
	{
		idc = 11183;
		text = "Sell Rabbit";
		action = "execVM 'menu\rabbitmenu.sqf'";
		x = 0.65; y = 0.500;
		w = 0.5;
	};
	class Close : BaseRscButton
	{
		idc = -1;
		text = "Close";
		action = "closeDialog 0";
		x = 0.65; y = 0.575;
		w = 0.5;
	};
};

class BlackMarketMenu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {Title,HeroinMenu,WhaleMenu,Close};
	
	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520; h = 0.320;
	};
	class Title : BaseRscSingleText
	{
		idc = 11153;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class HeroinMenu : BaseRscButton
	{
		idc = 11154;
		text = "Sell Heroin";
		action = "execVM 'menu\heroinmenu.sqf'";
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class WhaleMenu : BaseRscButton
	{
		idc = 11155;
		text = "Sell Whale";
		action = "execVM 'menu\whalemenu.sqf'";
		x = 0.65; y = 0.350;
		w = 0.5;
	};
	class Close : BaseRscButton
	{
		idc = -1;
		text = "Close";
		action = "closeDialog 0";
		x = 0.65; y = 0.425;
		w = 0.5;
	};
};

class BankTransferMenu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {InfoMyBank,PlayerList,TextEdit,Transfer,Close};
	
	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520; h = 0.545;
	};
	class InfoMyBank : BaseRscSingleText
	{
		idc = 11164;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class PlayerList : BaseRscComboBox 
	{
		idc = 11165;
		moving = 1;
		colorSelectBackground[] = { 0.6, 0.6, 0.6, 0.7 };
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class TextEdit : BaseRscTextBox
	{
		idc = 11166;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.500;
		w = 0.5;
	};
	class Transfer : BaseRscButton
	{
		idc = 11167;
		text = "Transfer";
		action = "execVM 'banking\transfermoney.sqf'";
		x = 0.65; y = 0.575;
		w = 0.5;
	};
	class Close : BaseRscButton
	{
		idc = -1;
		text = "Close";
		action = "closeDialog 0, execVM 'banking\bankmenu.sqf'";
		x = 0.65; y = 0.650;
		w = 0.5;
	};
};






