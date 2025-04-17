x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);
image_xscale = camera_get_view_width(view_camera[0]) / sprite_width;
image_yscale = camera_get_view_height(view_camera[0]) / sprite_height;

image_speed = 0; // Stop animation until a key is pressed

page_index = 0;
total_pages = array_length(global.recipes);