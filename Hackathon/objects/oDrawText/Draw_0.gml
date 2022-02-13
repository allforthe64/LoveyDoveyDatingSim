if (!instance_exists(oTypewriter)) {
	if (index == 0) {
		draw_set_font(txtBold);
		draw_text(oDrawText.x, oDrawText.y, input1);
		draw_set_font(txt);
		draw_text(oDrawText.x, oDrawText.y + 32, input2);
		draw_text(oDrawText.x, oDrawText.y + 64, input3);
		draw_text(oDrawText.x, oDrawText.y + 96, input4);
	} else if (index == 1) {
		draw_text(oDrawText.x, oDrawText.y, input1);
		draw_set_font(txtBold);
		draw_text(oDrawText.x, oDrawText.y + 25, input2);
		draw_set_font(txt);
		draw_text(oDrawText.x, oDrawText.y + 64, input3);
		draw_text(oDrawText.x, oDrawText.y + 96, input4);
	} else if (index == 2) {
		draw_text(oDrawText.x, oDrawText.y, input1);
		draw_text(oDrawText.x, oDrawText.y + 32, input2);
		draw_set_font(txtBold);
		draw_text(oDrawText.x, oDrawText.y + 57, input3);
		draw_set_font(txt);
		draw_text(oDrawText.x, oDrawText.y + 96, input4);
	}
	else {
		draw_set_font(txt);
		draw_text(oDrawText.x, oDrawText.y, input1);
		draw_text(oDrawText.x, oDrawText.y + 32, input2);
		draw_text(oDrawText.x, oDrawText.y + 64, input3);
		draw_set_font(txtBold);
		draw_text(oDrawText.x, oDrawText.y + 89, input4);
	}
}