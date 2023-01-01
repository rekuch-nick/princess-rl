





if(pc.clickOK || pc.clickEnter){
	
	instance_create_depth(0, 0, ww.layerS, objScreenGainMember);
	
	playerInputEatOK();
	worldGenPotionID();
	ww.makeRoom = true;
	instance_destroy();
}

