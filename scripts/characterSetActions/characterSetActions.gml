function characterSetActions(){
	
	actions = [];
	actions[0] = "Strike";
	
	if(className == "Hero"){
		actions[1] = "Bolt";
		actions[2] = "Heal";
	}
	
	if(className == "Knight"){
		
	}
	
	if(className == "Barbarian"){
		
	}
	
	if(className == "Monk"){
		actions[1] = "Heal";
	}
	
	if(className == "Hunter"){
		actions[1] = "Bolt";
	}
	
	if(className == "Rogue"){
		actions[1] = "Backstab";
	}
	
	if(className == "Bard"){
		actions[1] = "Heal";
	}
	
	if(className == "Sorcerer"){
		actions[0] = "Bolt";
	}
	
	if(className == "Wizard"){
		actions[0] = "Bolt";
	}
	
	
	
	
	

}