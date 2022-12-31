function characterGetBuffIndex(c, b){
	
	var j = ds_list_size(c.buffs);
	for(var i=0; i<j; i++){
		var buff = ds_list_find_value(c.buffs, i);
		if(buff.nam == b){ return i; }
	}
	
	
	return noone;
}