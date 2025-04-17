/// @description 

randomize();
inventory_visible = false; // Initially hidden
inventory = new Inventory();

/*
inventory.item_add("Chicken", 3, spr_enemy1_1);
inventory.item_add("Chicken", 2, spr_enemy1_1);
inventory.item_add("Pork", 10, spr_enemy2_1);
*/

show_debug_message(inventory);

/*
inventory.item_subtract("Chicken", 2);
inventory.item_subtract("Pork", 10);

show_debug_message(inventory);
*/

// UI INFORMATION //

display_set_gui_size(1280, 720);

inventory_columns = 6;
inventory_rows = 4;

ui_padding_x = 64;
ui_padding_y = 64;
ui_panel_left = 320;
ui_border_size = 8;
ui_inventory_padding = 48;
ui_inventory_box = 100;
ui_inventory_margin = 16;

color_background = #55507a;
color_border = #36234a;
color_inventory_text = c_white;
color_inventory_highlight = c_white;