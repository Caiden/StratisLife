_object = _this;
_type = typeOf _object;
_object vehicleChat format ["Your vehicle is being repaired and refueled! Please Wait!", _type];
sleep 10;
_object setDamage 0;
sleep .1;
while {fuel _object < 0.99} do {
	_object setFuel 1;
	sleep .1;
};
_object vehicleChat format ["Your vehicle has been successfully serviced. Have a nice day!", _type];