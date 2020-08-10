// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function calculate_point(_list, _last_speed, _last_direction, _last_x, _last_y, _iteration) {
	var _this_trajectory = new Vector2(lengthdir_x(_last_speed, _last_direction), lengthdir_y(_last_speed, _last_direction))
	var _this_x = _last_x + _this_trajectory.x;
	var _this_y = _last_y + _this_trajectory.y;
	
	with (o_planet) {
		var _additional_speed = self.mass / sqr(point_distance(x, y, _last_x, _last_y));
		var _additional_direction = point_direction(_last_x, _last_y, x, y);
		var _additional_trajectory = new Vector2(lengthdir_x(_additional_speed, _additional_direction), lengthdir_y(_additional_speed, _additional_direction))
		_this_x += _additional_trajectory.x;
		_this_y += _additional_trajectory.y;
	}
	_this_speed = point_distance(_last_x, _last_y, _this_x, _this_y);
	_this_direction = point_direction(_last_x, _last_y, _this_x, _this_y);
	var _point = new Vector2(_this_x, _this_y);
	ds_list_add(_list, _point);
	if --_iteration > 0 {
		calculate_point(_list, _this_speed, _this_direction, _this_x, _this_y, _iteration);
	}
}

function Vector2(_x, _y) constructor {
	x = _x;
	y = _y;
}


// This is the Original Function

/* function calculate_point(_list, _last_speed, _last_direction, _last_x, _last_y, _iteration)
	{
// var _list = argument0;
// var _last_speed = argument1;
// var _last_direction = argument2;
// var _last_x = argument3;
// var _last_y = argument4;
// var _iteration = argument5;

var _this_speed = _last_speed;
var _this_direction = _last_direction;
var _this_x = _last_x;
var _this_y = _last_y;

with (o_planet) {
  _this_speed = mass / sqr(point_distance(x, y, _this_x, _this_y));
  _this_direction = point_direction(_this_x, _this_y, x, y);
  _this_x = _this_x + lengthdir_x(_this_speed, _this_direction);
  _this_y = _this_y + lengthdir_y(_this_speed, _this_direction);
  var _point = str(_this_x) + "," + str(_this_y)
  ds_list_add(_list, _point)
}

if _iteration != 0 {
  calculate_point(_list, _this_speed, _this_direction, _this_x, _this_y, --_iteration);
}

	} */