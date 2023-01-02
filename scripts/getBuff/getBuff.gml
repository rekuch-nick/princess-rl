function getBuff(n, val){
	
	if(val == -1){ val = 20; }
	
	if(n == "Poison"){
		return {
			nam: n,
			icon: "P",
			c1: c_green,
			c2: c_green,
			tim: val,
			cure: "Regen",
		}
	}
	
	if(n == "Bleed"){
		return {
			nam: n,
			icon: "B",
			c1: c_red,
			c2: c_red,
			tim: val,
			cure: "Regen",
		}
	}
	
	if(n == "Slow"){
		return {
			nam: n,
			icon: "S",
			c1: c_blue,
			c2: c_blue,
			tim: val,
			cure: "Haste",
		}
	}
	
	
	
	if(n == "Haste"){
		return {
			nam: n,
			icon: "H",
			c1: c_yellow,
			c2: c_red,
			tim: val,
			cure: "Slow",
		}
	}
	if(n == "Regen"){
		return {
			nam: n,
			icon: "R",
			c1: c_aqua,
			c2: c_white,
			tim: val,
			cure: "DoTs",
		}
	}
	
	if(n == "Venom"){
		return {
			nam: n,
			icon: "V",
			c1: c_lime,
			c2: c_fuchsia,
			tim: val,
			cure: "",
		}
	}
	
	
	
	return noone;
}