function getFreeSpace(minDisFromPlayer){
	
	var tries = 0;
	while(tries < 10000){
		tries ++;
		
		var aa = irandom_range(0, 14);
		var bb = irandom_range(0, 10);
		var dis = point_distance(pc.xSpot, pc.ySpot, aa, bb);
		
		if(dis < minDisFromPlayer){ continue; }
		if(ww.bmap[aa, bb] != noone){ continue; }
		if(ww.pmap[aa, bb] != noone){ continue; }
		if(ww.mmap[aa, bb] != noone){ continue; }
		
		return { a: aa, b: bb };
		
	}
	return noone;
	
	
}