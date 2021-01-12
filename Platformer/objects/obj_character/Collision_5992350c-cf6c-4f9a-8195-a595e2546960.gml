/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 202184AA
/// @DnDArgument : "soundid" "snd_get_mushroom"
/// @DnDSaveInfo : "soundid" "89846073-7711-4816-9906-ece50a519ee5"
audio_play_sound(snd_get_mushroom, 0, 0);

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 4A3A2937
/// @DnDArgument : "score" "10"
/// @DnDArgument : "score_relative" "1"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(10);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 456E0226
/// @DnDApplyTo : other
with(other) instance_destroy();