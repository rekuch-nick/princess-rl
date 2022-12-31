function spawnCombatMobs(icn){
	
	var n = irandom_range(2, 5);
	
	
	var tries = 0;
	slotUsed = [false, false, false, false, false, false, false, false, false, false, false, false];
	while(n > 0 && tries < 1000){
		var i = irandom_range(0, 11);
		tries ++;
		
		var a = ((8) + (i * 2)) * 64;
		var b = 64;// + (3.5 * 64 * i);
		while(a > 14 * 64){
			a -= (8*64);
			b += (3.5 * 64);
		}
		
		if(slotUsed[i]){ continue; }
		
		slotUsed[i] = true;
		instance_create_depth(a, b, ww.layerS - 1, objCombatMobGoon);
		n --;
		
	}
	
	
	
	
}