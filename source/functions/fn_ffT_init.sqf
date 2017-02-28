// Initialization script for the friendly-fire tracker.
// Runs only on the server, and handles sending the event handlers to all clients.
// Runs as postInit, uses remoteExec's JIP functionality to send event handlers to all clients (current and future)

// Exit the script if for some reason this isn't run on the server
if (!isServer) exitWith {};

// Define the addEventHandler function
SXP_fnc_ffT_clientEventHandler = compileFinal "
	player addEventHandler ['Hit', {
		if (([side (_x select 0), side (_x select 3)] call BIS_fnc_sideIsFriendly) AND ((_x select 0) != (_x select 3))) then {
			[_x select 0, _x select 3, _x select 1] remoteExec ['SXP_fnc_ffT_handleFF', 2];
		};
	}];
";

// Define the client-function
SXP_fnc_ffT_clientInit = compileFinal "
	[] call SXP_fnc_ffT_clientEventHandler;
	
	player addEventHandler ['Respawn', {
		[] call SXP_fnc_ffT_clientEventHandler;
	}];
";

// Send the variables to all clients
publicVariable "SXP_fnc_ffT_clientEventHandler";
publicVariable "SXP_fnc_ffT_clientInit";

[] remoteExec ["SXP_fnc_ffT_clientInit", -2, true];