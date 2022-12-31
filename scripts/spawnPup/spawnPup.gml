function spawnPup(t, a, b){
	
	if(a == -1){
		var spt = getFreeSpace(4);
		if(spt == noone){ return noone; }
		a = spt.a; b = spt.b;
	}
	
	if(ww.pmap[a, b] == noone){
		ww.pmap[a, b] = instance_create_depth(a * 64, b * 64, ww.layerP, t);
		return ww.pmap[a, b];
	}
	
	return noone;
}