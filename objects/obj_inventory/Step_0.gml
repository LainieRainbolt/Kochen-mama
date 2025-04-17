/// @description 

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
	
var inventory_items = inventory.item_get();
var pos_x = 0;
var pos_y = 0;

// Toggle inventory visibility when 'E' is pressed
if (keyboard_check_pressed(ord("E"))) {
    inventory_visible = !inventory_visible; 
}

if (inventory_visible) {
	if(mouse_check_button_released(mb_left)) {		
		#region INVENTORY	
			for (var row = 0; row < inventory_rows; row++) {				
				pos_y = ui_padding_y + (ui_border_size * 13) + (row * (ui_inventory_margin + ui_inventory_box));
				for (var column = 0; column < inventory_columns; column++) {
					pos_x = ui_padding_x + ui_panel_left + ui_border_size + ui_inventory_padding + (column * (ui_inventory_margin + ui_inventory_box));
				
					if(is_between(mx, pos_x, pos_x + ui_inventory_box)) {
						if(is_between(my, pos_y, pos_y + ui_inventory_box)) {
							var inventory_index = (row * inventory_columns) + column;
							// now we need to check if we have an inventory item here
							if(inventory_index <= array_length(inventory_items) - 1) {
								show_debug_message($"Das ist {inventory_items[inventory_index].name}");
						
								//inventory.item_subtract(inventory_items[inventory_index].name, 1);
							} else {						
								show_debug_message("No inventory item here !");
							}
						}
					}
				}
			}
		#endregion
	}
}