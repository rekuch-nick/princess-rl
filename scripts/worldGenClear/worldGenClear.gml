function worldGenClear(){
	
	with(objTile){ instance_destroy(); }
	with(objMobMap){ instance_destroy(); }
	with(objPup){ instance_destroy(); }
	
	for(var a=0; a<15; a++){ for(var b=0; b<11; b++){
		fmap[a, b] = imgTileFloor;
		bmap[a, b] = noone;
		pmap[a, b] = noone;
		mmap[a, b] = noone;
	}}
	
	
}