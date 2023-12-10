/// @description Insert description here
// You can write your code in this editor



draw_set_font(fnt_dialogue);
if(global._ego<17)
	draw_set_color(c_white);
else
	draw_set_color(c_gray);

draw_text(global._wWidth/2 - space*2, global._wHeight/2, string(choice[0]))

if(global._ego>10)
	draw_set_color(c_white);
else
	draw_set_color(c_gray);
	
	draw_text(global._wWidth/2 - space*2, global._wHeight/2 +  space, string(choice[1]))


draw_sprite(sp_selectarrow, 0,global._wWidth/2 - space*2.5, global._wHeight/2 - 16 + (menu_pos * space))

