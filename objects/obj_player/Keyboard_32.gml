/// @description Insert description here
// You can write your code in this editor

if (shooting and global.game_state == game_states.PLAYING) {
	if (room == rm_level_1) {
		var bullet = instance_create_layer(x, y, "Instances", obj_bullet_player);
	} else {
		if (blue) {
			var bullet = instance_create_layer(x, y, "Instances", obj_bullet_player_blue);
		} else {
			var bullet = instance_create_layer(x, y, "Instances", obj_bullet_player_red);
		}
	}
	
	bullet.atk = atk; 
	bullet.direction = point_direction(x, y, x, y-1);
	bullet.speed = bullet.spd; 
	shooting = false;
	alarm[1] = room_speed * .3;
	audio_play_sound(snd_shoot, 1, false);
}
