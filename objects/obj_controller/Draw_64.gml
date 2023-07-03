/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_score);
draw_set_color(c_white);
draw_text(30, 30, "SCORE: " + string(score));

switch (global.game_state) {
	case game_states.PAUSED:
		draw_text(900, 30, "PAUSED");
		break;
	case game_states.GAME_OVER:
		audio_play_sound(snd_gameover, 10, false);
		draw_text(650, 400, "Game Over");
		alarm[2] = room_speed * 1;
		break;
}

if (instance_exists(obj_player)) {
	var xhp = 30;
	repeat (obj_player.hp) {
		draw_sprite(spr_life, 0, xhp, 750);
		xhp += 30;
	}
}

