//allows the use
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
		global._player.dialogue_open=false;
		ob_ursiline.alarm[0]=1;
        instance_destroy();
        }
}