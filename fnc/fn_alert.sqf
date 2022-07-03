params ["_alertbnt"];

[ [_alertbnt], {
params ["_alertbnt"];

_alertbnt addAction ["<t color='#FF0000'>Тревога</t>", { 
[ [_this select 3], {
params ["_alertbnt"];
["<t color='#FF0000'>ОБЪЯВЛЕНА ТРЕВОГА</t>",-1,-1,4,1,0,789] spawn BIS_fnc_dynamicText; 
removeAllActions _alertbnt;
for "_i" from 1 to 20 do {playsound "Alarm"; sleep 1.5};
sleep 60; [_alertbnt] call ZONT_fnc_alert;
}] remoteExec ["bis_fnc_call",0];  
 }, _alertbnt];

_alertbnt addAction ["<t color='#008000'>Убрать тревогу</t>", { 
[ [_this select 3], {
params ["_alertbnt"];
["<t color='#008000'>ТРЕВОГА ОКОНЧЕНА</t>",-1,-1,4,1,0,789] spawn BIS_fnc_dynamicText; 
removeAllActions _alertbnt;
sleep 60; [_alertbnt] call ZONT_fnc_alert;
}] remoteExec ["bis_fnc_call",0];  
 }, _alertbnt];

 }] remoteExec ["bis_fnc_call",0];  