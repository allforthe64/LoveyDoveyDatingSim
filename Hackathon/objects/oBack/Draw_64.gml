draw_set_font(fTxt)
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for (var i = 0; i < menu_items; i ++)
{
	var Txt = menu[i];
	if (menu_cursor == i)
	{
		Txt = string_insert("> ", Txt, 0);
	}
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i * 1.5));
	draw_set_color(c_white);
	draw_text(xx,yy,Txt);
}