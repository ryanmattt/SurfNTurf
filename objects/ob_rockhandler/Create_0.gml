/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 66A601F5
/// @DnDArgument : "init" "i = 3"
/// @DnDArgument : "cond" "i < floor(global._wHeight/800)"
for(i = 3; i < floor(global._wHeight/800); i += 1) {
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 44B9DE86
	/// @DnDParent : 66A601F5
	/// @DnDArgument : "var" "rock_x"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "global._wWidth"
	rock_x = floor(random_range(0, global._wWidth + 1));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2854C37F
	/// @DnDParent : 66A601F5
	/// @DnDArgument : "xpos" "rock_x"
	/// @DnDArgument : "ypos" "i*800"
	/// @DnDArgument : "var" "rock"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "ob_rock"
	/// @DnDSaveInfo : "objectid" "ob_rock"
	var rock = instance_create_layer(rock_x, i*800, "Instances", ob_rock);

	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 74A9AA0E
	/// @DnDInput : 6
	/// @DnDParent : 66A601F5
	/// @DnDArgument : "var" "rock.sprite_index"
	/// @DnDArgument : "option" "sp_rock"
	/// @DnDArgument : "option_1" "sp_rock1"
	/// @DnDArgument : "option_2" "sp_rock2"
	/// @DnDArgument : "option_3" "sp_rock3"
	/// @DnDArgument : "option_4" "sp_rock4"
	/// @DnDArgument : "option_5" "sp_rock5"
	rock.sprite_index = choose(sp_rock, sp_rock1, sp_rock2, sp_rock3, sp_rock4, sp_rock5);
}