function getAlyLow(){
	
	var bestNum = 10000;
	var best = noone;
	
	with(objCombatUnit){
		if(aly == other.aly){
			if(hp > 0 && hp < bestNum){
				bestNum = hp;
				best = id;
			}
		}
	}
	
	return best;
}