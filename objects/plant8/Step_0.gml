sh-=1
if(sh<=0 && collision_line(x, y, room_width, y, basiczombie, true, true))
{
audio_play_sound(pop,1000,false)
inst=instance_create(x,y+6,bullet4)
inst.hspeed=random_range(-0.1,10)
inst=instance_create(x,y+6,bullet4)
inst.hspeed=random_range(-0.1,10)
inst.vspeed=random_range(-10,10)
inst=instance_create(x,y+6,bullet4)
inst.hspeed=random_range(-0.1,10)
inst.vspeed=random_range(-10,10)
sh=reload
}

///kill
if(hp<=0)
{
instance_destroy()
}

if(pfactive)
{
	pfi-=1
	if(pfi<=0)
	{
		inst=instance_create(random_range(0,room_width),random_range(160,160+64+256),tiletypestink)
		pfi=pfr
	}
}