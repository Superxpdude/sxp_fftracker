// Initialization script for the friendly-fire tracker.
// Runs only on the server, and handles sending the event handlers to all clients.
// Runs as postInit, uses remoteExec's JIP functionality to send event handlers to all clients (current and future)

// Exit the script if for some reason this isn't run on the server
if (!isServer) exitWith {};

