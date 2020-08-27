/// @description Insert description here
// You can write your code in this editor

draw_self()



draw_sprite_ext(s_player, 0, draw_x, draw_y, 5, 5, o_player.image_angle, c_white, 1)

if trajectory_support == true
	{
		var _list = ds_list_create();
		calculate_point(_list, speed, direction, x, y, 250);
		for (var _i=0; _i<ds_list_size(_list); _i++) {
			var _position = _list[| _i];
			draw_circle(_position.x, _position.y, 2, false);
		}
		ds_list_destroy(_list);
	}
	
	
draw_set_color(c_white)
draw_text(32, 32, "FPS = " + string(fps))