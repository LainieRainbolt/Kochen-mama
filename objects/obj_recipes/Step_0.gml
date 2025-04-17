// Update the position to match the viewport dynamically
x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

// Close the book when enter is pressed
if (keyboard_check_pressed(vk_enter)) {
    instance_destroy();
    //global.reading_book = false;
}

// Page-turning animation logic
if (keyboard_check_pressed(vk_right)) {
    image_speed = 1; // Play animation forward
} 
else if (keyboard_check_pressed(vk_left)) {
	image_index = 6;  // Reset animation
    image_speed = -1; // Play animation in reverse
}

// Ensure animation stops at the first and last frames
if (image_speed > 0 && image_index >= image_number - 1) {
    image_speed = 0; // Stop animation at last frame
	image_index = 0;  // Reset animation
	page_index = (page_index + 1) mod total_pages;
} 
else if (image_speed < 0 && image_index <= 0) {
    image_speed = 0; // Stop animation at first frame
	page_index = (page_index - 1 + total_pages) mod total_pages;
}

if (keyboard_check_pressed(ord("F"))) {
    global.selected_recipe = global.recipes[page_index];
    show_debug_message("Selected recipe: " + global.selected_recipe.name);
}