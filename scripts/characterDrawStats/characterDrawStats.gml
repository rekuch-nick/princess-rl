function characterDrawStats(n, xx, yy){
	var c = pc.party[n];
	
	if(c == noone){ return; }
	
	
	var s = "L" + string(pc.party[n].level) + " ";
	draw_text(xx + 10, yy + 10, s + pc.party[n].className);
	
	
	s = string(c.hp) + " / " + string( hpMax(c) );
	var xxx = 295 * (c.hp / hpMax(c));
	draw_rectangle_color(xx + 10, yy + 40, xx + 10 + xxx, yy + 65, c_maroon, c_maroon, c_maroon, c_maroon, false);
	
	draw_text(xx + 20, yy + 45, s);
	
	
	var m = 24;
	var yyy = yy + 395
	for(var i=0; i<9; i++){
		
		var aa = xx + 10;
		var bb = yyy + i * m;
		
		if(i > 4){
			bb -= 5 * m;
			aa += 160;
		}
		var s = "STR";
		if(i == 1){ s = "INT"; }
		if(i == 2){ s = "SPD"; }
		if(i == 3){ s = "HIT"; }
		if(i == 4){ s = "LUK"; }
		if(i == 5){ s = "HPL"; }
		if(i == 6){ s = "DEF"; }
		if(i == 7){ s = "RES"; }
		if(i == 8){ s = "EVD"; }
		draw_text(aa, bb, s);
		
		var val = characterGetStat(c, i);
		var col = c_white;
		
		if(val > ( (c.level - 1) * c.statGrow[i] ) + c.statBase[i]){ col = c_lime; }
		
		draw_text_color(aa + 70, bb, val, col, col, col, col, 1);
	}
	
	
	yyy = yy + 140;
	
	drawItemInfo(xx+10, yyy, c.item[ww.iWEP]);
	drawItemInfo(xx+10, yyy+80, c.item[ww.iDEF]);
	drawItemInfo(xx+10, yyy+160, c.item[ww.iRNG]);
	
	
	
	
	
}

