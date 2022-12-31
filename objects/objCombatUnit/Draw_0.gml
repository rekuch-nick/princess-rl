if(state != "idle"){
	draw_set_alpha(.4);
	draw_rectangle_color(x, y, x+sprite_width, y+sprite_height, choose(c_grey, c_dkgray), choose(c_grey, c_dkgray), choose(c_grey, c_dkgray), choose(c_grey, c_dkgray), false);
	draw_set_alpha(1);
}

draw_self();
//if(instance_number(objScreenCombat) != 1 && instance_number(objScreenGainMember) != 1){
//if(image_alpha >= 1){
if(instance_number(objScreenCombat) == 1 && image_alpha >= 1){
	var y2 = y1 + 128;
	draw_rectangle_color(x1, y2 + 4, x1 + 64, y2 + 20, c_black, c_black, c_black, c_black, false);
	
	var hpPercent = hp / hpMax(id);
	var x2 = x1 + (64 * hpPercent);
	draw_rectangle_color(x1, y2 + 4, x2, y2 + 12, c_red, c_red, c_maroon, c_maroon, false);
	
	var ctPercent = ct / ctMax
	var x2 = x1 + (64 * ctPercent);
	draw_rectangle_color(x1, y2 + 13, x2, y2 + 20, c_yellow, c_yellow, c_orange, c_orange, false);
	
	for(var i=0; i<8; i++){
		if(i >= ds_list_size(buffs)){ break; }
		var bf = ds_list_find_value(buffs, i);
		
		var a = x1 + i * 18; 
		var b = y1 + 128 + 20;
		if(i > 3){ a-= 4 * 18; b += 20; }
		draw_text_color(a, b, bf.icon, bf.c1, bf.c2, bf.c1, bf.c2, 1);
	}
	
	
	
	if(MC && hp > 0){
	
		for(var i=0; i<array_length(actions); i++){
			var b = y1;
			var a = i * 64;
			
			while(a > 2 * 64){ a -= 3 * 64; b += 64; }
			
			draw_sprite_stretched(getAction(actions[i]).icon, 0, a, b, 64, 64);
			
			if(cursor == i){
				draw_sprite_stretched(iconCursor, (aniCD / 3) % 2, a, b, 64, 64);
			}
		}
	
	
	
	
	
	}
}


