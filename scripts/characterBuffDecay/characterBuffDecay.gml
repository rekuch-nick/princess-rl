function characterBuffDecay(c){
	
	if(c.hp < 1){
		ds_list_destroy(c.buffs);
		c.buffs = ds_list_create();
		return;
	}
	
	// bug?
	
	for(var i=0; i<ds_list_size(c.buffs); i++){
		var buff = ds_list_find_value(c.buffs, i);
		if(buff.tim > 1){
			ds_list_replace(c.buffs, i, getBuff(buff.nam, buff.tim - 1));
		} else {
			ds_list_delete(c.buffs, i);
		}
	}
	
	
	
}