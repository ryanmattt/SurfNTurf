if(_key.visible&&!instance_exists(ob_textbox))
{
	var _textbox = instance_create_layer(0,camera_get_view_height(view_camera[0])*2/3,"Text",ob_textbox);
	_textbox.name = "blub";
	_textbox.node = clamstart;
}