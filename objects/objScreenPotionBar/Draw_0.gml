draw_self();

for(var i=0; i<4; i++){
	if(potMax > i){
		
		var ii = lCursor + i;
		
		draw_sprite_stretched(imgPotion, potFrame[ii], (i+1)*64, 0, 64, 64);
	}
}

var a = pc.potionCursor + 1 - lCursor;
draw_sprite_stretched(iconCursor, 0, a*64, 0, 64, 64);