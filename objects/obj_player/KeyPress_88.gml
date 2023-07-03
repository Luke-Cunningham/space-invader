/// @description Insert description here
// You can write your code in this editor

if (room = rm_level_2 and global.game_state = game_states.PLAYING) {
	instance_create_layer(x, y, "Instances", obj_bomb);
}