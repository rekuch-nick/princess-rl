function worldGenPotionID(){
	random_set_seed(ww.seed);

	ww.potMax = 27;
	
	for(var i=0; i<ww.potMax; i++){
		pc.potionKnown[i] = false;
		pc.potions[i] = 0;
		pc.potionCursor = 0;
		ww.potionID[i] = -1;
		
	}
	
	var n = ww.potMax;
	while(n > 0){
		var r = irandom_range(0, ww.potMax-1);
		
		if(ww.potionID[r] != -1){ continue; }
		
		ww.potionID[r] = n;
		n --;
	}
	
	




}