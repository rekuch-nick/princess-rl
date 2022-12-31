function getBuff(n, val){
	
	if(n == "Poison"){
		return {
			nam: "Poison",
			icon: "P",
			c1: c_green,
			c2: c_green,
			tim: val,
		}
	}
	
	if(n == "Bleed"){
		return {
			nam: "Bleed",
			icon: "B",
			c1: c_red,
			c2: c_red,
			tim: val,
		}
	}
	
	
	
	if(n == "Fast"){
		return {
			nam: "Fast",
			icon: "F",
			c1: c_yellow,
			c2: c_white,
			tim: val,
		}
	}
	
	if(n == "Venom"){
		return {
			nam: "Venom",
			icon: "V",
			c1: c_lime,
			c2: c_fuchsia,
			tim: val,
		}
	}
	
	
	
	return noone;
}