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

class CfgRemoteExec
{
	class Functions
	{
		class SXP_fnc_ffT_init {
			allowedTargets = 2;
		};
		class SXP_fnc_ffT_handleFF {
			allowedTargets = 2;
		};
		class SXP_fnc_ffT_writeLoop {
			allowedTargets = 2;
		};
		class SXP_fnc_ffT_writeLog {
			allowedTargets = 2;
		};
		class SXP_fnc_ffT_clientEventHandler {
			allowedTargets = 1;
		};
		class SXP_fnc_ffT_clientInit {
			allowedTargets = 1;
			jip = 1;
		};
	};
};