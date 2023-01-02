function potionDrink(potName, who){
	who = pc.party[who];
	
	
	//animation only
	if(instance_number(objScreenCombat) == 1){
		instance_create_depth(who.x, who.y+64, ww.layerS-11, effTileFlash); ///
		instance_create_depth(who.x, who.y, ww.layerS-11, effTileFlash); ///
		
	} else {
		
		
	}
	
	
	
	
	if(who.hp > 0){
		potionEffect(potName, who);
	}

}