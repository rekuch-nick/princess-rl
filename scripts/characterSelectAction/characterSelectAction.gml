function characterSelectAction(c, n){
	
	if(c == noone){ return; }
	
	if(array_length(c.actions) <= n){ return; }
	
	c.cursor = n;
}