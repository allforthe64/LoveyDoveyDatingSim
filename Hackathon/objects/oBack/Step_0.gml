menu_x += (menu_x_target - menu_x) / menu_speed;

if (menu_control)
{
	
	if (keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_width+200;
		audio_play_sound(sndMenus,100,false);
		room_goto(rDate);
		menu_control = false;
	}
}

