for(var a=0; a<15; a++){ for(var b=0; b<11; b++){
	if(fmap[a, b] != noone){
		draw_sprite_stretched(fmap[a, b], 0, a*64, b*64, 64, 64);
	}
}}

