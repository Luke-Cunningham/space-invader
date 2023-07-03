/// @description Insert description here
// You can write your code in this editor

if (global.game_state != game_states.PLAYING) {
	speed = 0;
	if (instance_exists(obj_player)) {
		obj_player.speed = 0;
	}
}

if (instance_exists(obj_player) and global.game_state == game_states.PLAYING) {
	speed = spd;
	obj_player.speed = spd;
	
	var y1 = camera_get_view_y(cam);
	var y2 = camera_get_view_height(cam);
	
	if (obj_player.y - obj_player.sprite_height/2 <= y1) {
		obj_player.y = y1 + obj_player.sprite_height/2;	
	}
	
	if (obj_player.y + obj_player.sprite_height/2 >= y1 + y2) {
		obj_player.y = y1 + y2 - obj_player.sprite_height/2;	
	}
}
