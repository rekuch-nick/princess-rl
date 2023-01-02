if(state == "phase in"){
	image_alpha += .02;
	if(image_alpha >= 1){ state = "combat"; }
	
} else if (state == "phase out"){
	image_alpha -= .02;
	if(image_alpha <= 0){ 
		with(objCombatUnit){ ct = 0; }
		room_speed = 60;
		
		instance_destroy(ww.mmap[pc.xSpot, pc.ySpot]);
		ww.mmap[pc.xSpot, pc.ySpot] = noone;
		
		with(objScreenPotionBar){ instance_destroy(); }
		
		instance_destroy();
	}

} else if (state == "acting"){
	if(instance_number(objScreenPotionBar) < 1){ 
		instance_create_depth(x, y, depth-1, objScreenPotionBar); }
	playerInputActionSelect();
	
} else {
	if(instance_number(objScreenPotionBar) < 1){ 
		instance_create_depth(x, y, depth-1, objScreenPotionBar); }
	
	playerInputActionSelect();
	
	
	
	mobCount = 0;
	with(objCombatUnit){
		if(aly == -1){ other.mobCount ++; }
	}

	
	if(mobCount < 1){
		state = "phase out";
		
	} else if ( whoseTurn() != noone ) {
		state = "acting";
		whoseTurn().state = "go";
		
		
	} else {
		
		with(objCombatUnit){
			ct += characterGetStat(id, ww.nSPD);
		}
		
	}

	
	
	
	
	
	
	
}

