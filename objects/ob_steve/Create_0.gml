_key=instance_create_layer(x,y-80, "Keys", ob_interact_key);
_start_dialogue = false;
_interacted = false;
_textbox = noone;

/*

1. Happy 18th Birthday son!
    a. Thanks dad!
        a. I have a gift for you.
    b. Come on dad, let me sleep in.
        a. Aw, don't be like that. Here, I've got something for you.
2. I know this is a bittersweet day for you since your mother isn't here... But here is something to remember her by.
    a. Wow dad this is radical, thanks!
        a. Yeah, of course!
    b. I don't know dad, I'm not sure I want it.
        a. Ross, we need to be able to remember her somehow. Please wear it today, for her
            a. Ok dad, I will for her
3. Although, I must say... There was always something fishy about her death...anyways, Have a great birthday! But stay safe. The waves are killer out there. You know how I feel about the ocean after your mother.
    a. UGH! Whatever...
    b. Of course I will! I'm the greatest surfer that's ever lived.
*/

sd01start = new CreateNode("Happy 18th Birthday son!",,,,"Steve");
sd01a_b = new CreateNode(["Thanks dad!", "Come on dad, let me sleep in."],,1);
sd01start.next=sd01a_b;
sd01aa = new CreateNode("I have a gift for you.",,,,"Steve",,true);
sd01ba = new CreateNode("Aw, don't be like that. Here, I've got something for you.",,,,"Steve",,true);
sd01a_b.next=[sd01aa,sd01ba];

sd02start = new CreateNode("I know this is a bittersweet day for you since your mother isn't here... But here is something to remember her by.",,,,"Steve");
sd01aa.next=sd02start;
sd01ba.next=sd02start;
sd02a_b = new CreateNode(["Wow dad this is radical, thanks!", "I don't know dad, I'm not sure I want it."],,1);
sd02start.next=sd02a_b;
sd02aa = new CreateNode("Yeah, of course!",,,,"Steve");
sd02ba = new CreateNode("Ross, we need to be able to remember her somehow. Please wear it today, for her",,,,"Steve");
sd02a_b.next=[sd02aa,sd02ba];
sd02baa = new CreateNode("Ok dad, I will for her");
sd02ba.next=sd02baa;

sd03start = new CreateNode("Although, I must say... There was always something fishy about her death...anyways, Have a great birthday! But stay safe. The waves are killer out there. You know how I feel about the ocean after your mother.",,,,"Steve");
sd02aa.next=sd03start;
sd02baa.next=sd03start;
sd03a_b = new CreateNode(["UGH! Whatever...", "Of course I will! I'm the greatest surfer that's ever lived."],,1);
sd03start.next=sd03a_b;

