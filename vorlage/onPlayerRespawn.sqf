/*
    * Author: TTT
    * Executed locally when player respawns in a multiplayer mission.
    * This event script will also fire at the beginning of a mission if respawnOnStart is 0 or 1, oldUnit will be objNull in this instance.
    * This script will not fire at mission start if respawnOnStart equals -1.
    *
    * Arguments:
    * 0: newUnit <OBJECT>
    * 1: oldUnit <OBJECT>
    * 2: respawnTyp <NUMBER>
    * 3: respawnDelay <NUMBER>
    *
    * Return Value
    * None
    *
    * Example:
    * None
 */

// Loadoutzuweisung
private _loadoutSQF = ["loadout\", (player getVariable ["loadout", "rifleman"]), ".sqf"] joinString "";
[] spawn compile preprocessFileLineNumbers _loadoutSQF;