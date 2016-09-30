if (hasInterface) then {
    [] spawn {
        waitUntil { player == player; };
        _load_name = player getVariable 'poop_in_ur_face';
        _load_type = player getVariable 'pee_up_your_nose';
        _null = [player, _load_name] execVM format ["loads\%1.sqf", _load_type];
        player addmpeventhandler ["mprespawn", "_l = (_this select 0) getVariable 'poop_in_ur_face'; _t = (_this select 0) getVariable 'pee_up_your_nose'; _null = [player, _l] execVM format ['loads\%1.sqf', _t]"];
    };
};

//CLEANUP SCRIPT
	[
		5*60,// seconds to delete dead bodies (0 means don't delete) 
		5*60, // seconds to delete dead vehicles (0 means don't delete)
		0, // seconds to delete immobile vehicles (0 means don't delete)
		2*60, // seconds to delete dropped weapons (0 means don't delete)
		0, // seconds to deleted planted explosives (0 means don't delete)
		2*60 // seconds to delete dropped smokes/chemlights (0 means don't delete)
	] execVM 'repetitive_cleanup.sqf';	