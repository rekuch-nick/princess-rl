function potionEffect(potName, who){
	
	if(potName == "Healing"){ who.hp = hpMax(who); }
	
	if(potName == "Fire"){ who.hp -= 100; }
	
	if(potName == "Poison"){ characterGainBuff(who, "Poison", 20); }
	if(potName == "Regen"){ characterGainBuff(who, "Regen", 20); }
	if(potName == "Slow"){ characterGainBuff(who, "Slow", 20); }
	if(potName == "Haste"){ characterGainBuff(who, "Haste", 20); }
	
	if(potName == "Dispel"){ 
		ds_list_destroy(who.buffs);
		who.buffs = ds_list_create();
	}
	
}