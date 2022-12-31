function whoseTurn(){
	with(objCombatUnit){
		if(ct >= ctMax && hp > 0){ return id; }
	}
	
	return noone;
}