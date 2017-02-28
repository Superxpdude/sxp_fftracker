// Function for writing friendly-fire incidents to the .rpt log
// Only to be run on the server (to prevent client rpt spam)

// Exit the script if for some reason this isn't run on the server
if (!isServer) exitWith {};