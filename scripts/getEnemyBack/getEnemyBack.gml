function getEnemyBack(){
	
	//goal: return a combat character object with != aly 
	//value randoly selected from those farthest on the x axis
	
	//step 1, determin correct x position
	var bestPos = 4000;
	var bestDis = 0;
	
	with(objCombatUnit){
		if(other.aly == aly){ continue; }
		if(hp < 1){ continue; }
		
		var dis = abs(other.x - x);
		if(dis > bestDis){
			bestDis = dis;
			bestPos = x;
		}
	}
	
	//step 2, add all units with that x cord to an array
	tarList = []; tarListIndex = 0;
	with(objCombatUnit){
		if(aly != other.aly && x == bestPos){
			other.tarList[other.tarListIndex] = id;
			other.tarListIndex ++;
		}
	}
	
	//step 3 choose one from the array and return it
	if(tarListIndex == 0){ return noone; }
	
	return tarList[irandom_range(0, tarListIndex-1)];
	
	
	
}