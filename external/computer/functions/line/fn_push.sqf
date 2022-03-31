/*
 *	Joshua Shear
 *	Line_fnc_push.sqf
 *	Takes in a stack and an item and pushes the item to the top of the stack
 *	
 *	How to call : [stack, item to push] call Line_fnc_push; 
 *	
 *	Returns: stack with pushed item
 *	
 *	Function calls :
 *		NONE
 *		
*/

private _stack = _this select 0;
private _item = _this select 1;

_stack set [count _stack, _item ];

_stack;
