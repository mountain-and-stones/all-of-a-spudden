/// @description Core Player Logic

//player inputs
key_left = (keyboard_check(ord("A")));
key_right = (keyboard_check(ord("D")));

key_jump = keyboard_check_pressed(vk_space);

//calulate movment
var _move = key_right - key_left;

hsp =_move * walksp;

