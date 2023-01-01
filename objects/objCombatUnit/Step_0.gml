if(instance_number(objScreenCombat) != 1 && instance_number(objScreenGainMember) != 1){
	image_alpha = 0;
	return;
}

image_alpha = 1;//instance_find(objScreenCombat, 0).image_alpha;
if(instance_number(objScreenCombat) == 1){
	image_alpha = instance_find(objScreenCombat, 0).image_alpha;
}



if(state == "go"){
	room_speed = clamp(60 * pc.battleSpeed, 60, 90);
	
	//choose move
	var act = getAction(actions[cursor]);
	
	if(act.tar == "aly low"){
		tar = getAlyLow();
	} else if (act.tar == "back") {
		tar = getEnemyBack();
	} else {
		tar = getEnemyFront();
	}
	if(tar == noone){ state = "done"; return; }
	xt = tar.x; yt = tar.y;
	wt = tar.sprite_width; ht = tar.sprite_height;
	
	characterAttack(id, tar, act);
	
	
	aniCD = act.aniCD;
	state = act.state;
	
	
} else if (state == "going"){
	
	//...
	
	
	aniCD --;
	if(aniCD < 1){
		sprite_index = fBasic;
		state = "done";
	}
	
} else if (state == "striking"){
	
	if(aly == 1){ x = xt - 64; y = yt; }
	if(aly == -1){ x = xt + 64; y = yt; }
	
	sprite_index = fStriking;
	aniCD --;
	if(aniCD < 1){ sprite_index = fBasic; state = "done"; }
	
	if(aniCD % 9 == 0){
		effect_create_above(ef_star, xt + irandom_range(0, 64), yt + irandom_range(0, 128), 0, c_white);
	}
	
	
	
} else if (state == "backstabbing"){
	
	if(aly == 1){ x = xt + 64; y = yt; }
	if(aly == -1){ x = xt - 64; y = yt; }
	
	sprite_index = fBackStrike;
	
	aniCD --;
	if(aniCD < 1){ sprite_index = fBasic; state = "done"; }
	
	if(aniCD % 9 == 0){
		effect_create_above(ef_star, xt + irandom_range(0, 64), yt + irandom_range(0, 128), 0, c_white);
	}
	



} else if (state == "bolting"){
	
	sprite_index = fStriking;
	aniCD --;
	if(aniCD < 1){
		//characterAttack(id, tar, getAction("Bolt"));
		
		sprite_index = fBasic;
		state = "done";
	}
	
	if(aniCD % 6 == 0){
		effect_create_above(ef_flare, xt + irandom_range(0, 64), yt + irandom_range(0, 128), 0, c_yellow);
	}
	if(aniCD % 4 == 0){
		var xx = x + sprite_width/2;
		var yy = y + sprite_height/2;
		
		var xxx = xt + wt/2;
		var yyy = yt + ht/2;
		
		var angle = arctan2(yyy - yy, xxx - xx);
		var someDis = floor(point_distance(xx, yy, xxx, yyy) * random_range(0, 1));
		var a = xx + cos(angle) * someDis;
		var b = yy + sin(angle) * someDis;
		
		effect_create_above(ef_spark, a, b, 0, c_white);
	}
	
	
	
	
} else if (state == "healing"){
	
	sprite_index = fStriking;
	aniCD --;
	if(aniCD < 1){ sprite_index = fBasic; state = "done"; }
	
	if(aniCD % 6 == 0){
		effect_create_above(ef_ring, xt + irandom_range(0, 64), yt + irandom_range(0, 128), 0, c_aqua);
	}
	

	
} else if (state == "done"){
	room_speed = 60 * pc.battleSpeed;
	characterBuffDecay(id);
	x = x1; y = y1;
	
	ct = 0;
	instance_find(objScreenCombat, 0).state = "combat";
	state = "idle";
} else {
	
}













if(hp < 1){
	if(aly == -1){
		instance_destroy();
		
	} else {
		sprite_index = fDown;
		hp = 0; ct = 0;
	}
	
	
}



if(sprite_index == fDown && hp > 0){ sprite_index = fBasic; }









