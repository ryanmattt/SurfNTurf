
	if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)) {
	    if (!_pageComplete) {
	        charCount = string_length(text[page]);
	        _pageComplete = true;
	        textPart = text[page];
	    } else if (page + 1) < array_length_1d(text) {
	        name = (name == "Ross" ? "Ursiline" : "Ross");
	        page += 1;
	        _pageComplete = false;
	        charCount = 0;
	    } else {
			instance_create_layer(global._wWidth/2-sprite_width/2,global._wHeight*1/6, "Arrow", ob_up_arrow);
			global._player.dialogue_open=false;
			instance_destroy();
	        }
	}
