image_blend = c_white;

if (hp <= 0) {
    // Reference the inventory object
    var inv = instance_find(obj_inventory, 0);
    
    // Add food to inventory
    if (inv != noone) {
        inv.inventory.item_add("Cabbage", 1, spr_lettuce);
    }
    
    // Destroy the instance
    instance_destroy();
}