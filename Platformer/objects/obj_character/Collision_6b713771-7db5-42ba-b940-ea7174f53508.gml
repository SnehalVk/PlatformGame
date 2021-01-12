/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3A1476ED
/// @DnDArgument : "expr" "vspeed>0&&y<other.y+1"
if(vspeed>0&&y<other.y+1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6144D4F1
	/// @DnDParent : 3A1476ED
	/// @DnDArgument : "expr" "-16"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "vspeed"
	vspeed += -16;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 6A18E96D
	/// @DnDParent : 3A1476ED
	/// @DnDArgument : "soundid" "snd_kill_monster"
	/// @DnDSaveInfo : "soundid" "a76c3336-77d2-4ecf-8000-c4d02e9dced3"
	audio_play_sound(snd_kill_monster, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2224612C
	/// @DnDApplyTo : other
	/// @DnDParent : 3A1476ED
	/// @DnDArgument : "objind" "obj_monster_dead"
	/// @DnDSaveInfo : "objind" "07ff9fa1-0c11-48d5-96fc-e1e4fa432ca4"
	with(other) instance_change(obj_monster_dead, true);

	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 4EA95D0A
	/// @DnDParent : 3A1476ED
	/// @DnDArgument : "score" "50"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(50);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 254D4765
else
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 48A9054D
	/// @DnDParent : 254D4765
	/// @DnDArgument : "code" "event_user(0);"
	event_user(0);
}