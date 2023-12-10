//allows the use
if keyboard_check_pressed(vk_space) {
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
        instance_destroy();
		room_goto(rm_badending);
		global._player.dialogue_open=false;
        }
}