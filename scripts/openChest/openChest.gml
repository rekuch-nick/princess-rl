function openChest(a, b){
	
	
	if(ww.pmap[a, b] == noone){
		var r = ww.rmap[a, b];
		var mt = objPupGear;
		var t = "Sword";
		var bns = 1;
		if(r >= 100){ t = "Sword"; }
		
		itm = getItem(t);
		itm = itemEnchant(itm, bns);
		
		var p = spawnPup(mt, a, b);
		if(mt == objPupGear && p != noone){
			p.itm = itm;
			p.sprite_index = itm.img;
		}
	}
	
	
	instance_destroy(ww.bmap[a, b]);
	ww.bmap[a, b] = noone;
	
	
}