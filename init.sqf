0 fadeRadio 0;
enableRadio false;
enableSentences false;
enableSaving [false, false];
CHVD_maxView = 3000; // Set maximum view distance (default: 12000)
CHVD_maxObj = 2600; // Set maximimum object view distance (default: 12000)

[] execVM "external\Vcom\VcomInit.sqf";

//    https://arma3.ru/forums/topic/9536-skript-razved-patrulia/
[] call compile preprocessfilelinenumbers "external\sqripts_and_variables.sqf";
