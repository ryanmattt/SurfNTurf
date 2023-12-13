_key=instance_create_layer(x,y-80, "Keys", ob_interact_key);
_start_dialogue = false;
_interacted = false;
_textbox = noone;
depth=-y;

image_index = floor(random_range(0,16));
clamstart= new CreateNode("Blub...",,,,"blub",#4F7CAC);