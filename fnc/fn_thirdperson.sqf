//////////////////////////////////////////////////////////
//                =ATM= Third person view in driver	    //
//         		 =ATM=Pokertour        		      	    //
//				version : 0.1					        //
//				date : 10/01/2014						//
//              visit us : atmarma.fr                   //
//////////////////////////////////////////////////////////

//on each vehicle you want 3rd person for driver put this in the init : nul = [this] execVM "ATM_script\3rd_person\3rdperson.sqf";
//Модификация, теперь ваще другой скрипт

if (isDedicated) exitWith {};

thirdperson_allowed = false;

While {true} do {

	waitUntil {cameraView == "EXTERNAL"};

	if (thirdperson_allowed) then {
		waitUntil {cameraView == "internal" || thirdperson_allowed = false};
	} else {
		player switchCamera "internal";
	}
};