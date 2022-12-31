function spawnMobRandom(){
	var tries = 0;
	
	var t = objMobMap;
	
	while(tries < 1000){
		tries ++;
		
		var a = irandom_range(0, 14);
		var b = irandom_range(0, 10);
		
		var dis = point_distance(a, b, pc.xSpot, pc.ySpot);
		if(dis < 3){ continue; }
		
		if(ww.mmap[a, b] != noone){ continue; }
		if(ww.bmap[a, b] != noone){ continue; }
		if(ww.pmap[a, b] != noone){ continue; }
		
		//if(ww.fmap[a, b] == water
		
		ww.mmap[a, b] = instance_create_depth(a*64, b*64, ww.layerM, t);
		return ww.mmap[a, b];
	}
	
	return noone;
}