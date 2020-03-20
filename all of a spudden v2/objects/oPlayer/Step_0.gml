/// @description Core Player Logic

//player inputs
key_left = (keyboard_check(ord("A")));
key_right = (keyboard_check(ord("D")));

key_jump = keyboard_check_pressed(vk_space);
//calulate movment
var _move = key_right - key_left;

hsp =_move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,oGround)) and (key_jump)
{
vsp = -jumpsp
}
//Horizontal Collisions
if (place_meeting(x+hsp,y,oGround))
{
		while (!place_meeting(x+sign(hsp),y,oGround))
		{
		x = x + sign(hsp);
		}
		hsp = 0;
}
x = x + hsp;

//Vertical Collisions
if (place_meeting(x,y+vsp,oGround))
{
		while (!place_meeting(x,y+sign(vsp),oGround))
		{
		y = y + sign(vsp);
		}
		vsp = 0;
}
y = y + vsp;

