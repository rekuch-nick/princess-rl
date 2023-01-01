function getPotionName(n){
	
	if(n == 0){ return "Healing"; }
	if(n == 1){ return "Fire"; }
	
	if(n == 2){ return "Regen"; }
	if(n == 3){ return "Poison"; }
	
	if(n == 4){ return "Haste"; }
	if(n == 5){ return "Slow"; }
	
	if(n == 6){ return "Dispel"; }
	
	return "undefined potion";
}