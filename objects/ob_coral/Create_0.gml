_key=instance_create_layer(x,y-80, "Keys", ob_interact_key);
_start_dialogue = false;
_interacted = false;
_textbox = noone;

/*1. A human? What? How?
	a. AAAAHHHHH! WHAT THE FUCK ARE YOU?!?!?!!? (1)
		a. Why I'm a mermaid, of course.
	b. A mermaid? What? How?
		a. We've been around for centuries, young man.
2. Now how did you get down here? And how are you still alive?
	a. One minute, I was shredding these gargantuan waves off of Tenderloin Beach. My hair was flowing and the waves were going WHAPOHOW. Next minute, I ran into a gnarly wall of rocks, thought I drowned, and then found you.
		a. Wow! I've never seen a human so close before!
			a. I've never been this close to a mermaid before. Wait... how am I so close to a mermaid?	
	b. I don't know! I don't want to be here! And I just want to go home!
		a. You should try to calm down.
			a. Calm down?! I'm drowning!! Wait...how am I not drowning?
3. Hmmm I have an idea but... it couldn't be...
	a. You can't just leave me hanging like that man.
		a. There is no way it could be true.
	b. Hurry on with it. (1)
		a. You won't even believe me, and I'm not even sure
4. Hold on...where did you get that necklace from?
	a. It was my mom's, she disappeared a long time ago.
		a. I knew it!
	b. It was a birthday present from my dad.
		a. Oh...where did he get it from?
			a. It used to be my mom's.
5. Is her name Ursiline?
	a. You're so creepy. Why do you know that? (1)
		a. Sorry. I just made a guess. I know someone with that name. You should go back to the surface.
	b. Yeah. It was. I really miss her.
		a. Yeah I bet you do. I miss my mom too.
			a. What happened to her?
				a. Um...there's a sea witch. She's dangerous. Speaking of which, you should go back up. It's not safe for you here.
6. I can swim you up.
	a. Why do you want me to leave so badly? And what do you know about my mom that you're not telling me?
		a. I can't tell you, you just need to leave...right now
			a. Why did you mention the necklace? How is it making me breathe underwater? Do I have gills? Am I a fish? Are you a fish?
	b. I don't need your help. I'm the dopest surfer in Tenderloin Beach. Tell me what you know about my mom. (1)
		a. You really need to leave. Let's go.
			a. Not yet. What do you know about this necklace?
7. Fine! I'll tell you already. I know your mother. Well, the whole ocean knows your mother.
	a. What do you mean?
	b. Why would the whole ocean know my mom?
8. Your mother, Ursuline, rules the seas. She just showed up twelve years ago and took control. We tried to put up a fight but it was useless. She was just so powerful. My parents perished in the Battle of Loin Reef in the Great War of The Sirloin Sea.
	a. So you're saying my mother is a sea witch who has killed people and now rules these gnarly waves?
		a. Yes, that is correct. That necklace is hers and has her powers within it, making you able to breathe underwater. She wants you to come to her and you need to leave.
	b. I don't believe you. My mom was a dope lady. She would never.
		a. Well, you need to. That necklace you're wearing is charmed with her powers. She's been trying to tempt you to the sea. You need to leave.
9. I hear her coming. I'm sorry but I have to go. Don't forget that your mom's necklace has great power within it. Be careful and stay true to yourself.*/

//CreateNode(text, next (node | [node,node...]), dtype (1 = player, 0 = tanner), mood modifer (0 | [int,int...], name))

// Coral's dialogue tree
cd01start = new CreateNode("A human? What? How?",,,,"Coral");
cd01a_b = new CreateNode(["AAAAHHHHH! WHAT THE FUCK ARE YOU?!?!?!!?", "A mermaid? What? How?"],,1, [1, 0]);
cd01start.next = cd01a_b;
cd01aa = new CreateNode("Why I'm a mermaid, of course.",,,,"Coral");
cd01ba = new CreateNode("We've been around for centuries, young man.",,,,"Coral");
cd01a_b.next = [cd01aa, cd01ba];

cd02start = new CreateNode("Now how did you get down here? And how are you still alive?",,,,"Coral");
cd01ba.next = cd02start;
cd01aa.next = cd02start;
cd02a_b = new CreateNode(["One minute, I was shredding these gargantuan waves off of Tenderloin Beach. My hair was flowing and the waves were going WHAPOHOW. Next minute, I ran into a gnarly wall of rocks, thought I drowned, and then found you.", "I don't know! I don't want to be here! And I just want to go home!"],,1);
cd02start.next = cd02a_b;
cd02aa = new CreateNode("Wow! I've never seen a human so close before!",,,,"Coral");
cd02ba = new CreateNode("You should try to calm down.",,,,"Coral");
cd02baa = new CreateNode("Calm down?! I'm drowning!! Wait...how am I not drowning?");
cd02aaa = new CreateNode("Wait... how am I so close to a mermaid?");
cd02aa.next = cd02aaa;
cd02ba.next = cd02baa;
cd02a_b.next = [cd02aa, cd02ba];


cd03start = new CreateNode("Hmmm, I have an idea but... it couldn't be...",,,,"Coral");
cd02aaa.next = cd03start;
cd02baa.next = cd03start;
cd03a_b = new CreateNode(["You can't just leave me hanging like that, man.", "Hurry on with it."],, 1, [0, 1]);
cd03start.next = cd03a_b;
cd03aa = new CreateNode("There is no way it could be true.",,,,"Coral");
cd03ba = new CreateNode("You won't even believe me, and I'm not even sure.",,,,"Coral");
cd03a_b.next = [cd03aa, cd03ba];

cd04start = new CreateNode("Hold on...where did you get that necklace from?",,,,"Coral");
cd03ba.next = cd04start;
cd03aa.next = cd04start;
cd04a_b = new CreateNode(["It was my mom's, she disappeared a long time ago.", "It was a birthday present from my dad."],, 1);
cd04start.next = cd04a_b;
cd04aa = new CreateNode("I knew it!",,,,"Coral");
cd04ba = new CreateNode("Oh...where did he get it from?",,,,"Coral");
cd04baa = new CreateNode("It used to be my mom's.");
cd04a_b.next = [cd04aa, cd04ba];
cd04ba.next = cd04baa;

cd05start = new CreateNode("Is her name Ursiline?",,,,"Coral");
cd04baa.next = cd05start;
cd04aa.next = cd05start;
cd05a_b = new CreateNode(["You're so creepy. Why do you know that?", "Yeah. It was. I really miss her."],, 1, [1, 0]);
cd05start.next = cd05a_b;
cd05aa = new CreateNode("Sorry. I just made a guess. I know someone with that name. You should go back to the surface.",,,,"Coral");
cd05ba = new CreateNode("Yeah, I bet you do. I miss my mom too.",,,,"Coral");
cd05a_b.next = [cd05aa, cd05ba];
cd05baa = new CreateNode("What happened to her?");
cd05ba.next = cd05baa;
cd05baaa = new CreateNode("Um...there's a sea witch. She's dangerous. Speaking of which, you should go back up. It's not safe for you here.",,,,"Coral");
cd05baa.next = cd05baaa;

cd06start = new CreateNode("I can swim you up.",,,,"Coral");
cd05aa.next = cd06start;
cd05baaa.next = cd06start;
cd06a_b = new CreateNode(["Why do you want me to leave so badly? And what do you know about my mom that you're not telling me?", "I don't need your help. I'm the dopest surfer in Tenderloin Beach. Tell me what you know about my mom."],, 1, [0, 1]);
cd06start.next = cd06a_b;
cd06aa = new CreateNode("I can't tell you, you just need to leave... right now.",,,,"Coral");
cd06ba = new CreateNode("You really need to leave. Let's go.",,,,"Coral");
cd06a_b.next = [cd06aa, cd06ba];
cd06aaa = new CreateNode("Why did you mention the necklace? How is it making me breathe underwater? Do I have gills? Am I a fish? Are you a fish?");
cd06baa = new CreateNode("Not yet. What do you know about this necklace?");
cd06ba.next = cd06baa;
cd06aa.next = cd06aaa;

cd07start = new CreateNode("Fine! I'll tell you already. I know your mother. Well, the whole ocean knows your mother.",,,,"Coral");
cd06baa.next = cd07start;
cd06aaa.next = cd07start;
cd07a_b = new CreateNode(["What do you mean?", "Why would the whole ocean know my mom?"],, 1, [0, 1]);
cd07start.next = cd07a_b;

cd08start = new CreateNode("Your mother, Ursuline, rules the seas. She just showed up twelve years ago and took control. We tried to put up a fight but it was useless. She was just so powerful. My parents perished in the Battle of Loin Reef in the Great War of The Sirloin Sea.",,,,"Coral");
cd07a_b.next = [cd08start, cd08start];
cd08a_b = new CreateNode(["So you're saying my mother is a sea witch who has killed people and now rules these gnarly waves?", "I don't believe you. My mom was a dope lady. She would never."],, 1);
cd08start.next = cd08a_b;
cd08aa = new CreateNode("Yes, that is correct. That necklace is hers and has her powers within it, making you able to breathe underwater. She wants you to come to her and you need to leave.",,,,"Coral");
cd08ba = new CreateNode("Well, you need to. That necklace you're wearing is charmed with her powers. She's been trying to tempt you to the sea. You need to leave.",,,,"Coral");
cd08a_b.next = [cd08aa, cd08ba];
cd09start = new CreateNode("I hear her coming. I'm sorry but I have to go. Don't forget that your mom's necklace has great power within it. Be careful and stay true to yourself.",,,,"Coral");
cd08aa.next = cd09start;
cd08ba.next = cd09start;