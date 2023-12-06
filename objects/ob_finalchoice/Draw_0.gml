/// @description Insert description here
// You can write your code in this editor



draw_set_font(fnt_dialogue);
if(global._ego<17)
	draw_set_color(c_white);
else
	draw_set_color(c_gray);

draw_text(room_width/2 - space*2, room_height/2, string(choice[0]))

if(global._ego>10)
	draw_set_color(c_white);
else
	draw_set_color(c_gray);
	
	draw_text(room_width/2 - space*2, room_height/2 +  space, string(choice[1]))


draw_sprite(sp_selectarrow, 0,room_width/2 - space*2.5, room_height/2 - 16 + (menu_pos * space))

