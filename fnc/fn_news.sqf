TAG_fnc_Article ={
[
[
["title","Самолёт C-192 упал на жилой дом"],
["meta",["Екатирина Святославская",[2015,3,15,11,38],"CET"]],
["textbold","Кому нужна эта война?"],
["image",["\a3\missions_f_orange\data\img\orange_overview_ca.paa",""]],
["box",["\a3\ui_f_curator\data\cfgdiaryimages\altis\kalochori_ca.paa","СРОЧНО! Видео с БПЛА НАТО! СМОТРЕТЬ ВСЕМ!"]],
["text","Сегодня в 11 часов утра доставлялось снабжение бойцам НАТО в котле. Но Российское ПВО сбило грузовой самолёт на подлёте, из-за чего он упал в жилой дом, разрушив его. Кол-во жертв пока что неизвестно, мы всё ещё продолжаем слежить за ситуацией."],
["textlocked",["Продолжение...","Оформите подписку"]],
["author",["\a3\Missions_F_Orange\Data\Img\avatar_journalist_ca.paa","Журналист Екатирина"]]
]
] call BIS_fnc_showAANArticle;
};


player createDiaryRecord ["diary", ["Новости", "
<execute expression='[] call TAG_fnc_Article'>Самолёт</execute>
"]];
player createDiaryRecord ["diary", ["Список команд", "
#me [действие] - ** Василий упал **<br />
#it [действие] - ** упал **<br />
#try [действие] - ** Василий упал | Неудачно **<br />
#roll [от] [до] (необяз) - ** [1-100] Удача блогосклонна к Василий на 5 **<br />
#roles - Управление ролями<br />
#money - Деньги стороны
"]];
