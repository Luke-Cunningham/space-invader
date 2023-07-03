/// @description Insert description here
// You can write your code in this editor

event_inherited();

if (global.game_state == game_states.PLAYING) {
	path_speed = spd;
} else {
	path_speed = 0;	
}