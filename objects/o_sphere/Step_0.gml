/// @description Insert description here
// You can write your code in this editor

angle += 0.2
new_x = lengthdir_x(distance, angle)
new_y = lengthdir_y(distance, angle) * (1 - orbit)
cosine = cos(degtorad(offset))
sine = sin(degtorad(offset))
x = center_x + new_x * cosine - new_y * sine
y = center_y + new_y * cosine + new_x * sine