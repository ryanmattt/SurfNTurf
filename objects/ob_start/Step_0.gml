var cursor = 0;

cursor -= max(keyboard_check_pressed(vk_up), 0);
cursor += max(keyboard_check_pressed(vk_down), 0);

if (cursor != 0) then {
	start_menu_pos += cursor;
	if (start_menu_pos < 0) {
		start_menu_pos = array_length_1d(start_menu) - 1; }
		
	if (start_menu_pos > array_length_1d(start_menu) - 1) {
		start_menu_pos = 0; }
}
if (keyboard_check_released(vk_enter)) {
	
	switch start_menu_pos{
		case 0:
			room_goto(rm_housedialogue);
			audio_stop_all();
			break;
			
		case 1:
			game_end();
		
		case 2:
			game_end();
			
		case 3:
			game_end();
			
		
	}
	
}