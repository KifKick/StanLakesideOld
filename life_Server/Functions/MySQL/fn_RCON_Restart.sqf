/*
fn_RCON_Restart.sqf
Kevin Webb
Utilizes extDB RCON bot to conduct automatic restarts
*/
uiSleep 10;
"extDB2" callExtension "1:rcon:SAY -1 extDB2 RCON ONLINE";
uiSleep 300;
waitUntil{uiSleep 10; serverTime > 300 && serverTime < 500};
waitUntil{uiSleep 120; life_restartTime - serverTime < 300};
"extDB2" callExtension "1:rcon:SAY -1 Server restart in 5 minutes! Remember to sync your data. The server will be locked until restart.";
"extDB2" callExtension "1:rcon:SAY -1 Server restart in 5 minutes! Remember to sync your data. The server will be locked until restart.";
"extDB2" callExtension "1:rcon:SAY -1 Server restart in 5 minutes! Remember to sync your data. The server will be locked until restart.";
{
	remoteExecCall ["SOCK_fnc_syncData",_x];
} foreach allPlayers;
"extDB2" callExtension "1:rcon:#lock";
waitUntil{uiSleep 15; life_restartTime - serverTime < 60};
"extDB2" callExtension "1:rcon:SAY -1 extDB2 Auto RCON: Server restart in 1 minute!";
"extDB2" callExtension "1:rcon:SAY -1 extDB2 Auto RCON: Server restart in 1 minute!";
"extDB2" callExtension "1:rcon:SAY -1 extDB2 Auto RCON: Server restart in 1 minute!";
waitUntil{uiSleep 1; (life_restartTime - serverTime < 0) || (count allPlayers isEqualTo 0)};
"extDB2" callExtension "1:rcon:#shutdown";