var cursor = 0;

if(global._ego>10 && global._ego<17) {
	cursor -= max(keyboard_check_pressed(vk_up), 0);
	cursor += max(keyboard_check_pressed(vk_down), 0);

	if (cursor != 0 ) then {
		menu_pos += cursor;
		if (menu_pos < 0) {
			menu_pos = array_length_1d(choice) - 1; }
		
		if (menu_pos > array_length_1d(choice) - 1) {
			menu_pos = 0; }
	}
}
if (keyboard_check_released(vk_enter)) {
	
		switch menu_pos {
			case 0:
				room_goto(rm_goodending);
				break;
			case 1:
				room_goto(rm_badending);
				break;
		}
	
	
}