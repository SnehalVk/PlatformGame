/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 7B1D48A5
/// @DnDArgument : "soundid" "snd_kill_character"
/// @DnDSaveInfo : "soundid" "190ad8ef-e443-41e7-a7e6-a894f70c9d26"
audio_play_sound(snd_kill_character, 0, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 2A76A895
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" " "Ouch!""
draw_text(x + 0, y + 0, string( "Ouch!") + "");

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 69DDDEE6
/// @DnDApplyTo : c219327a-5b0f-46ab-a29d-dde65e67298c
/// @DnDArgument : "lives" "-1"
/// @DnDArgument : "lives_relative" "1"
with(obj_character) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(-1);
}

/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 12BF767E
/// @DnDArgument : "op" "2"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
if(__dnd_lives > 0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Start
	/// @DnDVersion : 1
	/// @DnDHash : 13596277
	/// @DnDParent : 12BF767E
	x = xstart;
	y = ystart;

	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 37A872F8
	/// @DnDApplyTo : all
	/// @DnDParent : 12BF767E
	room_restart();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0E47F5D9
else
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 0F1FE697
	/// @DnDParent : 0E47F5D9
	/// @DnDArgument : "x" "-60"
	/// @DnDArgument : "y" "-60"
	x = -60;
	y = -60;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 7C5CE73B
	/// @DnDParent : 0E47F5D9
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "is_game_over"
	global.is_game_over = 1;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 4755ABEC
	/// @DnDParent : 0E47F5D9
	/// @DnDArgument : "steps" "120"
	alarm_set(0, 120);
}