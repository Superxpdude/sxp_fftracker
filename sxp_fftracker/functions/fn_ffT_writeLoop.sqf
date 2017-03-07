// Function-loop to handle writing friendly-fire incidents to the .rpt log
// Spawns a loop that runs every 30 seconds and writes all pending friendly-fire incidents to the .rpt log
// Runs automatically on mission start

// Exit the script if for some reason this isn't run on the server
if (!isServer) exitWith {};

// Make sure we define the ffQueue variable beforehand
SXP_ffQueue = [];

// Start the loop
[] spawn {
	while {true} do {
		{
			_x call SXP_fnc_ffT_writeLog;
		} forEach SXP_ffQueue;
		// Clear the write queue
		SXP_ffQueue = [];
		// Wait 30 seconds before processing the array again
		sleep 30;
	};
};