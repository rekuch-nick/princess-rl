var cs = instance_find(objScreenCombat, 1);


if(cs == noone){
	
	
	if(pc.clickNO || pc.clickPause){
		playerInputEatOK();
		instance_destroy();
	}
	
} else {
	
}


if(state == "select"){
	var cIn = 0;
	
	if(pc.clickLeft || (pc.xIn == -1 && pc.xDirHeld > 10) ){ cIn = -1; }
	if(pc.clickRight || (pc.xIn == 1 && pc.xDirHeld > 10) ){ cIn = 1; }
	
	if(pc.clickOK){
		if(pc.xMouse == 0 && pc.yMouse == 0){ cIn = -1; }
		if(pc.xMouse == 5 && pc.yMouse == 0){ cIn = 1; }
		
		
		
		
		
		if(( pc.xMouse >= 1 && pc.xMouse <= 4) && pc.yMouse == 0){
			var n = 0 + (pc.xMouse - 1) + lCursor;
			if(pc.potionCursor == n){ 
				//show_debug_message("drink pot" + string(n)); 
				state = "target";
				return;
			} else {pc.potionCursor = n; }
		}
		
		
		
		
		
		
		
	}
	
	if(cIn != 0){
		playerInputEatOK();
		
		pc.potionCursor += cIn;
		
		if(pc.potionCursor < 0){ pc.potionCursor = potMax-1; }
		if(pc.potionCursor >= potMax){ pc.potionCursor = 0; }
		
		while(lCursor < pc.potionCursor - 3){ lCursor ++; }
		while(lCursor > pc.potionCursor){ lCursor --; }
	}
	
}

if(state == "target"){
	
}



