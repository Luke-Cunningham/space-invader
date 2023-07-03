/// @description Insert description here
// You can write your code in this editor

event_inherited();

if (x <= start_x or x >= end_x) {
	dir *= -1;
}

if (global.game_state == game_states.PLAYING) {
	x += spd * dir;
}
