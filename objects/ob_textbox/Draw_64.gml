/// @description Draws the textbox and text


draw_sprite_stretched(_display_sprite,0,x+boxWidth/2,y-boxHeight,boxHeight*1.4*1.5,boxHeight*1.5);


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


var _draw_options = function(_element, _index){
	
		if textArray[_index] != _element {
	        charCount += 0.5;
	        textArray[_index] = string_copy(_element, 1, charCount);
		}
	
		draw_text_ext(x + xBuffer + 40, y + stringHeight*(_index+1) + yBuffer, textArray[_index], stringHeight, boxWidth - (2 * xBuffer));
		
}





//adds typewriter effect to text display
if(node!=noone) {
	if(!node.dtype) {
		if (textPart != node.text) {
	        charCount += 0.5;
	        textPart = string_copy(node.text, 1, charCount);
		}
		else {
		_nodeComplete = true;
		}
	
		draw_text_ext(x + xBuffer, y + stringHeight + yBuffer, textPart, stringHeight, boxWidth - (2 * xBuffer));
	} //Selectable
	else {
		array_foreach(node.text, _draw_options);
		

		draw_sprite(sp_selectarrow, 0, x + xBuffer, y + ((_optionselected+1) * stringHeight));
		

	}
	
	




	
	
}


//the formatting for the npc's monologue text









