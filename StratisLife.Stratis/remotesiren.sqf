If (vehicle player == player) then {}
else {
if (sirenloop == 0) then {
sirenloop = 1;
hint "Siren On";
}
else {
sirenloop = 0;
hint "Siren Off";
};
};