if keyboard_check_released(vk_down) {
	if (index + 1 == 4) {
		index = 0;
	}
	else {
		index ++;
	}
}

if keyboard_check_released(vk_up) {
	if (index - 1 == -1) {
		index = 3;
	}
	else {
		index --;
	}
}

if keyboard_check_released(vk_enter) {
	var title = oGame.eventTitle;
	runEvent(index, evIndex, title);
	index = 0;
}