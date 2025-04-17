image_blend = c_white;

if (hp <= 0) {
    // Reference the inventory object
    var inv = instance_find(obj_inventory, 0);
    
    // Add almonds to inventory
    if (inv != noone) {
        inv.inventory.item_add("Almonds", 1, spr_almonds);
    }
    hp = 1;
}