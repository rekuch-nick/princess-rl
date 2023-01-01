image_xscale = 4; image_yscale = 4;
image_alpha = 0;
state = "phase in";

mobCount = 1;
turn = noone;

room_speed = 60 * pc.battleSpeed;

instance_create_depth(0, 0, depth - 1, objScreenPotionBar);

with(objCombatUnit){
	if(MC){
		characterSetActions();
	}
}