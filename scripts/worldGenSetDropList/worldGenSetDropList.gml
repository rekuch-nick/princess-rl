function worldGenSetDropList(){
	
	for(var i=0; i<1000; i ++){
		
		
		dropList[i] = choose(objPupCoin01, objPupCoin02, objPupCoin03, objPupCoin04, objPupCoin05);
		potionList[i] = choose(0, 1, 2, 3, 4, 5, 6);
		
		if(irandom_range(0, 99) < 15){
			dropList[i] = objPupPotion;
		}
		
	}
	
	
	
	
	dropIndex = 0;
	

}