_key=instance_create_layer(x,y-08, "Keys", ob_interact_key);
_start_dialogue = false;
_interacted = false;
_textbox = noone;


/* Tanner
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


/* Ursiline
01. It's a family reunion! I haven't seen you in twelve years, Ross. I recognized that necklace immediately
    a. Mom! I missed you so much!
        a. I missed you too, my son.
    b. How are you alive? I thought you drowned.
        a. Its a long story, my son. I have missed you so much.
02. I've been wanting to see you for so long and waiting for your ignorant father to find the necklace and give it to you.
    a. That's a little harsh mom. Dad's been taking care of me while you've been doing magic tricks underwater.
        a. At least he took good enough care of you to finally bring you to me.
            a. What does that even mean?
    b. Dad's a straight up idiot and told me to be careful today. As if I'm not a god of the ocean. (2)
        a. Like mother, like son. I have been waiting for you for so long.
            a. Why?
03. The necklace that you're wearing was mine, and it harnesses my powers within it. One day, I was hoping your father would give it to you and that you would find me down here.
    a. You just left me with that mustachioed idiot?! Dad fed me Wheat Thins every day. Breakfast. Lunch. Dinner. Snack time. (2)
        a. Oh. That's my fault. I left that in my will. I'd kill to have Wheat Thins down here.
            a. I never got enough protein in, Mom. I had to work my way up to be the dopest surfer on Tenderloin Beach.
    b. Mom, why did you never reach out? Why'd you never try to find me? I thought you were dead! Do you know how hard it is to grow up without a mom?
        a. I had to make sacrifices, Ross. All for the power to rule the seas.
            a. What about the power to raise me? To teach me how to be an even doper surfer on Tenderloin Beach.
04. I didn't know you were a surfer, Ross.a. How the fuck could you not remember, Mom? (2)
    a. It's been a long time and I've had a lot to deal with down here. Fighting evil mermaids, battling drug sharks... you wouldn't get it.
        a. I want to bond with you mom, and you just don't care about me
    b. Yeah. That's my whole thing mom. I surf. I turf. I shred waves and eat steak. The last time I saw you, you took me to the steak shack on the beach and then taught me how to surf.
        a. Ah! Yes, of course.
            a. I don't think you actually remember that. What was on the little surfboard you bought me?
                a. Who can even remember that?
                    a. It was a Krabby Patty, mom! You clearly don't even care about me.
05. Of course I care! I've been waiting for you all this time. I've taken over the whole ocean for you!
    a. I never asked you to! I didn't want any of this! What are you? A sea witch? Nah...a sea bitch. (2)
        a. Don't you get snippy with me Ross... we're in this together. Don't forget the power I have down here.
    b. While I appreciate the sentiment, I just miss you and want you to come home. All I've ever wanted was a mom.
        a. You have had a mom! A mom who wants to give you the whole ocean! I was gone because I love you.
06. I do have a question though - why did you pick today of all days to come and visit me down here?
    a. You're joking, right? This is ridiculous! How bad of a mother are you? (2)
        a. Ross, stop it with this nonsense.
            a. NO MOM, YOU STOP! It is my 18th birthday and you FORGOT
    b. Do you know what the date is?
        a. We have calendars down here, Ross. Of course, I do.
            a. Then why don't you tell me why I'm down here today of all days?a. I don't know... That's why I'm asking...
                a. What's wrong with you, mom? It's my 18th birthday!!
07. Ahhh yes! I'm so glad I found you on your 18th birthday. This means that you can make a choice. Join me in taking over the ocean, Ross!
    a. No, you're crazy, mom. I'm so glad dad raised me and not you. You're not my mother. (2)
    b. Absolutely not, I am swimming back up. I should've listened to Coral afterall
        a. Oh Coral, her parents were a part of the revolt against me. Its a shame they had to die.
            a. You're awful, disgusting, and a murderer. You're not my mother.
08. I am your mother and you will join me down here to rule the ocean!
    a. Destroy the necklace.
    b. Use the necklace to destroy your mom.
*/

ud01start = new CreateNode("It's a family reunion! I haven't seen you in twelve years, Ross. I recognized that necklace immediately",,,,"Ursiline");
ud01a_b = new CreateNode(["Mom! I missed you so much!","How are you alive? I thought you drowned."],,1);
ud01start.next = ud01a_b;

ud01aa = new CreateNode("I missed you too, my son.",,,,"Ursiline");
ud01ba = new CreateNode("It's a long story, my son. I have missed you so much.",,,,"Ursiline");
ud01a_b.next = [ud01aa, ud01ba];


ud02start = new CreateNode("I've been wanting to see you for so long and waiting for your ignorant father to find the necklace and give it to you.",,,,"Ursiline");
ud01aa.next = ud02start;
ud01ba.next = ud02start;

ud02a_b = new CreateNode(["That's a little harsh, Mom. Dad's been taking care of me while you've been doing magic tricks underwater.","Dad's a straight-up idiot and told me to be careful today. As if I'm not a god of the ocean."],,1);
ud02start.next = ud02a_b;

ud02aa = new CreateNode("Like mother, like son. I have been waiting for you for so long.",,,,"Ursiline");
ud02ba = new CreateNode("Why?",,,,"Ross");
ud02a_b.next = [ud02aa, ud02ba];

ud03start = new CreateNode("The necklace that you're wearing was mine, and it harnesses my powers within it. One day, I was hoping your father would give it to you and that you would find me down here.",,,,"Ursiline");
ud02aa.next = ud03start;
ud02ba.next = ud03start;

ud03a_b = new CreateNode(["I had to make sacrifices, Ross. All for the power to rule the seas.","I never got enough protein in, Mom. I had to work my way up to be the dopest surfer on Tenderloin Beach."],,1);
ud03start.next = ud03a_b;

ud03aa = new CreateNode("What about the power to raise me? To teach me how to be an even doper surfer on Tenderloin Beach.",,,,"Ross");
ud03ba = new CreateNode("I didn't know you were a surfer, Ross.",,,,"Ursiline");
ud03a_b.next = [ud03aa, ud03ba];

ud03aaa = new CreateNode("How the heck could you not remember, Mom?");
ud03baa = new CreateNode("It's been a long time and I've had a lot to deal with down here. Fighting evil mermaids, battling drug sharks... you wouldn't get it.",,,,"Ursiline");
ud03ba.next = ud03baa;

ud03aaaa = new CreateNode("I want to bond with you mom, and you just don't care about me");
ud03aaa.next= ud03aaaa;


