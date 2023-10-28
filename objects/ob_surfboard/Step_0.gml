//checks if the player is close enough to the object to show the key and if it is allow interaction
if(visible && !_key.visible && distance_to_object(ob_ross)<10)
{ 
	_key.visible = true;

}
else if (_key.visible && distance_to_object(ob_ross)>=10) {
	_key.visible = false;
}