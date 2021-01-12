/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1E7341ED
/// @DnDArgument : "code" "//Left and right movements$(13_10)	//gravity = 0;$(13_10)	if (keyboard_check(vk_left))$(13_10)		sprite_index = spr_left;$(13_10)	else if (keyboard_check(vk_right))$(13_10)		sprite_index = spr_right;$(13_10)$(13_10)$(13_10)//left-right$(13_10)climbing = false;$(13_10)if (!instance_place(x, y, obj_block) && climbing == false)$(13_10){$(13_10)	//gravity = 0;$(13_10)	x += (keyboard_check(vk_right) - keyboard_check(vk_left)) * 4;$(13_10)}$(13_10)$(13_10)$(13_10)//up/down$(13_10)if (keyboard_check(vk_up) && !place_empty(x+0, y+1) && climbing == false)$(13_10){$(13_10)	if (vspeed < 16)$(13_10)		vspeed -= 13;$(13_10)	else$(13_10)		vspeed = 16;$(13_10)}$(13_10)$(13_10)//ladder- climbing movements$(13_10)if (instance_place(x, y, obj_ladder))$(13_10){$(13_10)	climbing = true;$(13_10)	vspeed = 0;$(13_10)	y += (keyboard_check(vk_down) - keyboard_check(vk_up)) * 2.5;$(13_10)	sprite_index = spr_climbing;$(13_10)}$(13_10)else$(13_10){$(13_10)	climbing = false;$(13_10)	//gravity = 0;$(13_10)}$(13_10)$(13_10)if (climbing == false)$(13_10){$(13_10)	if (place_empty(x+0, y+1))$(13_10)	{$(13_10)		gravity = 1;$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		gravity = 0;$(13_10)	}$(13_10)}"
//Left and right movements
	//gravity = 0;
	if (keyboard_check(vk_left))
		sprite_index = spr_left;
	else if (keyboard_check(vk_right))
		sprite_index = spr_right;


//left-right
climbing = false;
if (!instance_place(x, y, obj_block) && climbing == false)
{
	//gravity = 0;
	x += (keyboard_check(vk_right) - keyboard_check(vk_left)) * 4;
}


//up/down
if (keyboard_check(vk_up) && !place_empty(x+0, y+1) && climbing == false)
{
	if (vspeed < 16)
		vspeed -= 13;
	else
		vspeed = 16;
}

//ladder- climbing movements
if (instance_place(x, y, obj_ladder))
{
	climbing = true;
	vspeed = 0;
	y += (keyboard_check(vk_down) - keyboard_check(vk_up)) * 2.5;
	sprite_index = spr_climbing;
}
else
{
	climbing = false;
	//gravity = 0;
}

if (climbing == false)
{
	if (place_empty(x+0, y+1))
	{
		gravity = 1;
	}
	else
	{
		gravity = 0;
	}
}