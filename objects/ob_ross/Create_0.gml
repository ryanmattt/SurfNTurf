//variables to determine if the player character can do multiple things at once
riding_surfboard = false;
dialogue_open = false;
_ego = 0;
_highscore=0;

//inventory
if(room!=rm_housedialogue)
	has_necklace = true;
else
	has_necklace = false;

//movement variables
_hspd = 0;
_vspd = 0;
_grv = 0.1;
_spd = 4;
_waterfric = .1;

//surfboard
_surfboard = instance_find(ob_surfboard,0);
_dock = instance_find(ob_dock,0);

