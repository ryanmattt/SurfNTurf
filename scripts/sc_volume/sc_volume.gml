// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setVolume(inVol){
	
	 global._vol=1;
var num = audio_get_listener_count();

for(var i = 0; i < num; ++i;) {
	    var info = audio_get_listener_info(i);
		var ind = info[? "index"];
		audio_set_master_gain(info[? "index"],  global._vol*inVol);
    
		ds_map_destroy(info);
	}

}

function resetVolume(){
	
var num = audio_get_listener_count();

	for(var i = 0; i < num; ++i;) {
	    var info = audio_get_listener_info(i);
		var ind = info[? "index"];
		audio_set_master_gain(info[? "index"], global._vol);
    
		ds_map_destroy(info);
	}

}