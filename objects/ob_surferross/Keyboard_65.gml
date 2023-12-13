/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 1D35357F
/// @DnDArgument : "speed" "-7"
/// @DnDArgument : "type" "1"
hspeed = -7;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 180CE728
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "sp_surf_front_left"
if(!(sprite_index == sp_surf_front_left))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 45593063
	/// @DnDParent : 180CE728
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "sp_surf_front_left"
	/// @DnDSaveInfo : "spriteind" "sp_surf_front_left"
	sprite_index = sp_surf_front_left;
	image_index += 0;
}