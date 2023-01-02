image_xscale = 4; image_yscale = 4;
state = "select";
draw = true;



potMax = 0;

for(var i=0; i<ww.potMax; i++){
	if(pc.potions[i] > 0){
		pots[potMax] = pc.potions[i];
		potKind[potMax] = i;
		potFrame[potMax] = ww.potionID[i];
		potIndex[potMax] = i;
		potMax ++;
	}
}

if(potMax == 0){
	draw = false;
	instance_destroy();
}

if(pc.potionCursor >= ww.potMax){ pc.potionCursor = 0; }

lCursor = 0;
while(lCursor < pc.potionCursor - 3){ lCursor ++; }