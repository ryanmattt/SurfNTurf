
if(currentPage==0) {
	draw_set_halign(fa_center);
	draw_set_color(c_black);


	draw_set_font(fnt_title);
	draw_text(global._wWidth/2, global._wHeight*1/5, "Surf n' Turf");

	draw_set_font(fnt_dialogue);
	var menu_item;

	for (menu_item = 0; menu_item < array_length_1d(start_menu); menu_item += 1)
	{
		draw_text(global._wWidth/2, global._wHeight/2 + (menu_item * space), string(start_menu[menu_item]))
	}

	draw_sprite(sp_selectarrow, 0,global._wWidth/2 - 40 - space, global._wHeight/2 - 16 + (start_menu_pos * space))
} else if (currentPage==1) {
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_font(fnt_dialoguelarge);
	draw_text(global._wWidth/2, global._wHeight*1/2, "<Esc> to go back");

} else if (currentPage==2) {
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_font(fnt_dialoguelarge);
	draw_text(global._wWidth/2, global._wHeight*1/6-50, "Credits");

	draw_set_halign(fa_left);
	draw_set_font(fnt_dialogue);
	draw_text(0, 40, "<Esc> to go back");

	array_foreach(roles, _draw_credits_left);
	draw_set_halign(fa_right);
	array_foreach(names, _draw_credits_right);
	


}
