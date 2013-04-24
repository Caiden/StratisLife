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

if ((player getVariable "riflelicense") >= 1) then {
hasriflelicense = "Yes";
} else {
hasriflelicense = "No";
};

if ((player getVariable "pistollicense") >= 1) then {
haspistollicense = "Yes";
} else {
haspistollicense = "No";
};

ctrlSetText[11157,format["%1",hasdriverlicense]];
ctrlSetText[11158,format["%1",hashuntinglicense]];
ctrlSetText[11159,format["%1",hasairlicense]];
ctrlSetText[11160,format["%1",hasboatlicense]];
ctrlSetText[11162,format["%1",hasoilprocesslicense]];
ctrlSetText[11163,format["%1",hasriflelicense]];
ctrlSetText[11164,format["%1",haspistollicense]];
