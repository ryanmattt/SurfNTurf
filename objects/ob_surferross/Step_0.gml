/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1657FFCC
/// @DnDArgument : "expr" "clamp(x, 32, room_width-32)"
/// @DnDArgument : "var" "x"
x = clamp(x, 32, room_width-32);

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