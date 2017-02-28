// Function-loop to handle writing friendly-fire incidents to the .rpt log
// Spawns a loop that runs every 30 seconds and writes all pending friendly-fire incidents to the .rpt log

// Exit the script if for some reason this isn't run on the server
if (!isServer) exitWith {};

// Start the loop
