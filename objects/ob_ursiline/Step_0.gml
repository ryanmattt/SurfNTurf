if (_key.visible && (distance_to_object(ob_ross)>=10) || ob_ross.dialogue_open) {
	_key.visible = false;
} else if(!_key.visible && distance_to_object(ob_ross)<10) { 
	_key.visible = true;
}
if(_zoom)
{
	x-=7;
	if(x<=room_width/2) {
		_zoom=false;
		_key=instance_create_layer(x,y-150, "Keys", ob_interact_key);
	}
	
}
if(_zoom2)
{
	y+=5;
	x = sin(timer*frequency)*amplitude + initial_x;
	timer++;
}
