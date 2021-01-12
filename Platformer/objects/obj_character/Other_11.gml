/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 10B24047
/// @DnDArgument : "soundid" "snd_kill_character"
/// @DnDSaveInfo : "soundid" "190ad8ef-e443-41e7-a7e6-a894f70c9d26"
audio_play_sound(snd_kill_character, 0, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3673C724
/// @DnDArgument : "x" "obj_character.x"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "obj_character.y"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Ouch! ""
draw_text(x + obj_character.x, y + obj_character.y, string("Ouch! ") + "");

/// @DnDAction : YoYo Games.Rooms.Restart_Room
/// @DnDVersion : 1
/// @DnDHash : 33359835
room_restart();