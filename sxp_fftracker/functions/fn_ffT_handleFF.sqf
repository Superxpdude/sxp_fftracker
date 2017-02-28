// Function for handling adding friendly-fire data to the write-queue
// Handles filtering of duplicate friendly-fire reports
// This is used so that we can prevent spam of the .rpt if someone takes damage from explosives or something
// Function should be remoteExec'd from a client machine
// Values should be passed to this function as an array in the following format:
// [victim, attacker, damageSource]

// Exit the script if for some reason this isn't run on the server
if (!isServer) exitWith {};

// Define variables
private ["_victim", "_attacker", "_source", "_exists"];
params [
	["_victim", objNull, [objNull]],
	["_attacker", objNull, [objNull]],
	["_source", objNull]
];

// Add the incident to the queue if it is a unique incident
SXP_ffQueue pushBackUnique [format ["%1|%2", name _victim, getPlayerUID _victim],format ["%1|%2", name _attacker, getPlayerUID _attacker], _source];