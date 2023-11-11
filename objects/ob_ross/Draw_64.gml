if(room_get_name(room) == "rm_minigame") {
	draw_text(room_width-150, 50, string("Score: ") + string(score));
	_highscore=max(y,_highscore);
}