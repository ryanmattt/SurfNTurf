/// @description Draws the textbox and text
//draw text box and its border
draw_set_color(c_gray);
draw_rectangle(x-2, y-2, x+boxWidth+2, y-boxHeight+2, true);
draw_set_color(c_white);
draw_rectangle(x-2, y-2, x+boxWidth+2, y-boxHeight+2, false);



draw_sprite(sp_textbox, 0, x, y);
//draw text
draw_set_valign(fa_top);

//adds typewriter effect to text display
if charCount < string_length(text) then {
charCount += 0.5;
}


textPart = string_copy(text, 1, charCount);
//puts the npc's name in yellow at the top of the box
draw_set_color(c_yellow);
draw_set_halign(fa_center);
draw_text(x + boxWidth/2, y + yBuffer, name);
//the formatting for the npc's monologue text
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_text_ext(x + xBuffer, y + stringHeight + yBuffer,
textPart, stringHeight, boxWidth - (2 * xBuffer));








