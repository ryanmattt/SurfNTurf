draw_set_font(fnt_dialogue);


//draw text box and its border
draw_set_color(#434343);
draw_rectangle(x, y, x+boxWidth-1, y+boxHeight, false);
draw_set_color(c_white);
draw_rectangle(x, y, x+boxWidth-1, y+boxHeight, true);

//draw text
draw_set_valign(fa_top);

//puts the npc's name in yellow at the top of the box
draw_set_color(c_yellow);
draw_set_halign(fa_center);
draw_text(x + boxWidth/2, y + yBuffer, name);


draw_set_color(c_white);
draw_set_halign(fa_left);


if (textPart != text[page]) {
	charCount += 0.5;
	textPart = string_copy(text[page], 1, charCount);
}
else {
	_pageComplete = true;
}


draw_text_ext(x + (2*xBuffer), y + stringHeight + yBuffer, textPart, stringHeight, boxWidth - (3 * xBuffer));
		









