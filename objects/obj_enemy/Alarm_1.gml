/// @description Insert description here
// You can write your code in this editor

shooting = true;

if (global.game_state == game_states.PLAYING) {
	if (room == rm_level_1) {
		var bullet = instance_create_layer(x, y, "Instances", obj_bullet_enemy);
		bullet.atk = atk; 
		bullet.direction = point_direction(x, y, x, y + 1); 
		bullet.speed = spd;
	
	} else {
		if (blue) {
			var bullet = instance_create_layer(x, y, "Instances", obj_bullet_enemy_blue);
		} else {
			var bullet = instance_create_layer(x, y, "Instances", obj_bullet_enemy_red); 
		}
		bullet.atk = atk; 
		bullet.direction = point_direction(x, y, x, y + 1); 
		bullet.speed = spd;
	}
}