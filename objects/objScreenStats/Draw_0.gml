

draw_self();

draw_text(4, 4, "Keys: " + string(pc.keys));


for(var i=0; i<3; i++){
	draw_sprite_stretched(pc.party[i].sprite_index, 0, ( (i * 5) + 2) * 64, 64, 64, 128);
	characterDrawStats(i, i * 5 * 64, 3 * 64);
}
