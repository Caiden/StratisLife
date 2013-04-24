class Shop1Menu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {MyMoney,ItemList,BuyItem,Close};
	
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
		idc = 11187;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class ItemList : BaseRscComboBox 
	{
		idc = 11188;
		moving = 1;
		colorSelectBackground[] = { 0.6, 0.6, 0.6, 0.7 };
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class BuyItem : BaseRscButton
	{
		idc = 11189;
		text = "Buy Item";
		action = "execVM 'items\shop1buy.sqf'";
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

class Shop2Menu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {MyMoney,ItemList,BuyItem,Close};
	
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
		idc = 11190;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class ItemList : BaseRscComboBox 
	{
		idc = 11191;
		moving = 1;
		colorSelectBackground[] = { 0.6, 0.6, 0.6, 0.7 };
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class BuyItem : BaseRscButton
	{
		idc = 11192;
		text = "Buy Item";
		action = "execVM 'items\shop2buy.sqf'";
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

class ItemMenu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {Title,Shop1Menu,Shop2Menu,Close};
	
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
		idc = 11193;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class Shop1Menu : BaseRscButton
	{
		idc = 11194;
		text = "Accessories";
		action = "execVM 'items\shop1menu.sqf'";
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class Shop2Menu : BaseRscButton
	{
		idc = 11195;
		text = "Scuba";
		action = "execVM 'items\shop2menu.sqf'";
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