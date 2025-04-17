function cook_dish(_recipe) {
    // Find the inventory object instance
    var inv = instance_find(obj_inventory, 0);
    if (!inv) {
        show_message("Error: Inventory not found!");
        return;
    }

    var can_cook = true;

    // Check if all required ingredients are available
    for (var i = 0; i < array_length(_recipe.ingredients); i++) {
        var ingredient_name = _recipe.ingredients[i];
        if (!inv.inventory.item_has(ingredient_name, 1)) {
            can_cook = false;
            break;
        }
    }

    if (can_cook) {
        // Remove ingredients from inventory
        for (var i = 0; i < array_length(_recipe.ingredients); i++) {
            var ingredient_name = _recipe.ingredients[i];
            inv.inventory.item_subtract(ingredient_name, 1);
        }

        // Add cooked dish to inventory
        inv.inventory.item_add(_recipe.name, 1, _recipe.sprite);
        
        show_message("Sie haben " + _recipe.name + " erfolgreich gekocht!");
    } else {
        show_message("Sie haben nicht alle erforderlichen Zutaten, um " + _recipe.name + " zu kochen.");
    }
}
