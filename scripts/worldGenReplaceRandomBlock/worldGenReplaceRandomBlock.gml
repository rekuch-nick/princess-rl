function worldGenReplaceRandomBlock(t1, t2, n){
	var tries = 0;
	while(tries < 10000){
		tries ++;
		var a = irandom_range(0, 14);
		var b = irandom_range(0, 10);
		
		if(ww.bmap[a, b] == t1){
				
			ww.bmap[a, b] = t2;
			n --;
			if(n < 1){ return true; }
			
		}
		
	}
	return false;
}