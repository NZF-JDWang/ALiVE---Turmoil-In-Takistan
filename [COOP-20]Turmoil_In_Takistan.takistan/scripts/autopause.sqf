[] spawn {
   sleep 120;
   3600 call ALiVE_fnc_AutoSave_PNS; //optional if you want to have the auto save feature of alive
   ["ALIVE_MIL_OPCOM"] call ALiVE_fnc_pauseModule; // stop the opcoms while before the first player connects 
   _APdisconssd = addMissionEventHandler ["PlayerDisconnected",{ _this execVM "scripts\autopausediscon.sqf" }]; // adds on player disconnect EH 
    _APconssd = addMissionEventHandler ["PlayerConnected",{ _this execVM "scripts\autopausecon.sqf" }];   //adds an player connect EH 
    diag_log format ["autopause.sqf done"]; // outputs to your RPT that this script has successfully fired
};