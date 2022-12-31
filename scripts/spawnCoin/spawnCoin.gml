function spawnCoin(){
	
	
	var spt = getFreeSpace(2);
	if(spt != noone){
		var i = ww.nextCoinValue;
		ww.nextCoinValue += 1;
		if(ww.nextCoinValue > 5){ ww.nextCoinValue = 1; }

					
		var t = objPupCoin01;
		if(i == 2){ t = objPupCoin02; }
		if(i == 3){ t = objPupCoin03; }
		if(i == 4){ t = objPupCoin04; }
		if(i == 5){ t = objPupCoin05; }
					
		spawnPup(t, spt.a, spt.b);
	}

}