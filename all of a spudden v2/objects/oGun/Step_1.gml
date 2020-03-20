/// @description Insert description here
//keep with player
x = oPlayer.x+10;
y = oPlayer.y;

//follow mouse
image_angle = point_direction(x,y,mouse_x,mouse_y)

firingdelay = firingdelay - 1;
recoil = max(0,recoil - 1);
if (mouse_check_button(mb_left)) and (firingdelay < 0)
{
firingdelay = 5;
with(oPlayer)
{
direction = point_direction(x, y, mouse_x, mouse_y);
y -= lengthdir_x(4,direction);
x -= lengthdir_y(4,direction);
}
with (instance_create_layer(x,y,"Bullet",oBullet))
	{ 
	speed = 25;
	direction = other.image_angle; //+ random_range(-3,3)
	image_angle = direction; 
	}
}

