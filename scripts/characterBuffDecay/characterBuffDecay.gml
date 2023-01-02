function characterBuffDecay(c){
	
	if(c.hp < 1){
		ds_list_destroy(c.buffs);
		c.buffs = ds_list_create();
		return;
	}
	
	// bug?
	
	for(var i=0; i<ds_list_size(c.buffs); i++){
		var buff = ds_list_find_value(c.buffs, i);
		
		ds_list_replace(c.buffs, i, getBuff(buff.nam, buff.tim - 1));
		
		
		var ym = 0;
		if(buff.nam == "Poison"){ 
			var dam = c.aly == 1 ? hpMax(c) / 20 : hpMax(c) / 10;
			c.hp -= dam;
			
			if(instance_number(objScreenCombat) > 0){
				var msg = instance_create_depth(c.x1 + 32, c.y1+ym, ww.layerS-10, objEffect);
				msg.txt = dam; msg.txtCol = c_green;
				ym += 20;
			}
		}
		
		if(buff.nam == "Bleed"){ 
			var dam = c.aly == 1 ? hpMax(c) / 20 : hpMax(c) / 10;
			c.hp -= dam;
			
			if(instance_number(objScreenCombat) > 0){
				var msg = instance_create_depth(c.x1 + 32, c.y1+ym, ww.layerS-10, objEffect);
				msg.txt = dam; msg.txtCol = c_red;
				ym += 20;
			}
		}
		
		if(buff.nam == "Regen"){ 
			var dam = hpMax(c) / 20;
			c.hp += dam;
			
			if(instance_number(objScreenCombat) > 0){
				var msg = instance_create_depth(c.x1 + 32, c.y1+ym, ww.layerS-10, objEffect);
				msg.txt = dam; msg.txtCol = c_aqua;
				ym += 20;
			}
		}
		
		
		
		
		//if(buff.nam == "Bleed"){ hp -= hpMax(c) / 25; }
		
	}
	
	

		
	for(var i=0; i<ds_list_size(c.buffs); i++){
		var buff = ds_list_find_value(c.buffs, i);
		if(buff.tim <= 0){
			characterLoseBuff(c, buff.nam);
			i = 0;
			if(ds_list_size(c.buffs) < 1){ break; }
		}
	}

	
	
	
}