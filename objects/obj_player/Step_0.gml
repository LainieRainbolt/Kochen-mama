if(instance_exists(obj_dialog)) exit;

var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

if(_hor != 0 or _ver != 0)
{
	if(_ver > 0) sprite_index = spr_player_idle_down_1;
	else if (_ver < 0) sprite_index = spr_player_walk_up_1;
	else if (_hor > 0) sprite_index = spr_player_walk_right_1;
	else if (_hor < 0) sprite_index = spr_player_walk_left_1;
	
	facing = point_direction(0,0, _hor, _ver);
}
else 
{
	if (sprite_index == spr_player_walk_right_1) sprite_index = spr_player_walk_right_1;
	else if (sprite_index == spr_player_walk_left_1) sprite_index = spr_player_walk_left_1;
	else if (sprite_index == spr_player_walk_up_1) sprite_index = spr_player_idle_down_1;
	else if (sprite_index == spr_player_idle_down_1) sprite_index = spr_player_idle_down_1;
}

if(keyboard_check_pressed(vk_space)){
	var _inst = instance_create_depth(x, y, depth, obj_attack);
	
	_inst.image_angle = facing;
	_inst.damage *= damage;
}