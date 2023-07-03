/// @description Insert description here
// You can write your code in this editor

shooting = true;

if (global.game_state == game_states.PLAYING) {
	var bullet = instance_create_layer(x, y, "Instances", obj_bullet_enemy_blue);
	bullet.atk = atk; 
	bullet.direction = point_direction(x, y, obj_player.x, obj_player.y); 
	bullet.speed = bullet.spd;
}