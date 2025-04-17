//draw_self(); // Draw the book background
draw_set_color(c_black);
draw_set_font(fn_Ubuntu);

var recipe = global.recipes[page_index];

// === Left Page ===
var left_x = 230;
var top_y = 125;

draw_text(left_x, top_y, recipe.name);
draw_sprite_ext(recipe.sprite, 0, left_x + 150, top_y + 125, 2,2, 0, c_white, 1);

// Ingredients
draw_text(left_x, top_y + 215, "Zutaten:");
for (var i = 0; i < array_length(recipe.ingredients); i++) {
    draw_text(left_x + 20, top_y + 250 + (i * 40), "- " + recipe.ingredients[i]);
}

draw_text(left_x, top_y + 390, "Druecken Sie \"F\",");
draw_text(left_x, top_y + 415, "um das Rezept auszuwaehlen");

// === Right Page ===
var right_x = 675;
draw_text(right_x, top_y, "Anweisungen:");
draw_text_ext(right_x, top_y + 60, recipe.instructions, -1, 400);

// Reset draw state
draw_set_color(c_white);
draw_set_font(-1);
