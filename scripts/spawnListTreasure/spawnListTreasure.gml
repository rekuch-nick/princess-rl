function spawnListTreasure(){
	
	
	var spt = getFreeSpace(2);
	if(spt != noone){
		
		var t = ww.dropList[ww.dropIndex];
		
		var pup = spawnPup(t, spt.a, spt.b);
		if(t == objPupPotion){
			pup.potionIndex = ww.potionList[ww.dropIndex];
			pup.image_index = ww.potionID[ww.potionList[ww.dropIndex]];
		}
		
		ww.dropIndex ++;
		if(ww.dropIndex >= 1000){ ww.dropIndex = 0; }
		
		/*
		var i = ww.nextCoinValue;
		ww.nextCoinValue += 1;
		if(ww.nextCoinValue > 5){ ww.nextCoinValue = 1; }

					
		var t = objPupCoin01;
		if(i == 2){ t = objPupCoin02; }
		if(i == 3){ t = objPupCoin03; }
		if(i == 4){ t = objPupCoin04; }
		if(i == 5){ t = objPupCoin05; }
					
		spawnPup(t, spt.a, spt.b);
		*/
	}

}