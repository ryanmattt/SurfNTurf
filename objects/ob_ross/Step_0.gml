var _left = keyboard_check(ord("A"));
var _right = keyboard_check(ord("D"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));
var _hspd = _right - _left;
var _vspd = _down - _up;


//Code determine speed in all 8 directions
if (_hspd != 0 || _vspd != 0)
{
    var _spd = 4;
    var _dir = point_direction(0, 0, _hspd, _vspd);
    var _xadd = lengthdir_x(_spd, _dir);
    var _yadd = lengthdir_y(_spd, _dir);
    x = x + _xadd;
    y = y + _yadd;
}

//Code to change animation based on what keys are being pressed
if(_up)
	sprite_index = sp_back_ross;
	
else if(_left)
	sprite_index = sp_left_ross;

else if(_right)
	sprite_index = sp_right_ross;
	
else if(_down)
	sprite_index = sp_forward_ross;

else	
	sprite_index = sp_forward_ross;
	
	