var cursor = 0;




var _finish_dtype1 = function(_element, _index){
	textArray[_index] = _element;
}

cursor -= max(keyboard_check_pressed(vk_up), 0);
cursor += max(keyboard_check_pressed(vk_down), 0);





if (node.dtype && cursor != 0) then {
	_optionselected += cursor;
	if (_optionselected < 0) {
		audio_play_sound(snd_dialogueselect_bottom,5,false);
		_optionselected = array_length_1d(textArray) - 1; }
		
	else if (_optionselected > array_length_1d(textArray) - 1) {
		audio_play_sound(snd_dialogueselect_top,5,false);
		_optionselected = 0; }
	else if(cursor>0) {
		audio_play_sound(snd_dialogueselect_bottom,5,false);
	} else {
		audio_play_sound(snd_dialogueselect_top,5,false);
	}

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
           _player.dialogue_open = false;
		   if(room==rm_underwater && string_lower(name)=="ursiline")
			room_goto(rm_finalchoice);
		   if(room==rm_housedialogue)
			room_goto(rm_beach);	
		   else {
			var npc = asset_get_index("ob_" + string_lower(name))
			npc._interacted=true;
			if(string_lower(name)=="tanner")
			{
				npc.alarm[0] = 1;
				npc.alarm[1] = 450;
			}
			if(string_lower(name)=="coral")
			{
					audio_play_sound(snd_laugh, 5,false);
					npc.alarm[0]=60;
			}

			}
		   instance_destroy();
        } else {
            _cleanup();
        }
    
}

