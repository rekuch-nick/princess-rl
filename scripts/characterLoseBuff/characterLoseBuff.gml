function characterLoseBuff(c, b){
	
	var index = -1;
	
	for(var i=0; i<ds_list_size(c.buffs); i++){
		var buff = ds_list_find_value(c.buffs, i);
		if(buff.nam == b){
			index = i; break;
		}
	}
	
	
	if(index != -1){
		ds_list_delete(c.buffs, index);
	}
}