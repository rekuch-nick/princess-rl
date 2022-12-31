playerGetInput();
inputCD = clamp(inputCD - 1, 0, 30);
if(instance_number(objScreen) > 0){ return; }


event_inherited();




if(!justMoved && checkTile){
	playerEnterTile(xSpot, ySpot);
	checkTile = false;
} else if(!justMoved){
	
	
	
	var xMove = 0; var yMove = 0;
	
	
	if(inputCD < 1){
		xMove = xIn; yMove = yIn;
	}

	if(holdOK && inputCD < 1){
		var dis = abs(xSpot - xMouse) + abs(ySpot - yMouse);
	
		if(dis == 1){ xMove = xMouse - xSpot; yMove = yMouse - ySpot; }
		if(dis > 1){
			var tar = pathing(xSpot, ySpot, xMouse, yMouse, true);
			if(tar == noone){ tar = pathing(xSpot, ySpot, xMouse, yMouse, false); }
		
			xMove = tar.a - xSpot; yMove = tar.b - ySpot;
		}
		
	}
	
	if(xMove != 0 ^^ yMove != 0){ playerMove(xMove, yMove); } else {
		
		if(clickPass){
			pc.movePoints = 0;
			playerMove(0, 0);
		}
		
	}
}



if(clickPause){
	playerInputEatOK();
	instance_create_depth(0, 0, ww.layerS, objScreenStats);
}