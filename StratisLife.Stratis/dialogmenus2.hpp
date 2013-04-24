class RabbitSellMenu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {MyRabbit,TextEdit,Sell,Close};
	
	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520; h = 0.320;
	};
	class MyRabbit : BaseRscSingleText
	{
		idc = 11179;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class TextEdit : BaseRscTextBox
	{
		idc = 11180;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class Sell : BaseRscButton
	{
		idc = 11181;
		text = "Sell Rabbit";
		action = "execVM 'sell\rabbitsell.sqf',";
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

class WoodSellMenu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {MyWood,TextEdit,Sell,Close};
	
	class Background : BaseRscBox
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0, 0, 0, 0.8 };
		x = 0.640; y = 0.19;
		w = 0.520; h = 0.320;
	};
	class MyWood : BaseRscSingleText
	{
		idc = 11184;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class TextEdit : BaseRscTextBox
	{
		idc = 11185;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class Sell : BaseRscButton
	{
		idc = 11186;
		text = "Sell Wood";
		action = "execVM 'sell\woodsell.sqf',";
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