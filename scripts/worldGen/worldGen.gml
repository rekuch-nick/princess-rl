function worldGen(){
	
	
	
	pc.stage ++;
	random_set_seed(pc.stage * 1000 + seed);
	
	
	worldGenClear();
	
	for(var a=0; a<15; a++){ for(var b=0; b<11; b++){
		bmap[a, b] = imgTileRock;
	}}
	
	worldGenMazeFrom(0, 0);
	
	
	var n = clamp(50 - pc.stage * 2, 0, 50);
	worldGenReplaceRandomBlock(imgTileRock, noone, n);
	
	var spt = getFreeSpace(6);
	var goal = spawnPup(objPupGoal, spt.a, spt.b);
	//goal.respawns = 2;
	
	
	
	
	// replace block images with block objects //
	for(var a=0; a<15; a++){ for(var b=0; b<11; b++){
		if(bmap[a, b] != noone){
			var img = bmap[a, b];
			bmap[a, b] = instance_create_depth(a*64, b*64, layerB - b, objTile);
			bmap[a, b].sprite_index = img;
		}
	}}
}