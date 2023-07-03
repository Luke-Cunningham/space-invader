/// @description Insert description here
// You can write your code in this editor

if (global.game_state == game_states.PLAYING) {
	global.game_state = game_states.PAUSED;
} else if (global.game_state == game_states.PAUSED) {
	global.game_state = game_states.PLAYING;
}

