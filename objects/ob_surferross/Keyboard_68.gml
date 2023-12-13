/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 28BEEEEE
/// @DnDArgument : "speed" "7"
/// @DnDArgument : "type" "1"
hspeed = 7;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1CDF4F9C
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "sp_surf_front_right"
if(!(sprite_index == sp_surf_front_right))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1F443CE6
	/// @DnDParent : 1CDF4F9C
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "sp_surf_front_right"
	/// @DnDSaveInfo : "spriteind" "sp_surf_front_right"
	sprite_index = sp_surf_front_right;
	image_index += 0;
}