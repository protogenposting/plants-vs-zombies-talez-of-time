with(basiczombie)
{
if(place_meeting(x,y,other))
{
hp-=0.01
if(other.powered)
{
spd/=2
}
}
}

///powering
if(place_meeting(x,y,tiletypepower))
{
powered=true
sprite_index=poweredspikebean
}
else
{
powered=false
sprite_index=spikebean
}

if(place_meeting(x,y,basiczombie))
{
stepped=true
}
else
{
stepped=false
image_index=0
}

if(pfactive)
{
	pfi-=1
	if(pfi<=0)
	{
		inst=instance_find(basiczombie,irandom(instance_number(basiczombie)))
		pfi=pfr
	}
}