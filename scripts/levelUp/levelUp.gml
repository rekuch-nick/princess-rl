function levelUp(){
	pc.coins -= pc.coinsMax;
	pc.coinsMax += 5;
	
	for(var i=0; i<3; i++){
		pc.party[i].level ++;
		pc.party[i].hp = hpMax(pc.party[i]);
	}
	
	
}