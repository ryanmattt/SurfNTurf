_key=instance_create_layer(x,y-150, "Keys", ob_interact_key);
_start_dialogue = false;
_interacted = false;
_textbox = noone;
_zoom = true;
_zoom2 = false;

frequency = 0.1;
amplitude = 20;
timer = 0;



image_xscale = 5;
image_yscale = 5;
initial_x = room_width/2;



ud01start = new CreateNode("It's a family reunion! I haven't seen you in twelve years, Ross. I recognized that necklace immediately.",,,,"Ursiline");
ud01a_b = new CreateNode(["Mom! I missed you so much!","How are you alive? I thought you drowned."],,1);
ud01start.next = ud01a_b;

ud01aa = new CreateNode("I missed you too, my son.",,,,"Ursiline");
ud01ba = new CreateNode("It's a long story, my son. I have missed you so much.",,,,"Ursiline");
ud01a_b.next = [ud01aa, ud01ba];


ud02start = new CreateNode("I've been wanting to see you for so long and waiting for your ignorant father to find the necklace and give it to you.",,,,"Ursiline");
ud01aa.next = ud02start;
ud01ba.next = ud02start;

ud02a_b = new CreateNode(["That's a little harsh, Mom. Dad's been taking care of me while you've been doing magic tricks underwater.","Dad's a straight-up idiot and told me to be careful today. As if I'm not a god of the ocean."],,1,[0,2]);
ud02start.next = ud02a_b;

ud02ba = new CreateNode("Like mother, like son. I have been waiting for you for so long.",,,,"Ursiline");
ud02aa = new CreateNode("At least he took good enough care of you to finally bring you to me.",,,,"Ursiline");
ud02a_b.next = [ud02aa, ud02ba];

ud02aaa = new CreateNode("What does that even mean?");
ud02baa = new CreateNode("Why?");
ud02aa.next = ud02aaa;
ud02ba.next = ud02baa;

ud03start = new CreateNode("The necklace that you're wearing was mine, and it harnesses my powers within it. One day, I was hoping your father would give it to you and that you would find me down here.",,,,"Ursiline");
ud02aaa.next = ud03start;
ud02baa.next = ud03start;

ud03a_b = new CreateNode(["You just left me with that mustachioed idiot?! Dad fed me Wheat Thins every day. Breakfast. Lunch. Dinner. Snack time.","Mom, why did you never reach out? Why'd you never try to find me? I thought you were dead! Do you know how hard it is to grow up without a mom?"],,1,[2,0]);
ud03start.next = ud03a_b;

ud03aa = new CreateNode("Oh. That's my fault. I left that in my will. I'd kill to have Wheat Thins down here.",,,,"Ursiline");
ud03ba = new CreateNode("I had to make sacrifices, Ross. All for the power to rule the seas.",,,,"Ursiline");
ud03a_b.next = [ud03aa, ud03ba];

ud03aaa = new CreateNode("I never got enough protein in, Mom. I had to work my way up to be the dopest surfer on Tenderloin Beach.");
ud03baa = new CreateNode("What about the power to raise me? To teach me how to be an even doper surfer on Tenderloin Beach.");
ud03aa.next = ud03aaa;
ud03ba.next = ud03baa;

ud04start = new CreateNode("I didn't know you were a surfer, Ross.",,,,"Ursiline");
ud03aaa.next = ud04start;
ud03baa.next = ud04start;

ud04a_b = new CreateNode(["How the fuck could you not remember, Mom?","Yeah. That's my whole thing mom. I surf. I turf. I shred waves and eat steak. The last time I saw you, you took me to the steak shack on the beach and then taught me how to surf."],,1,[2,0]);
ud04start.next = ud04a_b;

ud04aa = new CreateNode("It's been a long time and I've had a lot to deal with down here. Fighting evil mermaids, battling drug sharks... you wouldn't get it.",,,,"Ursiline");
ud04ba = new CreateNode("Ah! Yes, of course.");
ud04a_b.next=[ud04aa,ud04ba];


ud04aaa = new CreateNode("I want to bond with you mom, and you just don't care about me.");
ud04baa = new CreateNode("I don't think you actually remember that. What was on the little surfboard you bought me?");
ud04aa.next = ud04aaa;
ud04ba.next = ud04baa;

ud04baaa = new CreateNode("It was a Krabby Patty, mom! You clearly don't even care about me.");
ud04baa.next = ud04baaa;

ud05start = new CreateNode("Of course I care! I've been waiting for you all this time. I've taken over the whole ocean for you!",,,,"Ursiline");
ud04aaa.next = ud05start;
ud04baaa.next = ud05start;

ud05a_b = new CreateNode(["I never asked you to! I didn't want any of this! What are you? A sea witch? Nah... a sea bitch.","While I appreciate the sentiment, I just miss you and want you to come home. All I've ever wanted was a mom."],,1,[2,0]);
ud05start.next = ud05a_b;

ud05aa = new CreateNode("Don't you get snippy with me Ross... we're in this together. Don't forget the power I have down here.",,,,"Ursiline");
ud05ba = new CreateNode("You have had a mom! A mom who wants to give you the whole ocean! I was gone because I love you.",,,,"Ursiline");
ud05a_b.next = [ud05aa, ud05ba];

ud06start = new CreateNode("I do have a question though - why did you pick today of all days to come and visit me down here?",,,,"Ursiline");
ud05aa.next = ud06start;
ud05ba.next = ud06start;

ud06a_b = new CreateNode(["You're joking, right? This is ridiculous! How bad of a mother are you?","Do you know what the date is?"],,1,[2,0]);

ud06start.next = ud06a_b;

ud06aa = new CreateNode("Ross, stop it with this nonsense.",,,,"Ursiline");
ud06ba = new CreateNode("We have calendars down here, Ross. Of course, I do.",,,,"Ursiline");
ud06a_b.next = [ud06aa, ud06ba];

ud06aaa = new CreateNode("NO MOM, YOU STOP! It is my 18th birthday and you FORGOT.");
ud06baa = new CreateNode("Then why don't you tell me why I'm down here today of all days?");
ud06aa.next = ud06aaa;
ud06ba.next = ud06baa;

ud06baaa = new CreateNode("I don't know... That's why I'm asking...",,,,"Ursiline");
ud06baa.next = ud06baaa;

ud06baaaa = new CreateNode("What's wrong with you, mom? It's my 18th birthday!!");
ud06baaa.next = ud06baaaa;

ud07start = new CreateNode("Ahhh yes! I'm so glad I found you on your 18th birthday. This means that you can make a choice. Join me in taking over the ocean, Ross!",,,,"Ursiline");
ud06aaa.next = ud07start;
ud06baaaa.next = ud07start;

ud07a_b = new CreateNode(["No, you're crazy, mom. I'm so glad dad raised me and not you. You're not my mother.","Absolutely not, I am swimming back up. I should've listened to Coral after all."],,1,[2,0]);
ud07start.next = ud07a_b;

ud07ba = new CreateNode("Oh Coral, her parents were a part of the revolt against me. It's a shame they had to die.",,,,"Ursiline");

ud07baa = new CreateNode("You're awful, disgusting, and a murderer. You're not my mother.");
ud08start = new CreateNode("I am your mother and you will join me down here to rule the ocean!",,,,"Ursiline",,true);
ud07a_b.next = [ud08start, ud07ba];
ud07ba.next = ud07baa;
ud07baa.next = ud08start;
