// Function for writing friendly-fire incidents to the .rpt log
// Only to be run on the server (to prevent client rpt spam)

// Exit the script if for some reason this isn't run on the server
if (!isServer) exitWith {};

// Write to the .rpt log
diag_log format ["[SXP-FriendlyFire]: [%1] was damaged by [%2] with [%3]", _this select 0, _this select 1, _this select 2];