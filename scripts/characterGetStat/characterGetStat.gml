function characterGetStat(c, sid){
	
	var n = c.statBase[sid];
	var n = n + (c.level - 1) * c.statGrow[sid];
	
	
	
	//apply gear
	
	//apply buffs
	
	//if(sid == ww.nSTR){ n ++; }
	
	return floor(n);
}