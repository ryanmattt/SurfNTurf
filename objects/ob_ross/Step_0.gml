//Surface Movement
if(!dialogue_open) {
if(room_get_name(room)=="rm_beach") {
		depth=-y;
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

			if(_hspd != 0 || _vspd != 0) {
				image_index += .12;
				if(!audio_is_playing(snd_sand_footsteps)) {
					audio_play_sound(snd_sand_footsteps,10,true,5,0);
					 }
			}
			else {
				image_index = 0;
				if(alarm_get(0)==-1){
					alarm[0]=20;
				}
				
				
			}

	
		//code to stop ross from going into the water and leaving the beach
		if(x<= _dock.x || x>= _dock.x+_dock.sprite_width || y<_dock.y-20) {
				x=clamp(x,0,room_width);
				y=clamp(y,420,570);
		} else {
				x=clamp(x,_dock.x+25,_dock.x+_dock.sprite_width-25);
				y=clamp(y,420,570+_dock.sprite_height-60);
			}	
			
		}
		else {
			if(audio_is_playing(snd_sand_footsteps)) {
					audio_stop_sound(snd_sand_footsteps);
			}
			x=clamp(x,0,room_width);
			
			if(_hspd != 0 || _vspd != 0) {
				currSprite = "sp_surf_" + last_UD + last_LR;
				image_index += .12;
				if(_vspd != 0)
					if(_vspd < 0)
						last_UD = "back_";
					else
						last_UD = "front_";

				if(_hspd != 0)
					if(_hspd < 0)
						last_LR = "left";
					else
						last_LR = "right";

				sprite_index = asset_get_index(currSprite);
			}
			

				//detecting when the player crosses the beach 
			//and turns them back to ross then replaces the surfboard
			if(y<=590 && (x <= _dock.x || x >= _dock.x+_dock.sprite_width))
			{
				riding_surfboard= false;
				sprite_index=sp_back_ross;
				_surfboard.x = x;
				_surfboard.y = y+40;
				_surfboard._key.x = x;
				_surfboard._key.y = _surfboard.y-100;
				_surfboard.sprite_index=sp_surfboard;
				_surfboard.visible = true;
				y = y-20;
				_spd = 4;
				y=clamp(y,570,room_height);
	
			}
			/*else if(x>= _dock.x && x<= _dock.x+_dock.sprite_width && y>570+_dock.sprite_height-60)
			{
				riding_surfboard= false;
				sprite_index=sp_back_ross;
				_surfboard.x = x;
				_surfboard.y = y+40;
				_surfboard._key.x = x;
				_surfboard._key.y = _surfboard.y-100;
				_surfboard.sprite_index=sp_surfboard;
				_surfboard.visible = true;
				y = y-20;
				_spd = 4;
				y=clamp(y,570,room_height);
			}*/
				//Swaps to the minigame and sets values
			else if(y>room_height-10) {
				image_xscale=5;
				image_yscale=5;
				friction = .5;
				room_goto(rm_minigame);
				draw_set_font(fnt_dialogue);
				x = room_width/2;
				y = 100;
			
			}
		
		}
	 
}  
else if (room = rm_underwater || room = rm_boss) {
	
	if(y<40 && _escape)

		room_goto(rm_goodending);
			
	
	if(global._ending>0)
	{
		switch global._ending {
			case 1:
				instance_create_layer(0,global._wHeight*3/4,"Text",ob_goodending);
				_escape = true;
				break;
			case 2:
				instance_create_layer(0,global._wHeight*3/4,"Text",ob_badending);
				break;
		}
		dialogue_open = true;
		global._ending = 0;
	}
	
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
	
	if(sprite_index != sp_left_ross && sprite_index != sp_right_ross)
	{
		sprite_index = sp_left_swim;
	}
	
	if(_left)
			sprite_index = sp_left_swim;

	else if(_right)
			sprite_index = sp_right_swim;
	
	if(_hspd != 0)
		image_index += 12/60;
	else
		image_index = 0;	
		
		
	y=clamp(y,20,room_height-20);
	x=clamp(x,20,room_width-20);

	
} else {
visible = false;
}
}