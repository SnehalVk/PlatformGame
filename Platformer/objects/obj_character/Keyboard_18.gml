/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 4124EFA4
/// @DnDArgument : "key" "ord("R")"
var l4124EFA4_0;
l4124EFA4_0 = keyboard_check(ord("R"));
if (l4124EFA4_0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 73DD34F0
	/// @DnDParent : 4124EFA4
	/// @DnDArgument : "code" "obj_character.x = obj_level_exit.x - 40;$(13_10)obj_character.y = obj_level_exit.y -20;"
	obj_character.x = obj_level_exit.x - 40;
	obj_character.y = obj_level_exit.y -20;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 5B1B5BCC
/// @DnDArgument : "key" "ord("L")"
var l5B1B5BCC_0;
l5B1B5BCC_0 = keyboard_check(ord("L"));
if (l5B1B5BCC_0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 3663017F
	/// @DnDParent : 5B1B5BCC
	/// @DnDArgument : "lives" "10"
	
	__dnd_lives = real(10);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 17E24ACF
/// @DnDArgument : "key" "ord("S")"
var l17E24ACF_0;
l17E24ACF_0 = keyboard_check_pressed(ord("S"));
if (l17E24ACF_0)
{
	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 1210D424
	/// @DnDParent : 17E24ACF
	game_restart();
}