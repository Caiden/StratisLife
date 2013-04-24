class PistolMenu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {MyMoney,WeaponList,BuyWeapon,BuyAmmo,Close};
	
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
		idc = 11168;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class WeaponList : BaseRscComboBox 
	{
		idc = 11169;
		moving = 1;
		colorSelectBackground[] = { 0.6, 0.6, 0.6, 0.7 };
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class BuyWeapon : BaseRscButton
	{
		idc = 11170;
		text = "Buy Pistol";
		action = "execVM 'weapons\pistolbuy.sqf'";
		x = 0.65; y = 0.5;
		w = 0.5;
	};
	class BuyAmmo : BaseRscButton
	{
		idc = 11171;
		text = "Buy Ammo";
		action = "execVM 'weapons\pistolammobuy.sqf'";
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

class RifleMenu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {MyMoney,WeaponList,BuyWeapon,BuyAmmo,Close};
	
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
		idc = 11172;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class WeaponList : BaseRscComboBox 
	{
		idc = 11173;
		moving = 1;
		colorSelectBackground[] = { 0.6, 0.6, 0.6, 0.7 };
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class BuyWeapon : BaseRscButton
	{
		idc = 11174;
		text = "Buy Rifle";
		action = "execVM 'weapons\riflebuy.sqf'";
		x = 0.65; y = 0.5;
		w = 0.5;
	};
	class BuyAmmo : BaseRscButton
	{
		idc = 11175;
		text = "Buy Ammo";
		action = "execVM 'weapons\rifleammobuy.sqf'";
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

class WeaponMenu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {Background};
	objects[] = {};
	controls[] = {Title,PistolMenu,RifleMenu,Close};
	
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
		idc = 11176;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 0.65; y = 0.2;
		w = 0.5;
	};
	class PistolMenu : BaseRscButton
	{
		idc = 11177;
		text = "Pistols";
		action = "execVM 'weapons\pistolmenu.sqf'";
		x = 0.65; y = 0.275;
		w = 0.5;
	};
	class RifleMenu : BaseRscButton
	{
		idc = 11178;
		text = "Rifles";
		action = "execVM 'weapons\riflemenu.sqf'";
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