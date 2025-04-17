global.transition_x = -1;
global.transition_y = -1;

global.player_hp = 10; 
global.player_max_hp = 10; 

if (!variable_global_exists("selected_recipe")) {
    global.selected_recipe = undefined;
}

global.recipes = [
	{
		name: "Griechisches Huhn",
        sprite: spr_soup,
        ingredients: ["Schweinefleisch", "Huehnchenfleisch", "Blumen"],
        instructions: "1. Braten Huehner und Schweinefleisch, das zart gekocht wurde.\n2. Alles klein schneiden und vermengen.\n3. Ein Viertelpfund Rosen hinzufuegen.\n4. Holen Sie sich Ingwer, Pfeffer, Wein und Honig.\n5.Alles zusammen aufkochen und servieren."
	},
	{
		name: "Einen Fladen",
        sprite: spr_flammkuchen,
        ingredients: ["Schweinefleisch", "Huehnchenfleisch"],
        instructions: "1. Nehmen Sie Schweinebaeuche und Knochenmark gut gekocht.\n2. So viel geriebenen Kaese hinzufuegen, wie Fleisch ist.\n3. Gut umruehren und mit Eiern vermischen.\n4. Alles auf ein Blatt Teig streichen, in den Ofen geben und backen lassen."
	}
]