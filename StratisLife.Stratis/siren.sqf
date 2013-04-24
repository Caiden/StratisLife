if (side player == west) then {
waituntil {!isnull (finddisplay 46)};
(findDisplay 46) displayAddEventHandler ["KeyDown","_this select 1 call MY_KEYDOWN_FNC;false;"]; 
};