///Choose Date
if (Date == 0)
{
	sprite_index = sWoman;	
}
else if (Date == 1)
{
	sprite_index = sBlackWoman;	
}
else if (Date == 2)
{
	sprite_index = sRiccardo;	
}
else if (Date == 3)
{
	sprite_index = sAlien;	
}
else if (Date == 4)
{
	sprite_index = sDoggie;	
}

if (room == rSelect)
{

	//Inputs To Change
	if (keyboard_check_pressed(vk_up)) and (Date >= 0)
	{
		Date ++;
	}
	if (keyboard_check_pressed(vk_down)) and (Date > 0)
	{
		Date --;
	}
	if (Date == 5)
	{
		Date = 4;	
	}
}

