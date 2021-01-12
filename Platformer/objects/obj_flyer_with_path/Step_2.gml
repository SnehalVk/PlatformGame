/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0DF97F46
/// @DnDArgument : "var" "distance_to_object(obj_character)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "45"
if(distance_to_object(obj_character) < 45)
{
	/// @DnDAction : YoYo Games.Paths.Stop_Path
	/// @DnDVersion : 1
	/// @DnDHash : 684BC26D
	/// @DnDParent : 0DF97F46
	path_end();

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 1E70C177
	/// @DnDParent : 0DF97F46
	/// @DnDArgument : "x" "obj_character.x"
	/// @DnDArgument : "y" "obj_character.y"
	direction = point_direction(x, y, obj_character.x, obj_character.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 32E922DD
	/// @DnDParent : 0DF97F46
	/// @DnDArgument : "speed" "2"
	speed = 2;
}