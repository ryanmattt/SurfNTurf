_key=instance_create_layer(x,y-80, "Keys", ob_interact_key);
_interacted = false;
depth=-y;

/*
1. Happy birthday, Ross! How's it hanging?
    a. None of your business, Maya (1)
        a. Oh come on now Ross, don't be like that.
    b. Boutta hit these radical waves, wanna join?
        a. Kowabunga!
2. But how are you like doing though? It's gotta be like a rough day.
    a. I'm ok, my dad gave me my mom's old necklace as a birthday gift…I've felt weird since wearing it.
        a. Woah, I've never seen a shell like that before. It's gnarly.
            a. Rad right? It's making me feel really connected to the ocean
    b. I'm fine, bruh. Don't be so pushy. (1)
        a. I've never seen you like this before... Does it have something to do with that new necklace?
            a. Nah, the only thing this necklace is doing is making me the dopest surfer on Tenderloin Beach.
3. Oh I bet. Anyways, have you like seen the water today? The waves are like killer, more than usual. Something feels off.
    a. Sucks to suck. Guess you're just afraid to hit these gargantuan waves, dawg. (1)
        a. Ross you're being like ridiculous. I'm going to like leave like right now and let you figure this out, have a good birthday
    b. Yeah, my dad's worried. But he's always been worried since what happened to mom. I'm still amped to hit the waves though!
        a. Yeah just be like careful. Ever since this morning, I've heard like really weird noises along the beach, although it could just be my crystal lace agate hiding in my shoe. Have a great day, Ross!!
*/

md01start = new CreateNode("Happy birthday, Ross! How's it hanging?",,,,"Maya");

md01a_b = new CreateNode(["None of your business, Maya.","Boutta hit these radical waves, wanna join?"],,1,[1,0]);
md01start.next = md01a_b;

md01aa = new CreateNode("Oh come on now Ross, don't be like that.",,,,"Maya");
md01ba = new CreateNode("Kowabunga!",,,,"Maya");
md01a_b.next = [md01aa, md01ba];

md02start = new CreateNode("But how are you like doing though? It's gotta be like a rough day.",,,,"Maya");
md01aa.next = md02start;
md01ba.next = md02start;

md02a_b = new CreateNode(["I'm ok, my dad gave me my mom's old necklace as a birthday gift…I've felt weird since wearing it.","I'm fine, bruh. Don't be so pushy."],,1,[0,1]);
md02start.next = md02a_b;

md02aa = new CreateNode("Woah, I've never seen a shell like that before. It's gnarly.",,,,"Maya");
md02ba = new CreateNode("I've never seen you like this before... Does it have something to do with that new necklace?",,,,"Maya");
md02a_b.next = [md02aa, md02ba];

md02aaa = new CreateNode("Rad right? It's making me feel really connected to the ocean.",,,,"Ross");
md02baa = new CreateNode("Nah, the only thing this necklace is doing is making me the dopest surfer on Tenderloin Beach.",,,,"Ross");
md02aa.next = md02aaa;
md02ba.next = md02baa;

md03start = new CreateNode("Oh I bet. Anyways, have you like seen the water today? The waves are like killer, more than usual. Something feels off.",,,,"Maya");
md02aaa.next = md03start;
md02baa.next = md03start;

md03a_b = new CreateNode(["Sucks to suck. Guess you're just afraid to hit these gargantuan waves, dawg.","Yeah, my dad's worried. But he's always been worried since what happened to mom. I'm still amped to hit the waves though!"],,1,[1,0]);
md03start.next = md03a_b;

md03aa = new CreateNode("Ross you're being like ridiculous. I'm going to like leave right now and let you figure this out, have a good birthday.",,,,"Maya");
md03ba = new CreateNode("Yeah just be like careful. Ever since this morning, I've heard like really weird noises along the beach, although it could just be my crystal lace agate hiding in my shoe. Have a great day, Ross!!",,,,"Maya");
md03a_b.next = [md03aa, md03ba];