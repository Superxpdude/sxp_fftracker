// Function for handling adding friendly-fire data to the write-queue
// Handles filtering of duplicate friendly-fire reports
// This is used so that we can prevent spam of the .rpt if someone takes damage from explosives or something
// Function should be remoteExec'd from a client machine

// Exit the script if for some reason this isn't run on the server
if (!isServer) exitWith {};