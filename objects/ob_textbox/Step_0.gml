var cursor = 0;




var _finish_dtype1 = function(_element, _index){
	textArray[_index] = _element;
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

if (keyboard_check_pressed(vk_space) ||keyboard_check_pressed(vk_enter)) {
    
        // Handle user input to progress the dialogue
        if(!_nodeComplete && !node.dtype) {
			if(node.dtype)
				array_foreach(node.text,_finish_dtype1)
			else
				textPart = node.text;
			_nodeComplete = true;
		} else if (node.next==noone) {
           instance_destroy();
		   _player.dialogue_open = false;
        } else {
            _cleanup();
        }
    
}

