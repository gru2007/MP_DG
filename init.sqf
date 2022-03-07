0 fadeRadio 0;
enableRadio false;
enableSentences false;
enableSaving [false, false];
CHVD_maxView = 3000; // Set maximum view distance (default: 12000)
CHVD_maxObj = 2600; // Set maximimum object view distance (default: 12000)

//Init of money system
if (isNil "ODKB_Money") then	// has the variable already been set and broadcast?
{	
[{
  _sv_money_east = "sv_money_east";
  private _mmoney = [MPS_BDL_pres, "getMoney", []] call ZONT_fnc_bd_customRequest;
  [_mmoney]
},{
  params ["_mmoney"];
  ODKB_Money = _mmoney;
}, []] call ZONT_fnc_remoteExecCallback; // if not, set it on the local machine
};
if (isNil "NATO_Money") then
{
	NATO_Money = 500;
};

[] execVM "external\Vcom\VcomInit.sqf";
