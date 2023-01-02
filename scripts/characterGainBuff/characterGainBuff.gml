function characterGainBuff(c, b, tim){
	
	var cur = getBuff(b, 0).cure
	if(cur != "" && characterHasBuff(c, cur)){ characterLoseBuff(c, cur); }
	
	if(cur == "DoTs"){ //
		characterLoseBuff(c, "Poison");
		characterLoseBuff(c, "Bleed");
	}
	
	
	if(characterHasBuff(c, b)){
		var i = characterGetBuffIndex(c, b);
		if(i != noone){
			var val = tim + ds_list_find_value(c.buffs, i).tim;
			ds_list_replace(c.buffs, i, getBuff(b, val));
		}
	} else {
		ds_list_add(c.buffs, getBuff(b, tim));
	}
	
}