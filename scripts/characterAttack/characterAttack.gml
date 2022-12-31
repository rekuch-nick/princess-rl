function characterAttack(c1, c2, atk){
	
	var hitRoll = irandom_range(0, 99);
	hitRoll += characterGetStat(c1, ww.nAIM);
	
	if(atk.canEvade && hitRoll < characterGetStat(c2, ww.nEVD)){
		var msg = instance_create_depth(c2.x + 32, c2.y, ww.layerS-10, objEffect);
		msg.txt = "Miss"; 
		msg.txtCol = c2.aly == 1 ? c_lime : c_yellow;
		
		if(pc.debugCombatLog){ show_debug_message( string(c1.className) + " missed " + string(c2.className) ) }
		
		return;
	}
	
	
	var damRoll = irandom_range(atk.minDam, atk.maxDam);
	damRoll += floor(characterGetStat(c1, atk.scaleOn) * atk.scaleBy);
	
	
	if(atk.armorReduces){
		damRoll = clamp(damRoll - characterGetStat(c2, ww.nDEF), 0, damRoll);
	}
	
	if(atk.resistReduces){
		damRoll = clamp(damRoll - characterGetStat(c2, ww.nRES), 0, damRoll);
	}
	
	var msg = instance_create_depth(c2.x + 32, c2.y, ww.layerS-10, objEffect);
	msg.txt = damRoll;
	
	
	if(pc.debugCombatLog){ show_debug_message( string(c1.className) + " hit " + string(c2.className) + " for " + string(damRoll) ) }
	
	
	if(atk.heals){ damRoll *= -1; }
	c2.hp = clamp(c2.hp - damRoll, 0, hpMax(c2));
	
	
	
}