function drawItemInfo(a, b, itm){
	
	
	
	draw_sprite_stretched(itm.img, 0, a, b+16, 64, 64);
	var s = itm.bonus > 0 ? "+" + string(itm.bonus) + " " + itm.nam : itm.nam;
	draw_text_color(a, b, s, itm.col, itm.col, itm.col, itm.col, 1);
	
	draw_text_color(a+68, b+20, itm.prop, c_white, c_white, c_white, c_white, 1);
	draw_text_color(a+68, b+40, itm.statTxt, c_white, c_white, c_white, c_white, 1);
	
	
	
	
	
	
	
}