draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_text(global._wWidth/2, global._wHeight*1/5, "The End");

draw_set_font(fnt_dialogue);
draw_set_halign(fa_left);
draw_text(0,global._wHeight-40, "Press <Esc> to return to the Main Menu");