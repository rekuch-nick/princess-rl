function playerInputActionSelect(){
	
	if(pc.clickOK){
		
		if(pc.xMouse == 14 && pc.yMouse == 0){ 
			pc.battleSpeed ++;
			if(pc.battleSpeed > 3){ pc.battleSpeed = 1; }
			room_speed = pc.battleSpeed * 60;
		}
		
		if(pc.xMouse == 0 && pc.yMouse == 1){ characterSelectAction(pc.party[0], 6); }
		if(pc.xMouse == 1 && pc.yMouse == 1){ characterSelectAction(pc.party[0], 7); }
		if(pc.xMouse == 2 && pc.yMouse == 1){ characterSelectAction(pc.party[0], 8); }
		
		if(pc.xMouse == 0 && pc.yMouse == 2){ characterSelectAction(pc.party[0], 3); }
		if(pc.xMouse == 1 && pc.yMouse == 2){ characterSelectAction(pc.party[0], 4); }
		if(pc.xMouse == 2 && pc.yMouse == 2){ characterSelectAction(pc.party[0], 5); }
		
		if(pc.xMouse == 0 && pc.yMouse == 3){ characterSelectAction(pc.party[0], 0); }
		if(pc.xMouse == 1 && pc.yMouse == 3){ characterSelectAction(pc.party[0], 1); }
		if(pc.xMouse == 2 && pc.yMouse == 3){ characterSelectAction(pc.party[0], 2); }
		
		
		
		if(pc.xMouse == 0 && pc.yMouseOff == 5){ characterSelectAction(pc.party[1], 6); }
		if(pc.xMouse == 1 && pc.yMouseOff == 5){ characterSelectAction(pc.party[1], 7); }
		if(pc.xMouse == 2 && pc.yMouseOff == 5){ characterSelectAction(pc.party[1], 8); }
		
		if(pc.xMouse == 0 && pc.yMouseOff == 6){ characterSelectAction(pc.party[1], 3); }
		if(pc.xMouse == 1 && pc.yMouseOff == 6){ characterSelectAction(pc.party[1], 4); }
		if(pc.xMouse == 2 && pc.yMouseOff == 6){ characterSelectAction(pc.party[1], 5); }
		
		if(pc.xMouse == 0 && pc.yMouseOff == 7){ characterSelectAction(pc.party[1], 0); }
		if(pc.xMouse == 1 && pc.yMouseOff == 7){ characterSelectAction(pc.party[1], 1); }
		if(pc.xMouse == 2 && pc.yMouseOff == 7){ characterSelectAction(pc.party[1], 2); }
		
		
		
		
		
		if(pc.xMouse == 0 && pc.yMouse == 8){ characterSelectAction(pc.party[2], 6); }
		if(pc.xMouse == 1 && pc.yMouse == 8){ characterSelectAction(pc.party[2], 7); }
		if(pc.xMouse == 2 && pc.yMouse == 8){ characterSelectAction(pc.party[2], 8); }
		
		if(pc.xMouse == 0 && pc.yMouse == 9){ characterSelectAction(pc.party[2], 3); }
		if(pc.xMouse == 1 && pc.yMouse == 9){ characterSelectAction(pc.party[2], 4); }
		if(pc.xMouse == 2 && pc.yMouse == 9){ characterSelectAction(pc.party[2], 5); }
		
		if(pc.xMouse == 0 && pc.yMouse == 10){ characterSelectAction(pc.party[2], 0); }
		if(pc.xMouse == 1 && pc.yMouse == 10){ characterSelectAction(pc.party[2], 1); }
		if(pc.xMouse == 2 && pc.yMouse == 10){ characterSelectAction(pc.party[2], 2); }
		
		
		
	}

}