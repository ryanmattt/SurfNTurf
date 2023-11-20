_key=instance_create_layer(x,y-80, "Keys", ob_interact_key);
_start_dialogue = false;
_interacted = false;
_textbox = noone;



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
04. I didn't know you were a surfer, Ross.
    a. How the fuck could you not remember, Mom? (2)
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
            a. Then why don't you tell me why I'm down here today of all days?
                a. I don't know... That's why I'm asking...
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
ud08start = new CreateNode("I am your mother and you will join me down here to rule the ocean!",,,,"Ursiline");
ud07a_b.next = [ud08start, ud07ba];
ud07ba.next = ud07baa;
ud07baa.next = ud08start;

ud08a_b = new CreateNode(["Destroy the necklace.","Use the necklace to destroy your mom."],,1,,,#FF3333);
ud08start.next = ud08a_b;

udnecklace1 = new CreateNode("I will not join you, mom. I don't want anything to do with this. I'm taking this necklace off and leaving.")
uddestroy1 = new CreateNode("Mom, you're crazy. Someone needs to stop you. I need to stop you.")
ud08a_b.next = [udnecklace1, uddestroy1];

udnecklace2 = new CreateNode("No, you will not. I won't let you.",,,,"Ursiline");
udnecklace1.next=udnecklace2;
udnecklace3 = new CreateNode("Yes, I will. I wish dad never gave me this necklace. You know what-",,,,,,,1);
udnecklace2.next = udnecklace3;
udnecklace4 = new CreateNode("Ross, what have you done? Do you know how much I've given up for that?",,,,"Ursiline");
udnecklace3.next = udnecklace4;
udnecklace5 = new CreateNode("Yeah, you gave up on me. I'm going home.");
udnecklace4.next = udnecklace5;

uddestroy2 = new CreateNode("Mom, you're crazy. Someone needs to stop you. I need to stop you.");
uddestroy1.next = uddestroy2;
uddestroy3 = new CreateNode("How are you going to do that?",,,,"Ursiline");
uddestroy2.next = uddestroy3;
uddestroy4 = new CreateNode("Your powers are in the necklace, right? I can do something with that!");
uddestroy3.next = uddestroy4;
uddestroy5 = new CreateNode("I'd like to see you try.",,,,"Ursiline");
uddestroy4.next = uddestroy5;
uddestroy6 = new CreateNode("See, mother, you're neglecting to acknowledge that I am the dopest surfer on Tenderloin Beach and underestimate my radical abilities.");
uddestroy5.next = uddestroy6;
uddestroy7 = new CreateNode("You're ridiculous and weak, and you don't have the stomach to destroy your sweet mother.",,,,"Ursiline");
uddestroy6.next = uddestroy7;
uddestroy8 = new CreateNode("I'm sick of you, mom! You're horrible, pathetic, and a true sea bitch. I will never let you rule the ocean again.");
uddestroy7.next = uddestroy8;
uddestroy9 = new CreateNode("Yeah? What are you gonna do?",,,,"Ursiline");
uddestroy8.next = uddestroy9;
uddestroy10 = new CreateNode("I'm gonna use this necklace. I've felt so powerful since I've gotten it. I can destroy you. Forever.");
uddestroy9.next = uddestroy10;
uddestroy11 = new CreateNode("Go ahead.",,,,"Ursiline");
uddestroy10.next = uddestroy11;
uddestroy12 = new CreateNode("I will use the necklace to kill you. RIGHT HERE! RIGHT NOW!");
uddestroy11.next = uddestroy12;
uddestroy13 = new CreateNode("Oh Ross, you sound just like me…and I like to hear it.");
uddestroy12.next = uddestroy13;



/*
Destroy the Necklace
Ross: I will not join you, mom. I don't want anything to do with this. I'm taking this necklace off and leaving.
Ursiline: No, you will not. I won't let you.
Ross: Yes, I will. I wish dad never gave me this necklace. You know what-*screen flash + crash sound effect*
Ursiline: Ross, what have you done? Do you know how much I've given up for that?
Ross: Yeah, you gave up on me. I'm going home.
*close ups end and you're prompted to swim up*
*Ursiline's sprite drowns*
*Happy Birthday Ending*

Destroy your Mom
Ross: Mom, you're crazy. Someone needs to stop you. I need to stop you.
Ursiline: How are you going to do that?
Ross: Your powers are in the necklace, right? I can do something with that!
Ursiline: I'd like to see you try.
Ross: See, mother, you're neglecting to acknowledge that I am the dopest surfer on Tenderloin Beach and underestimate my radical abilities. 
Ursiline: You're ridiculous and weak, and you don't have the stomach to destroy your sweet mother. 
Ross: I'm sick of you, mom! You're horrible, pathetic, and a true sea bitch. I will never let you rule the ocean again
Ursiline: Yeah? What are you gonna do?
Ross: I'm gonna use this necklace. I've felt so powerful since I've gotten it. I can destroy you. Forever
Ursiline: Go ahead.
Ross: I will use the necklace to kill you. RIGHT HERE! RIGHT NOW!
Ursiline: Oh Ross, you sound just like me…and I like to hear it.

*/