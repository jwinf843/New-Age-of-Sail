/// @description Insert description here
// You can write your code in this editor

draw_self()

// This gets the position of the center of the screen
draw_x = o_view.x + 500
draw_y = o_view.y + 300 

draw_sprite_ext(s_player, 0, draw_x, draw_y, 5, 5, o_player.image_angle, c_white, 1)