if(instance_exists(obj_recipes))exit;

if(instance_exists(obj_player) && distance_to_object(obj_player) < 20){
	can_read = true;
	if(keyboard_check_pressed(input_key)){
		instance_create_depth(0, 0, 0, obj_recipes); // Display book
	}
}else{
	can_read = false;
}
