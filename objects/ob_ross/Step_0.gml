
if(!dialogue_open) {
	var _left = keyboard_check(ord("A"));
	var _right = keyboard_check(ord("D"));
	var _up = keyboard_check(ord("W"));
	var _down = keyboard_check(ord("S"));


	var _hspd = _right - _left;
	var _vspd = _down - _up;

	//Code determine speed in all 8 directions
	if (_hspd != 0 || _vspd != 0)
	{
   
	    var _dir = point_direction(0, 0, _hspd, _vspd);
	    var _xadd = lengthdir_x(_spd, _dir);
	    var _yadd = lengthdir_y(_spd, _dir);
	    x = x + _xadd;
	    y = y + _yadd;
	}

	x=clamp(x,0,room_width);
	
	//Code to change animation based on what keys are being pressed
	if(!riding_surfboard) {
		if(_up)
			sprite_index = sp_back_ross;	
	
		else if(_left)
			sprite_index = sp_left_ross;

		else if(_right)
			sprite_index = sp_right_ross;
	
		else if(_down)
			sprite_index = sp_forward_ross;

	
	//code to stop ross from going into the water and leaving the beach
	y=clamp(y,420,570);
	}
	else
	{
	
	//detecting when the player crosses the beach 
	//and turns them back to ross then replaces the surfboard
	if(y<=590)
	{
		riding_surfboard= false;
		sprite_index=sp_back_ross;
		_surfboard.x = x;
		_surfboard.y = y+40;
		_surfboard._key.x = x;
		_surfboard._key.y = _surfboard.y-100;
		_surfboard.visible = true;
		y = y-20;
		_spd = 4;
	
	}

	else if(y>room_height-10) {
		room_goto(rm_minigame);
	}

		y=clamp(y,570,room_height);
	}
}