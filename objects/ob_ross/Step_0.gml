//Surface Movement
if(room_get_name(room)=="rm_beach") {
	if(!dialogue_open) {
		var _left = keyboard_check(ord("A"));
		var _right = keyboard_check(ord("D"));
		var _up = keyboard_check(ord("W"));
		var _down = keyboard_check(ord("S"));


		_hspd = _right - _left;
		_vspd = _down - _up;

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
			//Swaps to the minigame and sets values
		else if(y>room_height-10) {
			image_xscale=5;
			image_yscale=5;
			friction = .5;
			room_goto(rm_minigame);
			x=room_width/2;
			y = 100;
		}

			y=clamp(y,570,room_height);
		}
	}
} //Minigame movement 
else if (room_get_name(room) == "rm_minigame") {
	vspeed = 7;
	var _left = keyboard_check(ord("A"));
	var _right = keyboard_check(ord("D"));
	hspeed = _right*7 - _left*7;
	
	if(hspeed<0)
		image_xscale=-1* abs(image_xscale);
	else
		image_xscale=abs(image_xscale);

	x = clamp(x, 32, room_width-32);
	y = clamp(y, 32, room_height-32);

} //Underwater movement 
else if (room_get_name(room) == "rm_underwater") {
	var _left = keyboard_check(ord("A"));
	var _right = keyboard_check(ord("D"));
	var _up = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space);
	var _down = keyboard_check(ord("S"));

	//Horizontal speed calculation
	move = _right - _left;
	
	_hspd = move * _spd;
	
	//Changing Vertical Acceleration based on what keys are pressed
	if(keyboard_check(vk_space) || keyboard_check(ord("W"))) _vspd = lerp(_vspd, -3, .4);
	else if(keyboard_check(ord("S")) || keyboard_check(vk_lcontrol)) _vspd = lerp(_vspd, 5, .4);

	//Resistance for Left/Right Controls
	if((!keyboard_check(vk_left) && !keyboard_check(vk_right))) _hspd -= _waterfric * sign(_hspd);

	//Change X/Y and effect player with gravity
	x += _hspd;
	y += _vspd;
	_vspd = lerp(_vspd, 1, _grv);

	//Change sprite based on direction char is facing
	if(_left)
			sprite_index = sp_left_ross;

	else if(_right)
			sprite_index = sp_right_ross;
		
	//don't let ross leave the room WIP
	y=clamp(y,20,room_height-20);
	x=clamp(x,20,room_width-20);


} else {
visible = false;
}