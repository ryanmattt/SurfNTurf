var cursor = 0;




var _finish_dtype1 = function(){

}

cursor -= max(keyboard_check_pressed(vk_up), 0);
cursor += max(keyboard_check_pressed(vk_down), 0);





if (node.dtype && cursor != 0) then {
	_optionselected += cursor;
	if (_optionselected < 0) {
		_optionselected = array_length_1d(textArray) - 1; }
		
	if (_optionselected > array_length_1d(textArray) - 1) {
		_optionselected = 0; }
}

if keyboard_check_pressed(vk_space) {
    
        // Handle user input to progress the dialogue
      /*  if(!_nodeComplete)
		{
			textPart = text
		} else  */
		if (node.next==noone) {
           instance_destroy();
		   _player.dialogue_open = false;
        } else {
            _cleanup();
        }
    
}

