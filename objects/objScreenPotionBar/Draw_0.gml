if(!draw){ return; }
draw_self();


for(var i=0; i<4; i++){
	if(potMax > i){
		
		var ii = lCursor + i;
		
		
		draw_sprite_stretched(imgPotion, potFrame[ii], (i+1)*64, 0, 64, 64);
		
		if(pots[ii] > 1){
			draw_text( (i+1) * 64 + 4, 43, string(pots[ii]) );
		}
		
	}
}

var a = pc.potionCursor + 1 - lCursor;
draw_sprite_stretched(iconCursor, 0, a*64, 0, 64, 64);

if(state == "select"){

	var c = c_white;
	var s = getPotionName(potKind[pc.potionCursor]);
	if(!pc.potionKnown[potKind[pc.potionCursor]]){ 
		if(pc.debug){
			c = c_fuchsia;
		} else {
			s = "Unidentified Potion"; 
		}
	}

	draw_rectangle_color(0, 64, 20 + string_width(s), 90, c_navy, c_navy, c_navy, c_navy, false);
	draw_text_color(10, 68, s, c, c, c, c, 1);
}

if(state == "target"){
	var s = "Drink: 1 / 2 / 3 ; Throw: direction";
	var c = c_white;
	draw_rectangle_color(0, 64, 20 + string_width(s), 90, c_navy, c_navy, c_navy, c_navy, false);
	draw_text_color(10, 68, s, c, c, c, c, 1);
}
	
	
	