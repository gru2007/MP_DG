params ["_classname"];

_price = [missionConfigFile >> "CfgPrices" >> _classname,"price", []] call BIS_fnc_returnConfigEntry;

_price