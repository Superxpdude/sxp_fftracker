class CfgPatches
{
	class SXP_fftracker
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {};
	};
};

class CfgFunctions
{
	class SXP
	{
		class fftracker
		{
			file = "sxp_fftracker\functions";
			class ffT_handleFF {};
			class ffT_init {postInit = 1;};
			class ffT_writeLog {};
			class ffT_writeLoop {postInit = 1;};
		};
	};
};