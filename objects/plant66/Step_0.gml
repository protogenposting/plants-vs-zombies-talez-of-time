/// @description kill
i-=1
sh-=1
if(hp<=0)
{
instance_destroy()
}

if(pfactive)
{
	i=10
	pfi-=1
	if(pfi<=0)
	{
		hp*=2
		pfi=pfr
	}
}
if(hp>2000)
{
	sprite_index=wallnut1
}
if(hp<=2000)
{
	sprite_index=wallnut2
}
if(hp<=1000)
{
	sprite_index=wallnut3
}
i-=1
if(rolling)
{
	image_angle-=25
	hsp=1
	col=instance_place(x,y,basiczombie)
	if(col&&i<=0)
	{
		col.hp-=4
		vsp=choose(-1,1)
		i=40
	}
}
y+=vsp
x+=hsp