
if(!_key.visible && distance_to_object(ob_ross)<10)
{ 
	if(keyboard_check(ord("E")))
	{
		
	}

	_key.visible = true;

}
else if (_key.visible && distance_to_object(ob_ross)>=10) {
	_key.visible = false;
}