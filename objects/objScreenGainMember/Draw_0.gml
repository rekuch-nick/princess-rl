draw_self();

draw_text(300, 40, "  Add another girl to the team");

var b = 6 * 64;
for(var i=0; i<3; i++){
	var a = (7 + (i * 3)) * 64;
	
	draw_set_halign(fa_center);
	draw_text(a + 32, b - 32, cTxt[i]);
	draw_set_halign(fa_left);
	
	draw_sprite_stretched(c[i], 0, a, b, 64, 128);
	draw_text_color(a + 20, b + 148, string(i+1), c_yellow, c_yellow, c_yellow, c_yellow, 1);
}