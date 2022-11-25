/// @description Insert description here
// You can write your code in this editor
if(room==editor)
{
	var ecs=32+64*5
	var why=160
	repeat(5)
	{
repeat(11)
{
draw_set_colour(c_black)
draw_rectangle(ecs,why,ecs+64,why+64,true)
draw_set_colour(c_white)
ecs+=64
}
ecs=32+64*5
why+=64
}
	if(keyboard_check_pressed(vk_right))
	{
		bgselected+=1
		if(bgselected>array_length(bgtypes)-1)
		{
			bgselected=0
		}
		var lay_id = layer_get_id("Compatibility_Colour");
		var bg = layer_background_get_id(lay_id);
		layer_background_sprite(bg,bgtypes[bgselected])
		if(layer_background_get_sprite(bg)==tilemud)
		{
			if(!instance_exists(fogger))
			{
				instance_create(0,0,fogger)
			}
		}
		else
		{
			instance_destroy(fogger)
		}
		if(layer_background_get_sprite(bg)==tilerussia)
		{
			if(!instance_exists(snowstormer))
			{
				instance_create(0,0,snowstormer)
			}
		}
		else
		{
			instance_destroy(snowstormer)
		}
	}
	if(keyboard_check_pressed(vk_space))
	{
		if(instance_exists(temp))
		{
			var numy=0
			repeat(instance_number(temp))
			{
				inst=instance_find(temp,numy)
				if(object_get_parent(inst.thing.object)!=basiczombie&&inst.thing.object!=basiczombie)
				{
					instance_destroy(inst)
				}
				else if(instance_exists(stats))
				{
					instance_destroy(inst)
				}
			}
			if(!instance_exists(selection)&&!instance_exists(stats))
			{
				instance_create(0,0,selection)
			}
		}
		else if(instance_exists(stats)||instance_exists(selection))
		{
			room_restart()
		}
	}
	if(keyboard_check_pressed(vk_enter))
	{
		areaselected+=1
		if(areaselected>=3)
		{
			areaselected=0
		}
	}
	if(!instance_exists(stats)&&!instance_exists(selection))
	{
	if(areaselected==0)
	{
		draw_sprite(object_get_sprite(plants.plant[plantselected].object),0,mouse_x,mouse_y)
		if(plantselected>0)
		{
			draw_sprite(object_get_sprite(plants.plant[plantselected-1].object),0,mouse_x,mouse_y+64)
		}
		if(plantselected<array_length(plants.plant)-1)
		{
			draw_sprite(object_get_sprite(plants.plant[plantselected+1].object),0,mouse_x,mouse_y-64)
		}
		if(mouse_check_button_pressed(mb_left)&&!instance_place(x,y,plant1))
		{
			inst=instance_create(mouse_x,mouse_y,temp)
			inst.thing=plants.plant[plantselected]
			with(inst)
			{
				move_snap(64,64)
			}
		}
		col=collision_point(mouse_x,mouse_y,temp,true,true)
		if(mouse_check_button_pressed(mb_right)&&col)
		{
			col.colly=true
			instance_destroy(col)
		}
	}
	else if(areaselected==1)
	{
		draw_sprite(object_get_sprite(plants.zombie[zombieselected].object),0,mouse_x,mouse_y)
		if(zombieselected>0)
		{
			draw_sprite(object_get_sprite(plants.zombie[zombieselected-1].object),0,mouse_x,mouse_y+64)
		}
		if(zombieselected<array_length(plants.zombie)-1)
		{
			draw_sprite(object_get_sprite(plants.zombie[zombieselected+1].object),0,mouse_x,mouse_y-64)
		}
		if(mouse_check_button_pressed(mb_left))
		{
			inst=instance_create(mouse_x,mouse_y,temp)
			inst.thing=plants.zombie[zombieselected]
			with(inst)
			{
				move_snap(64,64)
				y+=32
			}
		}
		col=collision_point(mouse_x,mouse_y,temp,true,true)
		if(mouse_check_button_pressed(mb_right)&&col)
		{
			col.colly=true
			instance_destroy(col)
		}
	}
	else if(areaselected==2)
	{
		draw_sprite(object_get_sprite(tiletypes[tileselected]),0,mouse_x,mouse_y)
		if(tileselected>0)
		{
			draw_sprite(object_get_sprite(tiletypes[tileselected-1]),0,mouse_x,mouse_y+64)
		}
		if(tileselected<array_length(tiletypes)-1)
		{
			draw_sprite(object_get_sprite(tiletypes[tileselected+1]),0,mouse_x,mouse_y-64)
		}
		if(mouse_check_button_pressed(mb_left))
		{
			inst=instance_create(mouse_x,mouse_y,tiletypes[tileselected])
			with(inst)
			{
				move_snap(64,64)
			}
		}
		var numy=0
		repeat(array_length(tiletypes))
		{
			col=collision_point(mouse_x,mouse_y,tiletypes[numy],true,true)
			if(mouse_check_button_pressed(mb_right)&&col)
			{
				instance_destroy(col)
			}
			numy+=1
		}
	}
	}
}

if(room==teirlist)
{
	draw_text(0,128,"S")
	draw_rectangle(64,128,room_width,128+128,true)
	draw_text(0,128+128,"A")
	draw_rectangle(64,128+128,room_width,128+256,true)
	draw_text(0,128+256,"B")
	draw_rectangle(64,128+256,room_width,256*2,true)
	draw_text(0,256*2,"C")
	draw_rectangle(64,256*2,room_width,256*2+128,true)
	draw_text(0,256*2+128,"F")
	draw_rectangle(64,256*2+128,room_width,256*2+256,true)
	draw_text(0,256*2+256,"F")
	draw_rectangle(64,256*2+256,room_width,256*2+256+128,true)
	
	draw_sprite(object_get_sprite(plants.plant[plantnum].object),0,mouse_x,mouse_y)
	if(mouse_check_button_pressed(mb_left))
		{
			array_push(instlist,insty)
			insty=instance_create(mouse_x,mouse_y,temp)
			insty.thing=plants.plant[plantnum]
			with(insty)
			{
				move_snap(64,64)
			}
			plantnum+=1
		}
		if(keyboard_check_pressed(vk_left))
		{
			if(array_length(instlist)>0)
			{
				
				insty.colly=true
				instance_destroy(insty)
				plantnum-=1
				insty=instlist[plantnum]
				array_delete(instlist,plantnum,1)
			}
		}
}