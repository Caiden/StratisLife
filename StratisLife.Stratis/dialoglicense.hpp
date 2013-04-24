class CivLicenseMenu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {};
	objects[] = {};
	controls[] = {Title,InfoT,CostT,DriverLicense,Info1,Cost1,HuntingLicense,Info2,Cost2,AirLicense,Info3,Cost3,BoatLicense,Info4,Cost4,OilprocessLicense,Info5,Cost5,Close};
class Title : BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "License Vendor";
		x = 0.65; y = 0.2;
		w = 0.4;
	};
	class InfoT: BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "Owned";
		x = 1.05; y = 0.2;
		w = 0.1;
	};
	class CostT: BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "Cost";
		x = 1.15; y = 0.2;
		w = 0.15;
	};
	class DriverLicense : BaseRscButton
	{
		idc = -1;
		text = "Buy Driver License";
		action = "if((player getVariable 'driverlicense') >= 1) then{}else{if((player getVariable 'mymoney') >= 5000) then{player setVariable['mymoney',((player getVariable 'mymoney') - 5000)]; player setVariable['driverlicense',1];}};closeDialog 0; execVM 'licensemenu.sqf';";
		x = 0.65; y = 0.275;
		w = 0.4;
	};
	class Info1: BaseRscSingleText
	{
		idc = 11157;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 1.05; y = 0.275;
		w = 0.1;
	};
	class cost1: BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "5000$";
		x = 1.15; y = 0.275;
		w = 0.15;
	};
	class HuntingLicense : BaseRscButton
	{
		idc = -1;
		text = "Buy Hunting License";
		action = "if((player getVariable 'huntinglicense') >= 1) then{}else{if((player getVariable 'mymoney') >= 15000) then{player setVariable['mymoney',((player getVariable 'mymoney') - 15000)]; player setVariable['huntinglicense',1]; }};closeDialog 0;execVM 'licensemenu.sqf';";
		x = 0.65; y = 0.350;
		w = 0.4;
	};
	class Info2: BaseRscSingleText
	{
		idc = 11158;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 1.05; y = 0.350;
		w = 0.1;
	};
	class cost2: BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "15000$";
		x = 1.15; y = 0.350;
		w = 0.15;
	};
	class AirLicense : BaseRscButton
	{
		idc = -1;
		text = "Buy Air License";
		action = "if((player getVariable 'airlicense') >= 1) then{}else{if((player getVariable 'mymoney') >= 30000) then{player setVariable['mymoney',((player getVariable 'mymoney') - 30000)]; player setVariable['airlicense',1];}};closeDialog 0; execVM 'licensemenu.sqf';";
		x = 0.65; y = 0.425;
		w = 0.4;
	};
	class Info3: BaseRscSingleText
	{
		idc = 11159;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 1.05; y = 0.425;
		w = 0.1;
	};
	class cost3: BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "30000$";
		x = 1.15; y = 0.425;
		w = 0.15;
	};
	class BoatLicense : BaseRscButton
	{
		idc = -1;
		text = "Buy Boat License";
		action = "if((player getVariable 'boatlicense') >= 1) then{}else{if((player getVariable 'mymoney') >= 5000) then{player setVariable['mymoney',((player getVariable 'mymoney') - 5000)]; player setVariable['boatlicense',1];}};closeDialog 0; execVM 'licensemenu.sqf';";
		x = 0.65; y = 0.500;
		w = 0.4;
	};
	class Info4: BaseRscSingleText
	{
		idc = 11160;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 1.05; y = 0.500;
		w = 0.1;
	};
	class cost4: BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "5000$";
		x = 1.15; y = 0.500;
		w = 0.15;
	};
	class OilprocessLicense : BaseRscButton
	{
		idc = -1;
		text = "Buy Oil Processing License";
		action = "if((player getVariable 'oilprocesslicense') >= 1) then{}else{if((player getVariable 'mymoney') >= 10000) then{player setVariable['mymoney',((player getVariable 'mymoney') - 10000)]; player setVariable['oilprocesslicense',1];}};closeDialog 0; execVM 'licensemenu.sqf';";
		x = 0.65; y = 0.575;
		w = 0.4;
	};
	class Info5: BaseRscSingleText
	{
		idc = 11162;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 1.05; y = 0.575;
		w = 0.1;
	};
	class cost5: BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "10000$";
		x = 1.15; y = 0.575;
		w = 0.15;
	};
	class Close : BaseRscButton
	{
		idc = -1;
		text = "Close";
		action = "closeDialog 0";
		x = 0.65; y = 0.650;
		w = 0.65;
	};
};

class TerrorLicenseMenu
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	controlsBackground[] = {};
	objects[] = {};
	controls[] = {Title,InfoT,CostT,TerrorLicense,Info5,cost5,Close};
	class Title : BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "Terror Vendor";
		x = 0.65; y = 0.2;
		w = 0.4;
	};
	class InfoT: BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "Owned";
		x = 1.05; y = 0.2;
		w = 0.1;
	};
	class CostT: BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "Cost";
		x = 1.15; y = 0.2;
		w = 0.15;
	};
	class TerrorLicense : BaseRscButton
	{
		idc = -1;
		text = "Buy Terror License";
		action = "if((player getVariable 'terrorlicense') >= 1) then{}else{if((player getVariable 'mymoney') >= 50000) then{player setVariable['mymoney',((player getVariable 'mymoney') - 50000)];player setVariable['terrorlicense',1];}};closeDialog 0; execVM 'terrormenu.sqf';";
		x = 0.65; y = 0.275;
		w = 0.4;
	};
	class Info5: BaseRscSingleText
	{
		idc = 11161;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		x = 1.05; y = 0.275;
		w = 0.1;
	};
	class cost5: BaseRscSingleText
	{
		idc = -1;
		moving = 1;
		colorBackground[] = { 0.7, 0.7, 0.7, 0.8 };
		sizeEx = 0.04;
		text = "50000$";
		x = 1.15; y = 0.275;
		w = 0.15;
	};
};





