/// @description Insert description here
// You can write your code in this editor

if (global.game_state == game_states.PLAYING) {
	speed = spd;
} else if (global.game_state == game_states.PAUSED or global.game_state == game_states.GAME_OVER) {
	speed = 0;
}

if (room == rm_level_1) {
	if (y < 0 || y > room_height) {
		instance_destroy();
	}
	
} else {
	var x1 = camera_get_view_x(obj_camera.cam); 
	var x2 = x1 + camera_get_view_width(obj_camera.cam);
	var y1 = camera_get_view_y(obj_camera.cam); 
	var y2 = y1 + camera_get_view_height(obj_camera.cam); 
	
	if (!point_in_rectangle(x, y, x1, y1, x2, y2)) {
		instance_destroy();
	}
}