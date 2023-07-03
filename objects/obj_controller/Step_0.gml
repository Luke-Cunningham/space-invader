/// @description Insert description here
// You can write your code in this editor

if (room == rm_level_1) {
	
	if (!instance_exists(obj_enemy)) {
		global.game_state = game_states.GAME_OVER;
	}
	
	for (var i = 0; i < instance_number(obj_enemy); ++i;) {
		if (instance_exists(obj_player)) {
			if (instance_find(obj_enemy, i).y >= instance_find(obj_player, 0).y) {
				global.game_state = game_states.GAME_OVER;
			}
		}
	}
	
	if (global.game_state == game_states.GAME_OVER and instance_exists(obj_player) and !instance_exists(obj_enemy)) {
		if (room_exists(rm_level_2)) {
			room_goto(rm_level_2);
		}
	}
}

if (!instance_exists(obj_enemy) or !instance_exists(obj_player)) {
	global.game_state = game_states.GAME_OVER;
}
