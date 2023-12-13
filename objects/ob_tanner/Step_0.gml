if(!_interacted) {
	if (_key.visible && (distance_to_object(ob_ross)>=10) || ob_ross.dialogue_open) {
	_key.visible = false;
	} else if(!_key.visible && distance_to_object(ob_ross)<10) { 
	_key.visible = true;
	}
}
else if(_zoom) {
sprite_index=sp_tannercycle;
x+=10;
instance_destroy(ob_motorcycle);
}