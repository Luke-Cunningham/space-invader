/// @description Insert description here
// You can write your code in this editor


if (hp <= 0) {
	instance_destroy();
	score += 10;
}

if (room == rm_level_1 and global.game_state == game_states.PLAYING and shooting) {
	randomize();
	alarm[1] = room_speed * random_range(1,12);
	shooting = false;
}

if (room == rm_level_2 and global.game_state == game_states.PLAYING and shooting) {
	var x1 = camera_get_view_x(obj_camera.cam); 
	var x2 = x1 + camera_get_view_width(obj_camera.cam);
	var y1 = camera_get_view_y(obj_camera.cam); 
	var y2 = y1 + camera_get_view_height(obj_camera.cam); 
	
	if (y > y2) {
		instance_destroy();
	}

	if (point_in_rectangle(x, y, x1, y1, x2, y2)) {
		randomize();
		alarm[1] = room_speed * random_range(1,12);
		shooting = false;
	}
}
