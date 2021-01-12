/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 73B3F518
/// @DnDArgument : "code" "checked = window_get_fullscreen();$(13_10)$(13_10)if(checked)$(13_10){$(13_10)			window_set_fullscreen(false);$(13_10)}$(13_10)else$(13_10){$(13_10)			window_set_fullscreen(true);$(13_10)}"
checked = window_get_fullscreen();

if(checked)
{
			window_set_fullscreen(false);
}
else
{
			window_set_fullscreen(true);
}