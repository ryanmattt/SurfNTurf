if (_key.visible && (distance_to_object(ob_ross)>=10) || ob_ross.dialogue_open) {
	_key.visible = false;
} else if(!_key.visible && distance_to_object(ob_ross)<10) { 
	_key.visible = true;
}
if(_zoom)
{
	x-=7;
	if(x<=room_width/2)
		_zoom=false;
	
}
