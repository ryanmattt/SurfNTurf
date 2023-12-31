/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1657FFCC
/// @DnDArgument : "expr" "clamp(x, 32, global._wWidth-32)"
/// @DnDArgument : "var" "x"
x = clamp(x, 32, global._wWidth-32);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6080BFB1
/// @DnDArgument : "expr" "clamp(y, 32, room_height-32)"
/// @DnDArgument : "var" "y"
y = clamp(y, 32, room_height-32);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 373452A1
/// @DnDArgument : "speed" "7"
/// @DnDArgument : "type" "2"
vspeed = 7;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 7F5C2129
/// @DnDArgument : "imageind" ".12"
/// @DnDArgument : "imageind_relative" "1"
/// @DnDArgument : "spriteind" "sprite_index"
sprite_index = sprite_index;
image_index += .12;