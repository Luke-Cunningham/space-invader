/// @description Insert description here
// You can write your code in this editor

if (hp <= 0) {
	global.game_state = game_states.GAME_OVER;
	instance_destroy();
}

