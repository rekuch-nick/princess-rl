draw_self();

if(txt != ""){
	draw_set_halign(fa_center);
	draw_text_color(x, y, txt, txtCol, txtCol, txtCol, txtCol, 1);
	draw_set_halign(fa_left);
}