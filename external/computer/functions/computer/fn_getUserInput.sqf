/*
 *	Joshua Shear
 *	Computer_fnc_getUserInput.sqf
 *	takes in data from key event handler and processes it to get the given command
 *	
 *	How to call : [0,_dikCode,_shift,_control,_alt] call Computer_fnc_getUserInput;
 *	
 *	Returns : Array containing all relevant data of what key was pressed including several booleans about certain keys
 *	
 *	Function Calls :
 *		NONE
 */

private _ctrl = _this select 0;													//not used
private _dikCode = _this select 1;
private _shift = _this select 2;
private _ctrlKey = _this select 3;
private _alt = _this select 4;
private _backSpace = false;
private _return = false;
private _up = false;
private _down = false;
private _left = false;
private _right = false;
private _scrollUp = false;
private _scrollDown = false;
private _insert = false;
private _delete = false;
private _home = false;
private _end = false;

private _userInput = "";

//hint str(_dikCode);		//Uncomment this line to get the code for any key you press

if(_dikCode == 41)then{_userInput = "`";};
if(_dikCode == 2)then{_userInput = "1";};
if(_dikCode == 3)then{_userInput = "2";};
if(_dikCode == 4)then{_userInput = "3";};
if(_dikCode == 5)then{_userInput = "4";};
if(_dikCode == 6)then{_userInput = "5";};
if(_dikCode == 7)then{_userInput = "6";};
if(_dikCode == 8)then{_userInput = "7";};
if(_dikCode == 9)then{_userInput = "8";};
if(_dikCode == 10)then{_userInput = "9";};
if(_dikCode == 11)then{_userInput = "0";};
if(_dikCode == 12)then{_userInput = "-";};
if(_dikCode == 13)then{_userInput = "=";};
if(_dikCode == 15)then{_userInput = "    ";};									//Tab == Four spaces
if(_dikCode == 16)then{_userInput = "q";};
if(_dikCode == 17)then{_userInput = "w";};
if(_dikCode == 18)then{_userInput = "e";};
if(_dikCode == 19)then{_userInput = "r";};
if(_dikCode == 20)then{_userInput = "t";};
if(_dikCode == 21)then{_userInput = "y";};
if(_dikCode == 22)then{_userInput = "u";};
if(_dikCode == 23)then{_userInput = "i";};
if(_dikCode == 24)then{_userInput = "o";};
if(_dikCode == 25)then{_userInput = "p";};
if(_dikCode == 26)then{_userInput = "[";};
if(_dikCode == 27)then{_userInput = "]";};
if(_dikCode == 43)then{_userInput = "\";};
if(_dikCode == 30)then{_userInput = "a";};
if(_dikCode == 31)then{_userInput = "s";};
if(_dikCode == 32)then{_userInput = "d";};
if(_dikCode == 33)then{_userInput = "f";};
if(_dikCode == 34)then{_userInput = "g";};
if(_dikCode == 35)then{_userInput = "h";};
if(_dikCode == 36)then{_userInput = "j";};
if(_dikCode == 37)then{_userInput = "k";};
if(_dikCode == 38)then{_userInput = "l";};
if(_dikCode == 39)then{_userInput = ";";};
if(_dikCode == 40)then{_userInput = "'";};
if(_dikCode == 44)then{_userInput = "z";};
if(_dikCode == 45)then{_userInput = "x";};
if(_dikCode == 46)then{_userInput = "c";};
if(_dikCode == 47)then{_userInput = "v";};
if(_dikCode == 48)then{_userInput = "b";};
if(_dikCode == 49)then{_userInput = "n";};
if(_dikCode == 50)then{_userInput = "m";};
if(_dikCode == 51)then{_userInput = ",";};
if(_dikCode == 52)then{_userInput = ".";};
if(_dikCode == 53)then{_userInput = "/";};

if(_dikCode == 41 && _shift)then{_userInput = "~";};
if(_dikCode == 2 && _shift)then{_userInput = "!";};
if(_dikCode == 3 && _shift)then{_userInput = "@";};
if(_dikCode == 4 && _shift)then{_userInput = "#";};
if(_dikCode == 5 && _shift)then{_userInput = "$";};
if(_dikCode == 6 && _shift)then{_userInput = "%";};
if(_dikCode == 7 && _shift)then{_userInput = "^";};
if(_dikCode == 8 && _shift)then{_userInput = "&";};
if(_dikCode == 9 && _shift)then{_userInput = "*";};
if(_dikCode == 10 && _shift)then{_userInput = "(";};
if(_dikCode == 11 && _shift)then{_userInput = ")";};
if(_dikCode == 12 && _shift)then{_userInput = "_";};
if(_dikCode == 13 && _shift)then{_userInput = "+";};
if(_dikCode == 16 && _shift)then{_userInput = "Q";};
if(_dikCode == 17 && _shift)then{_userInput = "W";};
if(_dikCode == 18 && _shift)then{_userInput = "E";};
if(_dikCode == 19 && _shift)then{_userInput = "R";};
if(_dikCode == 20 && _shift)then{_userInput = "T";};
if(_dikCode == 21 && _shift)then{_userInput = "Y";};
if(_dikCode == 22 && _shift)then{_userInput = "U";};
if(_dikCode == 23 && _shift)then{_userInput = "I";};
if(_dikCode == 24 && _shift)then{_userInput = "O";};
if(_dikCode == 25 && _shift)then{_userInput = "P";};
if(_dikCode == 26 && _shift)then{_userInput = "{";};
if(_dikCode == 27 && _shift)then{_userInput = "}";};
if(_dikCode == 43 && _shift)then{_userInput = "|";};
if(_dikCode == 30 && _shift)then{_userInput = "A";};
if(_dikCode == 31 && _shift)then{_userInput = "S";};
if(_dikCode == 32 && _shift)then{_userInput = "D";};
if(_dikCode == 33 && _shift)then{_userInput = "F";};
if(_dikCode == 34 && _shift)then{_userInput = "G";};
if(_dikCode == 35 && _shift)then{_userInput = "H";};
if(_dikCode == 36 && _shift)then{_userInput = "J";};
if(_dikCode == 37 && _shift)then{_userInput = "K";};
if(_dikCode == 38 && _shift)then{_userInput = "L";};
if(_dikCode == 39 && _shift)then{_userInput = ":";};
if(_dikCode == 40 && _shift)then{_userInput = "''";};						//Double quote is two ' because " would over ride string bounds
if(_dikCode == 44 && _shift)then{_userInput = "Z";};
if(_dikCode == 45 && _shift)then{_userInput = "X";};
if(_dikCode == 46 && _shift)then{_userInput = "C";};
if(_dikCode == 47 && _shift)then{_userInput = "V";};
if(_dikCode == 48 && _shift)then{_userInput = "B";};
if(_dikCode == 49 && _shift)then{_userInput = "N";};
if(_dikCode == 50 && _shift)then{_userInput = "M";};
if(_dikCode == 51 && _shift)then{_userInput = (toString [60]);};			//'<'
if(_dikCode == 52 && _shift)then{_userInput = ">";};
if(_dikCode == 53 && _shift)then{_userInput = "?";};

//num pad
if(_dikCode == 181)then{_userInput = "/";};
if(_dikCode == 55)then{_userInput = "*";};
if(_dikCode == 74)then{_userInput = "-";};
if(_dikCode == 78)then{_userInput = "+";};
if(_dikCode == 156)then{_return = true;};									//num pad enter
if(_dikCode == 83)then{_userInput = ".";};
if(_dikCode == 73)then{_userInput = "9";};
if(_dikCode == 72)then{_userInput = "8";};
if(_dikCode == 71)then{_userInput = "7";};
if(_dikCode == 77)then{_userInput = "6";};
if(_dikCode == 76)then{_userInput = "5";};
if(_dikCode == 75)then{_userInput = "4";};
if(_dikCode == 81)then{_userInput = "3";};
if(_dikCode == 80)then{_userInput = "2";};
if(_dikCode == 79)then{_userInput = "1";};
if(_dikCode == 82)then{_userInput = "0";};


//if(_dikCode == 54)then{_shift = true;};									//Shift (over ridden in event handler)
//if(_dikCode == 42)then{_shift = true;};									//Shift (over ridden in event handler)
//if(_dikCode == 58)then{_userInput = "";};
//if(_dikCode == 29)then{_userInput = "";};
//if(_dikCode == 56)then{_userInput = "";};
if(_dikCode == 209)then{_scrollUp=true;};									//Page Down Key = down
if(_dikCode == 201)then{_scrollDown=true;};									//Page Up Key = Up
if(_dikCode == 57)then{_userInput = " ";};
//if(_dikCode == 184)then{_userInput = "";};
if(_dikCode == 203)then{_left = true;};										//Left
if(_dikCode == 205)then{_right = true;};									//Right
if(_dikCode == 200)then{_up = true;};										//Up
if(_dikCode == 208)then{_down = true;};										//Down
if(_dikCode == 14)then{_backSpace = true; _userInput = "";};				//BackSpace
if(_dikCode == 28)then{_return = true;};									//Return
//if(_dikCode == 58)then{};													//Caps Lock
if(_dikCode == 210)then{_insert = true;};									//Insert
if(_dikCode == 211)then{_delete = true;};									//Delete
if(_dikCode == 199)then{_home = true;};										//Home
if(_dikCode == 207)then{_end = true;};										//End

//Return input
[
	_return,
	_backSpace,
	_up,
	_down,
	_userInput,
	_scrollUp,
	_scrollDown,
	_ctrlKey,
	_left,
	_right,
	_insert,
	_delete,
	_home,
	_end
];