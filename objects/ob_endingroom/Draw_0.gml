draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text(global._wWidth/2, global._wHeight*1/7, "The End");

draw_set_font(fnt_dialogue);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text(0,global._wHeight-40, "Press <Esc> to return to the Main Menu");