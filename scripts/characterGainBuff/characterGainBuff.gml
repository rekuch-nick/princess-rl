function characterGainBuff(c, b, tim){
	
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