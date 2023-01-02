function potionThrow(potName, xd, yd){
	
	
	if(instance_number(objScreenCombat) == 0){
		var a = pc.xSpot + xd;
		var b = pc.ySpot + yd;
		
		if(!inBounds(a, b)){ return; }
		
		instance_create_depth(a*64, b*64, ww.layerE, effTileFlash);
		
		var m = ww.mmap[a, b];
		if(m != noone){
			var i = array_length( m.buffsToGain );
			m.buffsToGain[i] = potName;
		}
		
		
	} else {
		
		with(objCombatUnit){
			if(aly == -1){
				instance_create_depth(x, y+64, ww.layerS-11, effTileFlash); ///
				potionEffect(potName, id);
			}
		}
		
	}
	
	
	
}