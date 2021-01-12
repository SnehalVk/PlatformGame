/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 295E4FDE
/// @DnDArgument : "expr" "hspeed>0"
if(hspeed>0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5EB2E7B1
	/// @DnDParent : 295E4FDE
	/// @DnDArgument : "spriteind" "spr_flyerr"
	/// @DnDSaveInfo : "spriteind" "168a5ea5-432c-43e8-aedf-99618d65b0cd"
	sprite_index = spr_flyerr;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4EF06E6D
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5682FAB3
	/// @DnDParent : 4EF06E6D
	/// @DnDArgument : "spriteind" "spr_flyerl"
	/// @DnDSaveInfo : "spriteind" "8fc3251b-38b5-4694-90ec-975c0a2a9b4e"
	sprite_index = spr_flyerl;
	image_index = 0;
}