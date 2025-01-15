

var move = -keyboard_check(vk_left) +keyboard_check(vk_right)

hsp =move*spd

if place_meeting(x+hsp,y,obj_chao)
{
	while !place_meeting(x+sign(hsp),y,obj_chao)
	{
		x+=sign(hsp)
	}
	hsp = 0
}
x+=hsp

if place_meeting(x,y+vsp,obj_chao)
{
	
	while !place_meeting(x,y+sign(vsp),obj_chao)

	{
		y+=sign(vsp)
	
	}
	
	vsp = 0
}

y+=vsp


if place_meeting(x,y+1,obj_chao)
{
	vsp=jpd
}
else
{
vsp+=grav 
}

