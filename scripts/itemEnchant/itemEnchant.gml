function itemEnchant(itm, bns){
	if(itm.slot == 2){ return; }
	
	itm.bonus = bns;
	
	if(itm.slot == 0){ itm.statTxt = "DMG +" + string(bns * bns); }
	if(itm.slot == 1){ itm.statTxt = "DEF +" + string(bns * bns); }
	
	if(itm.bonus >= 1){ itm.col = c_white; }
	if(itm.bonus >= 2){ itm.col = c_lime; }
	if(itm.bonus >= 3){ itm.col = c_aqua; }
	if(itm.bonus >= 4){ itm.col = c_fuchsia; }
	if(itm.bonus >= 5){ itm.col = c_yellow; }
	if(itm.bonus >= 6){ itm.col = c_orange; }
	if(itm.bonus >= 7){ itm.col = c_red; }
	
	return itm;
}