global._highscore=0;
global._vol=1;
global._ego=0;
global._ending=0;

window_set_fullscreen(true);
global._wWidth = window_get_width();
global._wHeight = window_get_height();

audio_stop_all();
audio_play_sound(snd_main2,10,false);

currentPage = 0;

start_menu[0] = "Play";
start_menu[1] = "Settings";
start_menu[2] = "Credits";
start_menu[3] = "Quit";
space = 100;
start_menu_pos = 0;

roles = ["Producer", "Artists"," "," ","Sound Design","Soundtrack","Level Designer","Lead Programmer","Programmer","Writers"," "," ","Special Thanks"];
names = ["Eliza Bennet", "Eliza Bennet","Sunahra Tanvir", "Ouriya Boshi Levine", "Claire Syverson","Ouriya Boshi Levine","Claire Syverson","Ryan Rosenblatt","Claire Syverson","Sunahra Tanvir","Eliza Bennet"," ","Professor Joseph Lopocaro"]

_draw_credits_left = function(_element, _index) {
   draw_text(global._wWidth*1/6, global._wHeight*1/6+string_height(" ")*_index*1.5, string(_element));
}
_draw_credits_right = function(_element, _index) {
   draw_text(global._wWidth*5/6, global._wHeight*1/6+string_height(" ")*_index*1.5, string(_element));
}