if(instance_exists(obj_dialog))exit;

if(instance_exists(obj_player) && distance_to_object(obj_player) < 20){
	can_read = true;
	if(keyboard_check_pressed(input_key)){
		create_dialog(dialog);
	}
}else{
	can_read = false;
}

if (distance_to_object(obj_player) < 40) {
    
    // Check if the player presses C
    if (keyboard_check_pressed(ord("C"))) {
        // Attempt to cook the dish
		//cook_dish(recipe_stew);
		if (global.selected_recipe != undefined) {
			cook_dish(global.selected_recipe);
	    } else {
	        show_message("Kein Rezept ausgewaehlt!");
	    }
    }
}