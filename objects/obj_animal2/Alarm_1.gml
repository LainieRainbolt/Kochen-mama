image_blend = c_white;

if (hp <= 0) {
    // Reference the inventory object
    var inv = instance_find(obj_inventory, 0);
    
    // Add chicken to inventory
    if (inv != noone) {
        inv.inventory.item_add("Schweinefleisch", 1, spr_enemy2_1);
    }
    
    // Destroy the animal instance
    instance_destroy();
}