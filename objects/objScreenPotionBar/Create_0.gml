image_xscale = 4; image_yscale = 4;
state = "select";



pots = [];
potMax = 0;
potKind = [];

for(var i=0; i<ww.potMax; i++){
	if(pc.potions[i] > 0){
		pots[potMax] = pc.potions[i];
		potKind[potMax] = i;
		potFrame[potMax] = ww.potionID[i];
		potMax ++;
	}
}

if(potMax == 0){
	instance_destroy();
}

lCursor = 0;

while(lCursor < pc.potionCursor - 3){ lCursor ++; }