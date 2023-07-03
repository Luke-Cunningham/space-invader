/// @description Insert description here
// You can write your code in this editor

if (global.game_state == game_states.PLAYING and room == rm_level_2) {
	if (blue) {
		sprite_index = spr_player_red;
		blue = false;
	} else {
		sprite_index = spr_player_blue;
		blue = true;
	}
}
