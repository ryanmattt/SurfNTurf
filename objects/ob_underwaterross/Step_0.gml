var _left = keyboard_check(ord("A"));
var _right = keyboard_check(ord("D"));
var _up = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space);
var _down = keyboard_check(ord("S"));
var _mod = .8;
var _hspd = _right - _left;
var _vspd = _down - (_up * 2);
var _spd = 4;
fric_water = 0.1;
gravity = .05;

	  
if((!keyboard_check(vk_left) && !keyboard_check(vk_right))){_hspd -= fric_water * sign(_hspd);}
var _dir = point_direction(0, 0, _hspd, _vspd);
var _xadd = lengthdir_x(_spd, _dir);
var _yadd = lengthdir_y(_spd, _dir);
x = x + _xadd;
y = y + _yadd;



if(_left)
		sprite_index = sp_left_ross;

else if(_right)
		sprite_index = sp_right_ross;
		
		
y=clamp(y,20,room_height-20);
x=clamp(x,20,room_width-20);