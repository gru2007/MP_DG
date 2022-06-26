params ["_equip", "_pos"];

if (not isNil "_equip") then {
  if (typeName [] == typeName _equip and {count _equip > 0}) then { player setUnitLoadout _equip };
};

if(GameLanguage=="Russian") then {
if (not isNil "_pos") then {
  if (typeName [] == typeName _pos and {count _pos == 3}) then {
    private _tp = ["Телепортироваться на последнее сохранённое место? Нужно, если у вас вылетела игра или т.п.", "DG Milsim", "Да", "Нет"]
        call BIS_fnc_guiMessage;
    if (_tp) then { sleep 10; player setPosATL _pos; };
  };
};
} else {
  if (not isNil "_pos") then {
  if (typeName [] == typeName _pos and {count _pos == 3}) then {
    private _tp = ["Teleport to last saved place?", "DG Milsim", "Yes", "No"]
        call BIS_fnc_guiMessage;
    if (_tp) then { sleep 10; player setPosATL _pos; };
  };
  };
};

MPC_canSave = true
