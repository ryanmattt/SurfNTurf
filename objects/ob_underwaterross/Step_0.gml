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
y=clamp(y,20,global._wHeight-20);
x=clamp(x,20,global._wWidth-20);