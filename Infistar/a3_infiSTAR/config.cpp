/*
	Author: Chris(tian) "infiSTAR" Lorenzen
	Contact: infiSTAR23@gmail.com // www.infiSTAR.de
*/
class CfgPatches
{
	class a3_infiSTAR
	{
		requiredVersion = 0.1910;
		requiredAddons[] = {};
		a3_infiSTAR_version = 0.1910;
	};
};
class CfgFunctions
{
	class a3_infiSTAR
	{
		class main
		{
			file = "a3_infiSTAR";
			class preInit { preInit = 1; };
		};
	};
};