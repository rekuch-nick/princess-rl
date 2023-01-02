



if(pc.clickNum == 1 || pc.clickNum == 2 || pc.clickNum == 3){
	pc.party[pc.clickNum - 1].item[itm.slot] = itm;
	
	instance_destroy(ww.pmap[pc.xSpot, pc.ySpot]);
	ww.pmap[pc.xSpot, pc.ySpot] = noone;
}




if(pc.clickNum == 1 || pc.clickNum == 2 || pc.clickNum == 3 || pc.clickPause){
	instance_destroy();
	playerInputEatOK();
}

