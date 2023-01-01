function spawnPotion(t, a, b){
	
	if(t == -1){
		t = choose(0, 1, 2, 3, 4, 5, 6);
	}
	
	if(a == -1){
		var spt = getFreeSpace(4);
		if(spt == noone){ return noone; }
		a = spt.a; b = spt.b;
	}
	
	var pot = spawnPup(objPupPotion, a, b);
	
	if(pot != noone){
		pot.image_index = ww.potionID[t];
		pot.potionIndex = t;
	}
	
}