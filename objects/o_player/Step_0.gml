/// @description Movement Controls
// You can write your code in this editor

// ORBITAL CONTROLS
if keyboard_check(vk_right)
	{
		hspeed += 0.02	
	}
if keyboard_check(vk_left)
	{
		hspeed -= 0.02	
	}
if keyboard_check(vk_down)
	{
		vspeed += 0.02	
	}
if keyboard_check(vk_up)
	{
		vspeed -= 0.02	
	}

var g, gdir

with (o_planet)
	{
	// This code assumes that every planet has a "mass" variable
	g = mass / sqr(point_distance(x, y, o_player.x, o_player.y))
	gdir = point_direction(o_player.x, o_player.y, x, y)		
	with(o_player)
		{
		motion_add(gdir, g)	
		}
	}
	
image_angle = direction



