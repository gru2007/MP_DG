if(playerSide==east) then {
	money = ODKB_Money;
} else {
	money = NATO_Money;
};

[format["Текущий баланс стороны %1 оч.",money]] spawn BIS_fnc_guiMessage;