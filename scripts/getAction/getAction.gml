function getAction(n){
	
	if(n == "Strike"){
		return {
			nam: n,
			tar: "front",
			aoe: "no",
			minDam: 10,
			maxDam: 20,
			scaleOn: ww.nSTR,
			scaleBy: 1,
			icon: iconMelee,
			state: "striking",
			aniCD: 60,
			canEvade: true,
			heals: false,
			armorReduces: true,
			resistReduces: false,
			proc: "",
			procChance: 0,
			//canResist: false,
			/// animation, aniCD time, etc
		};
	}
	
	
	if(n == "Backstab"){
		return {
			nam: n,
			tar: "back",
			aoe: "no",
			minDam: 10,
			maxDam: 20,
			scaleOn: ww.nSTR,
			scaleBy: 1,
			icon: iconBackstab,
			state: "backstabbing",
			aniCD: 60,
			canEvade: true,
			heals: false,
			armorReduces: true,
			resistReduces: false,
			proc: "crit",
			procChance: 10,
			//canResist: false,
			/// animation, aniCD time, etc
		};
	}
	
	
	
	if(n == "Bolt"){
		return {
			nam: n,
			tar: "front",
			aoe: "no",
			minDam: 15,
			maxDam: 25,
			scaleOn: ww.nINT,
			scaleBy: 1,
			icon: iconBolt,
			state: "bolting",
			aniCD: 80,
			canEvade: true,
			heals: false,
			armorReduces: false,
			resistReduces: true,
			proc: "",
			procChance: 0,
			/// animation, aniCD time, etc
		};
	}
	
	
	if(n == "Heal"){
		return {
			nam: n,
			tar: "aly low",
			aoe: "no",
			minDam: 5,
			maxDam: 15,
			scaleOn: ww.nINT,
			scaleBy: .5,
			icon: iconHeal,
			state: "healing",
			aniCD: 80,
			canEvade: false,
			heals: true,
			armorReduces: false,
			resistReduces: false,
			proc: "",
			procChance: 0,
			/// animation, aniCD time, etc
		};
	}
	
	
	
	return noone;
}