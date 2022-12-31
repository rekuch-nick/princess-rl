function hpMax(c){
	var n = c.hpBase;
	n += c.level * characterGetStat(c, ww.nHPL);
	
	return floor(n);
}