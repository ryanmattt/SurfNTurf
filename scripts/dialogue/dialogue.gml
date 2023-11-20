// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

_player = instance_find(ob_ross,0);
// _tanner = instance_find(ob_tanner,0);
// _coral = instance_find(ob_coral,0);
// _maya = instance_find(ob_maya,0);
// _steve = instance_find(ob_steve,0);
// _ursiline = instance_find(ob_ursiline,0);


function create_tanner_dialogue(_self) {
var _textbox = instance_create_layer(0,camera_get_view_height(view_camera[0])*2/3,"Text",ob_textbox);
_textbox.name = "Tanner";
_textbox.currNode = _self.td01start;
return _textbox;

}


function CreateNode(_text, _next=noone, _dtype=0, _modify_mood=[0,0], _talking="Ross", _color=c_white,_give_necklace=false,_sound=0) constructor
{
    text = _text;
	next = _next;
	dtype = _dtype;
	modify_mood = _modify_mood;
	talking = _talking;
	color = _color;
	give_necklace = _give_necklace;
	sound = _sound;

    static node = function(_new_node)
    {
		text += _new_node.text;
		next += _new_node.next;
		dtype += _new_node.dtype;
		modify_mood += _new_node.modify_mood;
		talking += _new_node.talking;
		color += _new_node.color;
		give_necklace += _new_node.give_necklace;
		sound += _new_node.sound;

	}
} 

