if(killed>500)
{
killed-=1
}
repeat(killed/10)
{
zomb=choose(basiczombie,coneheadzombie,bucketheadzombie,tombraiser,gardener)
if(room==endless2)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie,octozomb)
}
if(room==endless3)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie,octozomb)
}
if(room==endless4)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie,tombraiser,gardener)
}
if(room==endless5)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie,tombraiser,gardener,redcup)
}
if(room==endless6)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie,tombraiser,gardener)
}
if(room==level1)
{
	zomb=choose(basiczombie)
}
if(room==level2)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie)
}
if(room==level3)
{
	zomb=choose(basiczombie,coneheadzombie)
}
if(room==level4)
{
	zomb=choose(basiczombie,coneheadzombie)
}
if(room==level5)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie)
}
if(room==level6)
{
	zomb=choose(basiczombie,coneheadzombie,octozomb,bucketheadzombie)
}
if(room==level7)
{
	zomb=choose(basiczombie,coneheadzombie,octozomb,bucketheadzombie)
}
if(room==level8)
{
	zomb=choose(basiczombie,coneheadzombie,octozomb,octozomb,octozomb,bucketheadzombie)
}
if(room==level9)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie)
}
if(room==level10)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie)
}
if(room==level11)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie)
}
if(room==level12)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie)
}
if(room==level13)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie)
}
if(room==level14)
{
	zomb=choose(basiczombie,coneheadzombie,gardener)
}
if(room==level15)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie,octozomb,grave,tombraiser)
}
if(room==level16)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie,octozomb,grave,tombraiser)
}
if(room==level17)
{
	zomb=choose(basiczombie,coneheadzombie,bucketheadzombie,octozomb,grave,tombraiser)
}
if(room==level18)
{
	zomb=choose(basiczombie,basiczombie,coneheadzombie,gardener)
}
if(room==level19)
{
	zomb=choose(basiczombie,basiczombie,coneheadzombie,gardener)
}
if(room==level20)
{
	zomb=choose(basiczombie,basiczombie,coneheadzombie,gardener,tombraiser)
}
if(room==level21)
{
	zomb=choose(basiczombie,basiczombie,coneheadzombie,gardener,tombraiser)
}
if(room==level22)
{
	zomb=choose(basiczombie,basiczombie,coneheadzombie,gardener,tombraiser)
}
instance_create(32+(64*11),choose(160,160+64,160+128,160+192,160+192+64),zomb)
}
action_set_alarm(random_range(2,1000-killed), 1);
num+=1
if(alarm[1]<20)
{
	alarm[1]=20
}