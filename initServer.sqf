/*
 * Author: TTT
 * Executes only on server at mission start
 * Executes before initPlayerLocal
 *
 * Die initServer.sqf ist serverseitige Äquivalent zur initPlayerLocal.sqf.
   Sie wird einmal bei Missionstart auf dem Server ausgeführt, was man
   beispielsweise zum Setzen von eigenen Texturen, zum Spawnen von Objekten
   oder auch zum Beladen von Kisten verwenden kann.
 *
 * Arguments:
 * None
 *
 * Return Value
 * None
 *
 * Example:
 * None
 */

setDate [2016, 6, 25, 11, 15]; //Datum ändern

{
    if (side _x != west) then {
        _x setBehaviour "SAFE";
        _x setCombatMode "WHITE";
        _x setSpeedMode "LIMITED";

        _x setSkill ["general", 0.75];
        _x setSkill ["commanding", 0.75];
        _x setSkill ["courage", 0.75];
        _x setSkill ["aimingAccuracy", 0.5];
        _x setSkill ["aimingShake", 0.35];
        _x setSkill ["aimingSpeed", 0.5];
        _x setSkill ["reloadSpeed", 0.75];
        _x setSkill ["spotDistance", 0.8];
        _x setSkill ["spotTime", 0.8];
        _x enableAI "COVER";
        _x enableAI "AUTOCOMBAT";
    };
} forEach allUnits;