draw_set_font(fnt_dialogue);
sd01start = new CreateNode("Happy 18th Birthday son!",,,,"Steve");
sd01a_b = new CreateNode(["Thanks dad!", "Come on dad, let me sleep in."],,1);
sd01start.next=sd01a_b;
sd01aa = new CreateNode("I have a gift for you.",,,,"Steve");
sd01ba = new CreateNode("Aw, don't be like that. Here, I've got something for you.",,,,"Steve");
sd01a_b.next=[sd01aa,sd01ba];

sd02start = new CreateNode("I know this is a bittersweet day for you since your mother isn't here... But here is something to remember her by.",,,,"Steve",,true);
sd01aa.next=sd02start;
sd01ba.next=sd02start;
sd02a_b = new CreateNode(["Wow dad this is radical, thanks!", "I don't know dad, I'm not sure I want it."],,1);
sd02start.next=sd02a_b;
sd02aa = new CreateNode("Yeah, of course!",,,,"Steve");
sd02ba = new CreateNode("Ross, we need to be able to remember her somehow. Please wear it today, for her.",,,,"Steve");
sd02a_b.next=[sd02aa,sd02ba];
sd02baa = new CreateNode("Ok dad, I will for her.");
sd02ba.next=sd02baa;

sd03start = new CreateNode("Although, I must say... There was always something fishy about her death...anyways, Have a great birthday! But stay safe. The waves are killer out there. You know how I feel about the ocean after your mother.",,,,"Steve");
sd02aa.next=sd03start;
sd02baa.next=sd03start;
sd03a_b = new CreateNode(["UGH! Whatever...", "Of course I will! I'm the greatest surfer that's ever lived."],,1);
sd03start.next=sd03a_b;


var _textbox = instance_create_layer(0,camera_get_view_height(view_camera[0])*2/3,"Text",ob_textbox);
	_textbox.name = "Steve";
	_textbox.node = sd01start;