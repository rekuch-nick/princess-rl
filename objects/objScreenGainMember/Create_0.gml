image_xscale = 4; image_yscale = 4;


slot = 0;
while(pc.party[slot] != noone){ slot ++; }

random_set_seed(ww.seed + slot);

var i = 0;
c = [-1, -1, -1];
cTxt = ["", "", ""];
while(c[0] == -1 || c[1] == -1 || c[2] == -1){
	var r = irandom_range(0, 8);
	
	if(pc.charSeen[r]){ continue; }
	
	c[i] = r;
	pc.charSeen[r] = true;
	i ++;
}


for(var i=0; i<3; i++){
	if(c[i] == 0){ t = imgMCHero; cTxt[i] = "Hero"; }
	if(c[i] == 1){ t = imgMCKnight; cTxt[i] = "Knight"; }
	if(c[i] == 2){ t = imgMCBarbarian; cTxt[i] = "Barbarian"; }
	if(c[i] == 3){ t = imgMCMonk; cTxt[i] = "Monk"; }
	if(c[i] == 4){ t = imgMCHunter; cTxt[i] = "Hunter"; }
	if(c[i] == 5){ t = imgMCRogue; cTxt[i] = "Rogue"; }
	if(c[i] == 6){ t = imgMCBard; cTxt[i] = "Bard"; }
	if(c[i] == 7){ t = imgMCSorcerer; cTxt[i] = "Sorcerer"; }
	if(c[i] == 8){ t = imgMCWizzard; cTxt[i] = "Wizard"; }
	
	c[i] = t;
}