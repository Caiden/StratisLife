// Markers.sqf
// this file is for the display of markers on the map that shows cops position.




// Markers = [];

while {true} do
{
    {
        deleteMarkerLocal _x;
    
    } foreach Markers;

    if (side player == West) then {
    
        { 
            if (side _x == West) then
            {
                
                _marker = createMarkerLocal[name _x, getpos _x];
                _marker setMarkerTypeLocal "hd_dot";
                _marker setMarkerColorLocal "ColorBlack";
                _text = format ["%1: %2",_x,(name _x)];
                _marker setMarkerTextLocal _text;
                Markers = Markers + [_marker];
            };

        } foreach playableUnits;
    };
    
    sleep 2;
}
