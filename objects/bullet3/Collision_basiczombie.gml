if(buffed)
{
inst1=instance_create(x,y+32,bullet3)
inst1.alarm[0]=5
inst1.vspeed=5
inst2=instance_create(x,y-32,bullet3)
inst2.alarm[0]=5
inst1.vspeed=-5
inst3=instance_create(x+32,y,bullet3)
inst3.alarm[0]=5
inst1.hspeed=5
inst4=instance_create(x-32,y,bullet3)
inst4.alarm[0]=5
inst1.hspeed=-5
}
effect_create_above(ef_cloud,x,y,1,c_white)

action_kill_object();