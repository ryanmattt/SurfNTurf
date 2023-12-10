draw_set_font(fnt_dialogue);
text = "...";
xBuffer = 10;
yBuffer = 10;
boxHeight = camera_get_view_height(view_camera[0]/4);
boxWidth = camera_get_view_width(view_camera[0]);
stringHeight = string_height(text);
charCount = 0;
name = "";
_nodeComplete = false;
node = noone;
_player = instance_find(ob_ross,0);
textPart = ".";
textArray = [];
_optionselected = 0;
_player.dialogue_open = true;
_display_sprite = sp_ross_closeup;
_first_run=true;
_choiceDistance = stringHeight*2;


function _updateChar () {
//Switch character
	switch name {

	case "Ross":
		_display_sprite = sp_ross_closeup;
		break;
	
	case "Tanner":
		_display_sprite = sp_tanner_closeup;
		break;
	
	case "Maya":
        _display_sprite = sp_maya_closeup;
        break;

    case "Ursiline":
        _display_sprite = sp_ursiline_closeup;
        break;

    case "Steve":
        _display_sprite = sp_steve_closeup;
        break;

    case "Coral":
        _display_sprite = sp_coral_closeup;
        break;
	
	case "blub":
		_display_sprite = sp_clamup;
		break;
		
	}
}


function _cleanup () {
	
	
	if(node.dtype) {
		global._ego += node.modify_mood[_optionselected];
		node.modify_mood[_optionselected]=0;
		
		
		
		node=node.next[_optionselected];
	} else
		node=node.next;
		
	if(node.give_necklace) 
		_player.has_necklace=true;
	
	
	
	_optionselected = 0;
	_nodeComplete = false;
	charCount = 0;
	name = node.talking;
	if(node.dtype) 
		textArray=node.text;
	
	


}