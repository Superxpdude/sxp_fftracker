// Initialization script for the friendly-fire tracker.
// Runs only on the server, and handles sending the event handlers to all clients.
// Runs as postInit, uses remoteExec's JIP functionality to send event handlers to all clients (current and future)

// Exit the script if for some reason this isn't run on the server
if (!isServer) exitWith {};

// Add our mission event handler
// Writes the friendly-fire cache to the .rpt when the mission ends
_nul = addMissionEventHandler ["Ended", {
	{
		_x call SXP_fnc_ffTWriteLog;
	} forEach SXP_ffQueue;
}];

// Define the addEventHandler function
SXP_fnc_ffT_clientEventHandler = compileFinal "
	waitUntil {player == player};
	player addEventHandler ['Hit', {
		if (([side (_this select 0), side (_this select 3)] call BIS_fnc_sideIsFriendly) AND ((_this select 0) != (_this select 3))) then {
			[_this select 0, _this select 3, _this select 1] remoteExec ['SXP_fnc_ffT_handleFF', 2];
		};
	}];
";

// Send the variables to all clients
publicVariable "SXP_fnc_ffT_clientEventHandler";

[] remoteExec ["SXP_fnc_ffT_clientEventHandler", -2, true];