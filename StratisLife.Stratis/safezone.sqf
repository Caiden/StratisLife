waitUntil{player in list Safe_Zone};
player allowDamage false;
sleep 3;
player allowDamage true;
player execVM "safezone.sqf";