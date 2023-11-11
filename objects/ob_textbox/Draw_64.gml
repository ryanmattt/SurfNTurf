/// @description Draws the textbox and text

if(_first_run)
{
	_updateChar();
	_first_run=false;
}

draw_sprite_stretched(_display_sprite,0,x+boxWidth*3/10,y-boxHeight,boxHeight*1.4,boxHeight);
draw_sprite_stretched(_player.has_necklace ? sp_ross_closup_necklace : sp_ross_closeup ,0 ,0, 360,(boxHeight-yBuffer)*2/3,(boxHeight/1.4)*2/3);


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
	
		draw_text_ext(x + (5 * xBuffer), y + _choiceDistance*(_index+1) + yBuffer, textArray[_index], stringHeight, boxWidth - (5 * xBuffer));
		
}





//adds typewriter effect to text display
if(node!=noone) {
	if(node.color!=c_white) {
		draw_set_color(node.color);
	}
		if(!node.dtype) {
			if (textPart != node.text) {
				charCount += 0.5;
				textPart = string_copy(node.text, 1, charCount);
			}
			else {
			_nodeComplete = true;
			}
		
			draw_text_ext(x + (2*xBuffer), y + stringHeight + yBuffer, textPart, stringHeight, boxWidth - (3 * xBuffer));
		} //Selectable
		else {
			array_foreach(node.text, _draw_options);
			

			draw_sprite(sp_selectarrow, 0, x + xBuffer, y + ((_optionselected+1) * _choiceDistance));
		}
	
	if(node.color!=c_white) {
		draw_set_color(c_white);
	}
}


//the formatting for the npc's monologue text









