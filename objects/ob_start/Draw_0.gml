/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_color(c_black);


draw_set_font(fnt_title);
draw_text_transformed(global._wWidth/2, global._wHeight*1/5, "Surf n' Turf", 2, 2, 0);

draw_set_font(fnt_dialogue);
var menu_item;

for (menu_item = 0; menu_item < array_length_1d(start_menu); menu_item += 1)
{
	draw_text(global._wWidth/2 + space, global._wHeight/2 + (menu_item * space), string(start_menu[menu_item]))
}

draw_sprite(sp_selectarrow, 0,global._wWidth/2 - 40, global._wHeight/2 - 16 + (start_menu_pos * space))

//Play
//Settings
//Credits
//Exit