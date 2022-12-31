function playerMove(a, b){
	if(!inBounds(pc.xSpot + a, pc.ySpot + b)){ return false; }
	
	
	var canMove = true;
	
	if(ww.bmap[pc.xSpot + a, pc.ySpot + b] != noone){
		canMove = false;
	}
	
	
	if(canMove){
		pc.xSpot += a; 
		pc.ySpot += b; 
		pc.checkTile = true;
	
	
		pc.movePoints --;
		if(pc.movePoints < 1){
			pc.movePoints = pc.movePointMax;
		
			spawnMobRandom();
			characterBuffDecay(pc.party[0]);
			characterBuffDecay(pc.party[1]);
			characterBuffDecay(pc.party[2]);
		}
		return true;
	}
	
	
	return false;
}