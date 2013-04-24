createDialog "CivLicenseMenu";
if ((player getVariable "driverlicense") >= 1) then {
hasdriverlicense = "Yes";
} else {
hasdriverlicense = "No";
};

if ((player getVariable "huntinglicense") >= 1) then {
hashuntinglicense = "Yes";
} else {
hashuntinglicense = "No";
};

if ((player getVariable "airlicense") >= 1) then {
hasairlicense = "Yes";
} else {
hasairlicense = "No";
};

if ((player getVariable "boatlicense") >= 1) then {
hasboatlicense = "Yes";
} else {
hasboatlicense = "No";
};

if ((player getVariable "oilprocesslicense") >= 1) then {
hasoilprocesslicense = "Yes";
} else {
hasoilprocesslicense = "No";
};

ctrlSetText[11157,format["%1",hasdriverlicense]];
ctrlSetText[11158,format["%1",hashuntinglicense]];
ctrlSetText[11159,format["%1",hasairlicense]];
ctrlSetText[11160,format["%1",hasboatlicense]];
ctrlSetText[11162,format["%1",hasoilprocesslicense]];