function mobInitBuffs(arr){
	
	for(var i=0; i<array_length(arr); i++){
		var s = arr[i];
		
		if(getBuff(s, -1) != noone){
			with(objCombatUnit){ if(aly == -1){
					characterGainBuff(id, arr[i], 20);
			}}
		} else if (arr[i] == "Fire") {
			with(objCombatUnit){ if(aly == -1){
				hp -= 100;
			}}
		}
	}
	
	
}