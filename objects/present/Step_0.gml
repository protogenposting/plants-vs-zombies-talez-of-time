/// @description Insert description here
// You can write your code in this editor
i-=1
if(y<endposy&&down)
{
	y+=4
}
if(y>=endposy&&!done)
{
	inst=instance_create(x,y,star)
	inst.hspeed=5
	inst=instance_create(x,y,star)
	inst.hspeed=-5
	inst=instance_create(x,y,star)
	inst.vspeed=5
	inst=instance_create(x,y,star)
	inst.vspeed=-5
	done=true
	sprite_index=giftplop
	i=5*(room_speed/sprite_get_speed(sprite_index))
}
if(done&&i<0)
{
	sprite_index=gift
}
if(!down)
{
	y-=4
}
