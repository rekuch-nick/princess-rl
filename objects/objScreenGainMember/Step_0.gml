




/*
if(pc.clickOK){
	
	playerInputEatOK();
	instance_destroy();
}
*/

if(pc.clickNum >= 1 && pc.clickNO <= 3){
	if(c[pc.clickNum-1] == imgMCHero){ o = objCombatPlayerMC; }
	if(c[pc.clickNum-1] == imgMCKnight){ o = objCombatPlayerKnight; }
	if(c[pc.clickNum-1] == imgMCBarbarian){ o = objCombatPlayerBarbarian; }
	if(c[pc.clickNum-1] == imgMCMonk){ o = objCombatPlayerMonk; }
	if(c[pc.clickNum-1] == imgMCHunter){ o = objCombatPlayerHunter; }
	if(c[pc.clickNum-1] == imgMCRogue){ o = objCombatPlayerRogue; }
	if(c[pc.clickNum-1] == imgMCBard){ o = objCombatPlayerBard; }
	if(c[pc.clickNum-1] == imgMCSorcerer){ o = objCombatPlayerSorcerer; }
	if(c[pc.clickNum-1] == imgMCWizzard){ o = objCombatPlayerWizard; }
	gainCharacter(o);
	
	if(pc.party[2] == noone){
		instance_create_depth(0, 0, ww.layerS, objScreenGainMember);
	}
	
	instance_destroy();
	playerInputEatOK();
}
