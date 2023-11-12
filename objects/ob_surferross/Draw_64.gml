if(room_get_name(room) == "rm_minigame") {
	score=y;
	draw_text(50, 50, string("Score: ") + string(score));
	global._highscore=max(y,global._highscore);
}