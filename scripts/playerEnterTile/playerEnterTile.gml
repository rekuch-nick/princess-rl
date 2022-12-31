function playerEnterTile(a, b){
	
	
	var m = ww.mmap[a, b];
	if(m != noone){
		
		instance_create_depth(0, 0, ww.layerS, objScreenCombat);
		spawnCombatMobs(m.sprite_index);
		
	}
	
	
	
	
	var p = ww.pmap[a, b];
	if(p != noone){
		
		if(p.coins > 0){
			pc.coins += p.coins;
			if(pc.coins >= pc.coinsMax){ levelUp(); }
		}
		
		if(p.respawns > 1){
			p.respawns --;
			
			var spt = getFreeSpace(6);
			
			if(spt != noone){
				
				p.xSpot = spt.a; p.ySpot = spt.b;
				p.x = spt.a * 64; p.y = spt.b * 64;
				
				ww.pmap[a, b] = noone;
				ww.pmap[spt.a, spt.b] = p;
				
				spawnCoin();
				spawnCoin();
				spawnCoin();
				
				
			}
		
		
		} else if(p.respawns == 1) {
			ww.makeRoom = true;
			
		} else {
			
			
			
			
			
			instance_destroy(ww.pmap[a, b]);
			ww.pmap[a, b] = noone;
		}
		
		
		
	}
	
	
}