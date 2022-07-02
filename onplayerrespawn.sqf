if (!hasInterface) exitWith { };
removeAllActions player;

removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

//основное
player forceAddUniform "cwr3_o_uniform_m1969_collar";

//всякое
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

if(GameLanguage=="Russian") then {
private _text = "";
switch (playerSide) do {
    case west: {_text = "<t color='#d40000' size='3'>Вы очнулись в медицинском блоке!</t><br/><t color='#ffffff' size='1'>Вы не помните, что с Вами случилось!</t>"};
		case resistance: {_text = "<t color='#d40000' size='3'>Вы очнулись в лагере!</t><br/><t color='#ffffff' size='1'>Вы не помните, что с Вами случилось!</t>"};
		case civilian: {_text = "<t color='#d40000' size='3'>Вы очнулись в незнакомом месте!</t><br/><t color='#ffffff' size='1'>Вы не помните, что с Вами случилось!</t>"};
		case east: {_text = "<t color='#d40000' size='3'>Вы очнулись в медицинском блоке!</t><br/><t color='#ffffff' size='1'>Вы не помните, что с Вами случилось!</t>"};
};
titleText [_text, "PLAIN", 0.2, true, true];}
else{
private _text = "";
switch (playerSide) do {
    case west: {_text = "<t color='#d40000' size='3'>You woke up in the medical unit!</t><br/><t color='#ffffff' size='1'>You don't remember what happened to you!</t>"};
		case resistance: {_text = "<t color='#d40000' size='3'>You woke up in the camp!</t><br/><t color='#ffffff' size='1'>You don't remember what happened to you!</t>"};
		case civilian: {_text = "<t color='#d40000' size='3'>You woke up in an unfamiliar place!</t><br/><t color='#ffffff' size='1'>You don't remember what happened to you!</t>"};
		case east: {_text = "<t color='#d40000' size='3'>You woke up in the medical unit!</t><br/><t color='#ffffff' size='1'>You don't remember what happened to you!</t>"};
};
titleText [_text, "PLAIN", 0.2, true, true];};

[] spawn {
	"dynamicBlur" ppEffectEnable true;
	"dynamicBlur" ppEffectAdjust [15];
	"dynamicBlur" ppEffectCommit 0;
	"dynamicBlur" ppEffectAdjust [0.0];
	"dynamicBlur" ppEffectCommit 5;
};

[player, {
private _curators = call ZONT_fnc_retrieveCurators;
if not ((getPlayerUID _this) in _curators) exitWith { };
_this call ZONT_fnc_giveZeus;
}] remoteExec ["bis_fnc_call", 2];
player addAction ["OPCOM: Dashboard", {["INIT"] spawn AIM_fnc_displayControl;},[],6,false,true,"",""];

{ [_x select 0, player, _x select 1, true] spawn ZONT_fnc_addSkillAction } foreach MPC_skills_actions;
