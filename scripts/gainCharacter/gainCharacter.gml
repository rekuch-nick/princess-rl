function gainCharacter(o){
	
	var i = 0;
	if(pc.party[0] != noone){ i ++; }
	if(pc.party[1] != noone){ i ++; }
	
	var b = 64 + (3.5 * 64 * i);
	
	pc.party[i] = instance_create_depth(3*64, b, ww.layerS - 1, o);
	pc.party[i].item[0] = getItem("Old Sword");
	pc.party[i].item[1] = getItem("Old Armor");
	pc.party[i].item[2] = getItem("Old Ring");
	
}