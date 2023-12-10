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