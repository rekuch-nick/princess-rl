draw_self();


draw_set_halign(fa_center);
draw_text(room_width/2, 20, "Found an item:");

draw_text(room_width/2, 220, "Will you bind it to a girl?");
draw_text_color(room_width/2, 245, "( This breaks any other item in that slot )", c_grey, c_grey, c_grey, c_grey, 1);
draw_text(room_width/2, 270, "1 / 2 / 3 / Esc");
draw_set_halign(fa_left);

drawItemInfo(340, 100, itm);
//drawItemInfo(xx+10, yyy+80, c.item[ww.iDEF]);
//drawItemInfo(xx+10, yyy+160, c.item[ww.iRNG]);



for(var i=0; i<3; i++){
	draw_sprite_stretched(pc.party[i].sprite_index, 0, ( (i * 5) + 1) * 64, 5 * 64, 64, 128);
	//characterDrawStats(i, i * 5 * 64, 3 * 64);
	
	drawItemInfo(( (i * 5) + 0) * 64 + 10, 470, pc.party[i].item[ww.iWEP]);
	drawItemInfo(( (i * 5) + 0) * 64 + 10, 550, pc.party[i].item[ww.iDEF]);
	drawItemInfo(( (i * 5) + 0) * 64 + 10, 630, pc.party[i].item[ww.iRNG]);
}