if(_key.visible) {
	_player.riding_surfboard = true;
	_player.x = x;
	_player.y = y + 20;
	visible = false;
	_key.visible = false;
	_player.sprite_index=sp_surf_front_left;
	_player._spd=8;
}