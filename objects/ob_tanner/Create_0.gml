_key=instance_create_layer(x,y-80, "Keys", ob_interact_key);
_start_dialogue = false;
_interacted = false;
_textbox = noone;
_zoom=false;
depth=-y;

/*
01. Sick necklace bro, where'd you get it?
    a. It was my mom's... she's actually dead and today's a really rough day
         a. Based on that hot bod of yours, I bet she was a hottie.
            a. Um..
                 a. Maybe I can make the day better...somehow?
    b. What's it to you? Are you trying to rob me? (1)
         a. Oop...why are you so touchy?
            a. It's been a rough day. It's my mom's death anniversary.
                 a. Would me robbing you make you feel better? You know, feeling the touch of a man?
02. My name is Tanner, and as you can see from my bike, I know how to ride.
    a. So do I! I bet I can prove it to you
        a. Oh yeah... how?
            a. I'm a surfer! You wanna watch me shred these waves?
                a. Normally, I'd watch you do anything. But unfortunately, I gotta dip soon.
    b. Back off dude! Besides, I bet I can ride better than you. I'm on my way to conquer those waves. (1)
        a. I'm sure you are. I can hear your engines revving and they're calling my name.
03. I gotta put my pedal to the metal and go cruisin' for a bruisin'. Stay safe out there.
    a. Why is everyone saying that to me?
        a. I don't know man, but I heard and saw some things. Thought I was going coo-coo. I think I saw tentacles or something.
    b. You don't even know me! I'm the dopest surfer on Tenderloin Beach. (1)
       a. Guess my flirting wasn't successful then, was it?
04. Imma dip. Keep the rubber side down.
*/
//Format: tanner dialogue (td) + sequence num (00) + child (| childletter_childletter) ...
//CreateNode(text, next (node | [node,node...]), dtype (1 = player, 0 = tanner), mood modifer (0 | [int,int...], name))
td01start = new CreateNode("Sick necklace bro, where'd you get it?",,,,"Tanner");
td01a_b = new CreateNode(["It was my mom's... she's actually dead and today's a really rough day","What's it to you? Are you trying to rob me? "],,1,[0,1]);
td01start.next = td01a_b;
td01aa = new CreateNode("Based on that hot bod of yours, I bet she was a hottie.",,,,"Tanner");
td01ba = new CreateNode("Oop...why are you so touchy?",,,,"Tanner");
td01a_b.next = [td01aa,td01ba];
td01aaa = new CreateNode("Um..");
td01aa.next = td01aaa;
td01baa = new CreateNode("It's been a rough day. It's my mom's death anniversary.");
td01ba.next = td01baa;
td01aaaa = new CreateNode("Maybe I can make the day better ... somehow?",,,,"Tanner");
td01aaa.next = td01aaaa;
td01baaa = new CreateNode("Would me robbing you make you feel better? You know, feeling the touch of a man?",,,,"Tanner");
td01baa.next = td01baaa;

td02start = new CreateNode("My name is Tanner, and as you can see from my bike, I know how to ride.",,,,"Tanner");
td01baaa.next = td02start;
td01aaaa.next = td02start;
td02a_b = new CreateNode(["So do I! I bet I can prove it to you", "Back off dude! Besides, I bet I can ride better than you. I'm on my way to conquer those waves. "],,1,[0,1]);
td02start.next = td02a_b;
td02aa = new CreateNode("Oh yeah... how?",,,,"Tanner");
td02ba = new CreateNode("I'm sure you are. I can hear your engines revving and they're calling my name.",,,,"Tanner");
td02a_b.next = [td02aa,td02ba];
td02aaa = new CreateNode("I'm a surfer! You wanna watch me shred these waves?");
td02aa.next = td02aaa;
td02baa = new CreateNode("Normally, I'd watch you do anything. But unfortunately, I gotta dip soon.",,,,"Tanner");
td02ba.next = td02baa;

td03start = new CreateNode("I gotta put my pedal to the metal and go cruisin' for a bruisin'. Stay safe out there.",,,,"Tanner");
td02baa.next = td03start;
td02aaa.next = td03start;
td03a_b = new CreateNode(["Why is everyone saying that to me?", "You don't even know me! I'm the dopest surfer on Tenderloin Beach."],,1,[0,1]);
td03start.next = td03a_b;
td03aa = new CreateNode("I don't know man, but I heard and saw some things. Thought I was going coo-coo. I think I saw tentacles or something.",,,,"Tanner");
td03ba = new CreateNode("Guess my flirting wasn't successful then, was it?",,,,"Tanner");
td03a_b.next = [td03aa,td03ba];

td04start = new CreateNode("Imma dip. Keep the rubber side down.",,,,"Tanner");
td03ba.next = td04start;
